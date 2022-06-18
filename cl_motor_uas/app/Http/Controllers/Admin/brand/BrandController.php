<?php

namespace App\Http\Controllers\Admin\brand;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Brand;

class BrandController extends Controller
{
    public function index()
    {
        $brand = Brand::all();
        return view('Admin.brand.brand', compact('brand'));
    }

    public function create(Request $request)
    {
        Brand::create([
            'nama_brand' => $request->nama_brand,
            'slug' => strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->nama_brand))),
        ]);
        return redirect()->route('index.brand');
    }
}
