<?php

namespace App\Http\Controllers;

use App\Models\Banner;
use Illuminate\Http\Request;

class BannerController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $banners = Banner::all();
        return view('admin.banner.index', compact('banners'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.banner.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/banner-image/');
        }

        self::saveInfo(new Banner(), $request, $imageUrl);

        return back()->with('message', 'banner add successfully');
    }

    private static function saveInfo($banner, $request, $imageUrl)
    {
        $banner->title       = $request->title;
        $banner->banner_type = $request->banner_type;
        $banner->image       = $imageUrl;
        $banner->save();
    }

    private static function deleteFolderImage($image)
    {
        if (file_exists($image)) {
            unlink($image);
        }
    }
    /**
     * Display the specified resource.
     */
    public function show(Banner $banner)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Banner $banner)
    {
        return view('admin.banner.edit', compact('banner'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Banner $banner)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/banner-image/');
            self::deleteFolderImage($banner->image);
        } else {
            $imageUrl = $banner->image;
        }
        self::saveInfo($banner, $request, $imageUrl);
        return redirect('banner')->with('message', 'banner edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Banner $banner)
    {
        self::deleteFolderImage($banner->image);
        $banner->delete();
        return redirect('banner')->with('message', 'banner Delete successfully');
    }
}
