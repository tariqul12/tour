<?php

namespace App\Http\Controllers;

use App\Mail\WelcomeMail;
use App\Models\About;
use App\Models\Banner;
use App\Models\Brand;
use App\Models\Category;
use App\Models\Client;
use App\Models\Company;
use App\Models\Consultation;
use App\Models\Frequent;
use App\Models\Package;
use App\Models\Policy;
use App\Models\Service;
use App\Models\Slider;
use App\Models\TCondition;
use App\Models\Team;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class Welcomeontroller extends Controller
{
    public function index()
    {
        $categories = Category::where('status', 1)->orderBy('id', 'desc')->take(3)->get();
        $services = Service::where('status', 1)->orderBy('id', 'desc')->take(4)->get();
        $about = About::orderBy('id', 'desc')->first();
        $packages = Package::where('status', 1)->orderBy('id', 'desc')->take(4)->get();
        $sliders = Slider::where('status', 1)->orderBy('id', 'desc')->take(4)->get();
        $home_banner = Banner::where(['banner_type'=>2])->orderBy('id', 'desc')->first();
        $order_banner = Banner::where(['banner_type'=>4])->orderBy('id', 'desc')->first();
        $clients = Client::whereStatus(1)->orderBy('id', 'desc')->take(6)->get();
        $teams = Team::whereStatus(1)->orderBy('id', 'desc')->take(6)->get();
        $brands = Brand::whereStatus(1)->orderBy('id', 'desc')->get();
        return view('website.home.index', compact('about', 'packages', 'services', 'categories', 'sliders','home_banner','order_banner','clients','teams','brands'));
    }

    public function about()
    {
        $about = About::orderBy('id', 'desc')->first();
        $frequents = Frequent::orderBy('id', 'desc')->take(5)->get();
        $services = Service::where('status', 1)->orderBy('id', 'desc')->get();
        $brands = Brand::whereStatus(1)->orderBy('id', 'desc')->get();
        return view('website.about.index', compact('about', 'frequents','services','brands'));
    }
    public function allService()
    {
        $services = Service::where('status', 1)->latest()->get();
        return view('website.service.index', compact('services'));
    }
    public function detail($id)
    {
        $service = Service::find($id);
        $services = Service::where('status', 1)->latest()->get();
        return view('website.service.detail', compact('service','services'));
    }
    public function quotation()
    {
        return view('website.quotation.index');
    }
    public function policy()
    {
        $policy = Policy::latest()->first();
        return view('website.pages.policy', compact('policy'));
    }
    public function tcondition()
    {
        $tcondition = TCondition::latest()->first();
        return view('website.pages.condition', compact('tcondition'));
    }

    public function contact()
    {
        $contact_banner = Banner::where(['banner_type'=>3])->orderBy('id', 'desc')->first();
        return view('website.contact.index', compact('contact_banner'));
    }
    public function packeages()
    {
        $packages = Package::where('status', 1)->orderBy('id', 'desc')->get();
        return view('website.package.index', compact('packages'));
    }

    public function destination()
    {
        return view('website.destination.index');
    }
    public function gellary()
    {
        return view('website.gellary.index');
    }
    public function packageOrder()
    {
        $packages = Package::where('status', 1)->orderBy('id', 'desc')->take(4)->get();
        $order_banner = Banner::where(['banner_type'=>4])->orderBy('id', 'desc')->first();
        return view('website.order.index', compact('packages','order_banner'));
    }
    public function ftp()
    {
        return view('website.ftp.index');
    }
    public function order(Request $request)
    {
        $consultation                = new Consultation();
        $consultation->name          = $request->name;
        $consultation->package_id    = $request->package_id;
        $consultation->email         = $request->email;
        $consultation->mobile        = $request->mobile;
        $consultation->address       = $request->address;
        $consultation->save();
        $package = Package::find($request->package_id);
        $company = Company::latest()->first();


        Mail::to($company->contact_email)->send(new WelcomeMail([
            'id' => $consultation->id,
            'name' => $request->name,
            'email' => $request->email,
            'mobile' => $request->mobile,
            'address' => $request->address,
            'package_title' => $package->title,
            'date' => date('Y-m-d H:i:s'),
        ]));

        return back()->with('message', 'Thank Your For Your Message .Our Teem Member Contact You As Soon As Possible');
    }
}
