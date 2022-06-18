<?php

namespace App\Http\Controllers\Admin\produk;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Produk;

class ProdukController extends Controller
{
    public function index()
    {  
        $produk = Produk::all();
        return $produk;
        return view('Admin.produk.produk', compact('produk'));
    }
}
