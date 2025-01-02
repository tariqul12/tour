<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = Category::latest()->get();
        return view('admin.category.index', compact('categories'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.category.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/category-image/');
        } else {
            $imageUrl = '';
        }
        if ($icon = $request->file('icon')) {
            $iconUrl = getFileUrl($icon, 'uploads/category-icon/');
        } else {
            $iconUrl = '';
        }
        self::saveInfo(new Category(), $request, $imageUrl, $iconUrl);
        return back()->with('message', 'Category add successfully');
    }

    private static function deleteFolderImage($image)
    {
        if (file_exists($image)) {
            unlink($image);
        }
    }
    private static function saveInfo($category, $request, $imageUrl, $iconUrl)
    {
        $category->name = $request->name;
        $category->description = $request->description;
        $category->image = $imageUrl;
        $category->icon = $iconUrl;
        $category->status = $request->status;
        $category->save();
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        return view('admin.category.edit', compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Category $category)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/category-image/');
            self::deleteFolderImage($category->image);
        } else {
            $imageUrl = $category->image;
        }
        if ($icon = $request->file('icon')) {
            $iconUrl = getFileUrl($icon, 'uploads/category-icon/');
            self::deleteFolderImage($category->icon);
        } else {
            $iconUrl = $category->icon;
        }
        self::saveInfo($category, $request, $imageUrl, $iconUrl);
        return redirect('category')->with('message', 'category edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        self::deleteFolderImage($category->image);
        $category->delete();
        return redirect('category')->with('message', 'category Delete successfully');
    }
}
