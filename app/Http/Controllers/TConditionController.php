<?php

namespace App\Http\Controllers;

use App\Models\TCondition;
use Illuminate\Http\Request;

class TConditionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tcondition = TCondition::latest()->first();
        return view('admin.tcondition.index', compact('tcondition'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.tcondition.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        self::saveInfo(new TCondition(), $request);
        return back()->with('message', 'tcondition add successfully');
    }

    private static function saveInfo($tcondition, $request)
    {
        $tcondition->description = $request->description;
        $tcondition->save();
    }

    /**
     * Display the specified resource.
     */
    public function show(TCondition $tcondition)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(TCondition $tcondition)
    {
        return view('admin.tcondition.edit', compact('tcondition'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, TCondition $tcondition)
    {
        self::saveInfo($tcondition, $request);
        return redirect('tcondition')->with('message', 'tcondition edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(TCondition $tcondition)
    {
        $tcondition->delete();
        return redirect('tcondition')->with('message', 'tcondition Delete successfully');
    }
}
