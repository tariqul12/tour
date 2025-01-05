<?php

namespace App\Http\Controllers;

use App\Models\Destination;
use Illuminate\Http\Request;

class DestinationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $destinations = Destination::latest()->get();
        return view('admin.destination.index', compact('destinations'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.destination.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/destination-image/');
        } else {
            $imageUrl = '';
        }
        self::saveInfo(new Destination(), $request, $imageUrl);
        return back()->with('message', 'Destination add successfully');
    }

    private static function deleteFolderImage($image)
    {
        if (file_exists($image)) {
            unlink($image);
        }
    }
    private static function saveInfo($destination, $request, $imageUrl)
    {
        $destination->title = $request->title;
        $destination->destination = $request->destination;
        $destination->description = $request->description;
        $destination->image = $imageUrl;
        $destination->status = $request->status;
        $destination->save();
    }

    /**
     * Display the specified resource.
     */
    public function show(Destination $destination)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Destination $destination)
    {
        return view('admin.destination.edit', compact('destination'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Destination $destination)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/destination-image/');
            self::deleteFolderImage($destination->image);
        } else {
            $imageUrl = $destination->image;
        }
        self::saveInfo($destination, $request, $imageUrl);
        return redirect('destination')->with('message', 'Destination edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Destination $destination)
    {
        self::deleteFolderImage($destination->image);
        $destination->delete();
        return redirect('destination')->with('message', 'Destination Delete successfully');
    }
}
