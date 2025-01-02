<?php

namespace App\Http\Controllers;

use App\Models\Category;
use App\Models\OtherImage;
use App\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    private $service;
    public function index()
    {
        return view('admin.service.index',['services'=>Service::all()]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.service.create',['categories'=>Category::where('status',1)->get()]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->service = Service::newService($request);
        if ($images = $request->file('other_image'))
        {
            OtherImage::newOtherImage($images,$this->service->id);
        }
        return back()->with('message','Service Create Successfully');
    }

    /**
     * Display the specified resource.
     */
    public function show(Service $service)
    {
        return view('admin.service.show',[
            'service'=>$service,
            ]);
    }

    /**
     * Show the form for editing the specified resource.
     */

    public function edit(Service $service)
    {
        return view('admin.service.edit',[
            'categories'=>Category::where('status',1)->get(),
            'service'=>$service,
        ]);
    }
    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Service $service)
    {
        Service::updateService($request,$service);
        if ($images = $request->file('other_image'))
        {
            OtherImage::updateOtherImage($images,$service->id);
        }
        return redirect('service')->with('message','Service edit successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Service $service)
    {
        Service::deleteService($service);
        OtherImage::deleteOtherImage($service->id);
        return redirect('service')->with('message','Service Delete successfully');
    }
}
