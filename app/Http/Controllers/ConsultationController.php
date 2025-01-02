<?php

namespace App\Http\Controllers;

use App\Models\Consultation;
use Illuminate\Http\Request;

class ConsultationController extends Controller
{
    public function index()
    {
        $consultations = Consultation::latest()->get();
        return view('admin.consultation.index', compact('consultations'));
    }
    public function store(Request $request)
    {
        $consultation                = new Consultation();
        $consultation->name          = $request->name;
        $consultation->package_id    = $request->package_id;
        $consultation->email         = $request->email;
        $consultation->mobile        = $request->mobile;
        $consultation->message       = $request->message;
        $consultation->save();
        return back()->with('message', 'Thank Your For Your Message .Our Teem Member Contact You As Soon As Possible');
    }
}
