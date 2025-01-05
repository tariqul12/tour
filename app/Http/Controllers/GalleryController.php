<?php

namespace App\Http\Controllers;

use App\Models\Gallery;
use Illuminate\Http\Request;

class GalleryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $gallerys = Gallery::latest()->get();
        return view('admin.gallery.index', compact('gallerys'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.gallery.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/gallery-image/');
        } else {
            $imageUrl = '';
        }
        self::saveInfo(new Gallery(), $request, $imageUrl);
        return back()->with('message', 'gallery add successfully');
    }

    private static function deleteFolderImage($image)
    {
        if (file_exists($image)) {
            unlink($image);
        }
    }
    private static function saveInfo($gallery, $request, $imageUrl)
    {
        $gallery->title = $request->title;
        $gallery->image = $imageUrl;
        $gallery->status = $request->status;
        $gallery->save();
    }

    /**
     * Display the specified resource.
     */
    public function show(Gallery $gallery)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Gallery $gallery)
    {
        return view('admin.gallery.edit', compact('gallery'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Gallery $gallery)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/gallery-image/');
            self::deleteFolderImage($gallery->image);
        } else {
            $imageUrl = $gallery->image;
        }
        self::saveInfo($gallery, $request, $imageUrl);
        return redirect('gallery')->with('message', 'gallery edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Gallery $gallery)
    {
        self::deleteFolderImage($gallery->image);
        $gallery->delete();
        return redirect('gallery')->with('message', 'gallery Delete successfully');
    }
}
