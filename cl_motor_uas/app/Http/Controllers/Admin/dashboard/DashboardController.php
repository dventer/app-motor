<?php

namespace App\Http\Controllers\Admin\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\BrandMotor;
use App\Models\TahunMotor;
use App\Models\TypeMotor;
use App\Models\DataCustomer;
use App\Models\KlasifikasiMotor;
use App\Models\DealerMotor;
use App\Models\MasterDataMotor;

class DashboardController extends Controller
{
    public function index()
    {
        $brand = BrandMotor::all();
        $type = TypeMotor::all();
        $tahun = TahunMotor::all();
        $master = MasterDataMotor::all();
        $dealer = DealerMotor::all();

        $master->map(function($mas){
            $mas['type'] = TypeMotor::where('id', $mas->type_motor_id)->first();
            $mas['type']['brand'] = BrandMotor::where('id', $mas['type']->brand_motor_id)->first();
            $mas['dealer'] = DealerMotor::where('id', $mas->dealer_motor_id)->first();
            return $mas;
        });
        // return $master;
        return view('Admin/dashboard/dashboard', compact('brand','type', 'tahun'));
    }

    public function cari_motor(Request $request)
    {
        $hasil = MasterDataMotor::where([
            'type_motor_id' => $request->type,
            'tahun_motor_id' => $request->tahun
        ])->get();
        if(count($hasil) !== 0)
        {
            $hasil->map(function($mas){
                $mas['type'] = TypeMotor::where('id', $mas->type_motor_id)->first();
                $mas['type']['brand'] = BrandMotor::where('id', $mas['type']->brand_motor_id)->first();
                $mas['dealer'] = DealerMotor::where('id', $mas->dealer_motor_id)->first();
                return $mas;
            });
            return response()->json(['status' => '200', 'hasil' => $hasil]);
        }else{
            return response()->json(['status' => '400', 'hasil' => 'Tidak di temukan !']);
        }

    }

    public function tambah_brand_motor(Request $request)
    {
        BrandMotor::create([
            'nama_brand' => $request->nama_brand
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
