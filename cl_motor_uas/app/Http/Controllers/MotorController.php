<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\BrandMotor;

class MotorController extends Controller
{
    public function index()
    {
       $brand = BrandMotor::all();
        return view('Admin/dashboard/dashboard', compact('brand'));
    }

    public function tambah_brand_motor(Request $request)
    {
        BrandMotor::create([
            'nama_brand' => $request->nama
        ]);
        return redirect()->back();
    }

    public function edit_brand_motor(Request $request, $id)
    {
        $brand = BrandMotor::find($id);
        $brand->update([
            'nama_brand' => $request->nama_brand_edit
        ]);
        return redirect()->back();
    }

    public function hapus_brand_motor($id)
    {
        $brand = BrandMotor::find($id);
        $brand->delete();
        return redirect()->back();
    }
}
