<?php

namespace App\Http\Controllers;

use App\Models\Client;
use Illuminate\Http\Request;

class ClientController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $clients = Client::latest()->get();
        return view('admin.client.index', compact('clients'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.client.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/client-image/');
        } else {
            $imageUrl = '';
        }
        self::saveInfo(new Client(), $request, $imageUrl);
        return back()->with('message', 'client add successfully');
    }

    private static function deleteFolderImage($image)
    {
        if (file_exists($image)) {
            unlink($image);
        }
    }
    private static function saveInfo($client, $request, $imageUrl)
    {
        $client->name = $request->name;
        $client->message = $request->message;
        $client->image = $imageUrl;
        $client->status = $request->status;
        $client->save();
    }

    /**
     * Display the specified resource.
     */
    public function show(Client $client)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Client $client)
    {
        return view('admin.client.edit', compact('client'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Client $client)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/client-image/');
            self::deleteFolderImage($client->image);
        } else {
            $imageUrl = $client->image;
        }
        self::saveInfo($client, $request, $imageUrl);
        return redirect('client')->with('message', 'client edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Client $client)
    {
        self::deleteFolderImage($client->image);
        $client->delete();
        return redirect('client')->with('message', 'client Delete successfully');
    }
}
