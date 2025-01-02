<?php

namespace App\Http\Controllers;

use App\Models\Brand;
use Illuminate\Http\Request;

class BrandController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $brands = Brand::latest()->get();
        return view('admin.brand.index', compact('brands'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.brand.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/brand-image/');
        } else {
            $imageUrl = '';
        }
        self::saveInfo(new Brand(), $request, $imageUrl);
        return back()->with('message', 'brand add successfully');
    }

    private static function deleteFolderImage($image)
    {
        if (file_exists($image)) {
            unlink($image);
        }
    }
    private static function saveInfo($brand, $request, $imageUrl)
    {
        $brand->name = $request->name;
        $brand->description = $request->description;
        $brand->image = $imageUrl;
        $brand->status = $request->status;
        $brand->save();
    }

    /**
     * Display the specified resource.
     */
    public function show(Brand $brand)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Brand $brand)
    {
        return view('admin.brand.edit', compact('brand'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Brand $brand)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/brand-image/');
            self::deleteFolderImage($brand->image);
        } else {
            $imageUrl = $brand->image;
        }
        self::saveInfo($brand, $request, $imageUrl);
        return redirect('brand')->with('message', 'brand edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Brand $brand)
    {
        self::deleteFolderImage($brand->image);
        $brand->delete();
        return redirect('brand')->with('message', 'brand Delete successfully');
    }
}
