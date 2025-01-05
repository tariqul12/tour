<?php

namespace App\Http\Controllers;

use App\Models\OtherImage;
use App\Models\Package;
use Illuminate\Http\Request;

class PackageController extends Controller
{
    public function index()
    {
        $packages = Package::latest()->get();
        return view('admin.package.index', compact('packages'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.package.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
     
        if($image = $request->file('image')){
            $imageUrl = getFileUrl($image, 'uploads/package-image/');
        }else{
            $imageUrl = '';
        }
      
        $package = self::saveInfo(new Package(), $request,$imageUrl);

        if ($images = $request->file('other_image'))
        {
            OtherImage::newOtherImage($images,$package->id);
        }
        return back()->with('message', 'package add successfully');
    }

    private static function saveInfo($package, $request,$imageUrl)
    {
        $package->title = $request->title;
        $package->sub_title = $request->sub_title;
        $package->duration = $request->duration;
        $package->single_price = $request->single_price;
        $package->couple_price = $request->couple_price;
        $package->place = $request->place;
        $package->image = $imageUrl;
        $package->short_description = $request->short_description;
        $package->long_description = $request->long_description;
        $package->tour_start_date = $request->tour_start_date;
        $package->tour_end_date = $request->tour_end_date;
        $package->status = $request->status;
        $package->save();
        return $package;
    }

    /**
     * Display the specified resource.
     */
    public function show(Package $package)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Package $package)
    {
        return view('admin.package.edit', compact('package'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Package $package)
    {
        if ($image = $request->file('image'))
        {
            $imageUrl = getFileUrl($image, 'uploads/package-image/');
            if(file_exists($package->image))
            {
                unlink($package->image);
            }
        }
        else
        {
            $imageUrl = $package->image;
        }
        self::saveInfo($package, $request,$imageUrl);
        if ($images = $request->file('other_image'))
        {
            OtherImage::updateOtherImage($images,$package->id);
        }
        return redirect('package')->with('message', 'package edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Package $package)
    {
        $package->delete();
        if (file_exists($package->image))
        {
            unlink($package->image);
        }
        OtherImage::deleteOtherImage($package->id);
        return redirect('package')->with('message', 'package Delete successfully');
    }
}
