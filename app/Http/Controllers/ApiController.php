<?php

namespace App\Http\Controllers;

use App\Models\Category;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    public function getCategory()
    {
        return response()->json(Category::all());
    }
}
