<?php

namespace App\Http\Controllers;

use App\Models\Team;
use Illuminate\Http\Request;

class TeamController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $teams = Team::latest()->get();
        return view('admin.team.index', compact('teams'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.team.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/team-image/');
        } else {
            $imageUrl = '';
        }
        self::saveInfo(new Team(), $request, $imageUrl);
        return back()->with('message', 'team add successfully');
    }

    private static function deleteFolderImage($image)
    {
        if (file_exists($image)) {
            unlink($image);
        }
    }
    private static function saveInfo($team, $request, $imageUrl)
    {
        $team->name = $request->name;
        $team->designation = $request->designation;
        $team->facebook_link = $request->facebook_link;
        $team->linkedin_link = $request->linkedin_link;
        $team->image = $imageUrl;
        $team->status = $request->status;
        $team->save();
    }

    /**
     * Display the specified resource.
     */
    public function show(Team $team)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Team $team)
    {
        return view('admin.team.edit', compact('team'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Team $team)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/team-image/');
            self::deleteFolderImage($team->image);
        } else {
            $imageUrl = $team->image;
        }
        self::saveInfo($team, $request, $imageUrl);
        return redirect('team')->with('message', 'team edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Team $team)
    {
        self::deleteFolderImage($team->image);
        $team->delete();
        return redirect('team')->with('message', 'team Delete successfully');
    }
}
