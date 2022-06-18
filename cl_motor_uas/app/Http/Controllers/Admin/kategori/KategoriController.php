<?php

namespace App\Http\Controllers\Admin\kategori;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Kategori;
use App\Models\Produk;

class KategoriController extends Controller
{
    public function index()
    {   
        $kategori = Kategori::all();
        $produk = Produk::all();
        return view('Admin.kategori.kategori', compact('kategori'));
    }


    public function create(Request $request)
    {
        Kategori::create([
            'nama_kategori' => $request->nama_kategori,
            'slug' => strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->nama_kategori))),
        ]);
        return redirect()->route('index.kategori');
    }

    public function delete($id)
    {
        Kategori::find($id)->delete();
        return redirect()->route('index.kategori');
    }

    public function update(Request $request, $id)
    {
        Kategori::find($id)->update([
            'nama_kategori' => $request->update_nama_kategori,
            'slug' => strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->update_nama_kategori))),
        ]);
        return redirect()->route('index.kategori'); 
    }

}
