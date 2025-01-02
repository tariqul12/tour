<?php

namespace App\Http\Controllers;

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
        self::saveInfo(new Package(), $request);
        return back()->with('message', 'package add successfully');
    }

    private static function saveInfo($package, $request)
    {
        $package->title = $request->title;
        $package->sub_title = $request->sub_title;
        $package->speed = $request->speed;
        $package->download_speed = $request->download_speed;
        $package->up_speed = $request->up_speed;
        $package->price = $request->price;
        $package->description = $request->description;
        $package->status = $request->status;
        $package->save();
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
        self::saveInfo($package, $request);
        return redirect('package')->with('message', 'package edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Package $package)
    {
        $package->delete();
        return redirect('package')->with('message', 'package Delete successfully');
    }
}
