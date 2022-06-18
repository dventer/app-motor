<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Controller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('Admin/auth/login');
});

Route::group([
    'middleware' => 'guest',
    'namespace' => 'Admin\auth',
    'prefix' => 'admin',
], function ($router) {
    Route::get('/register', 'RegisterController@index')->name('index.register');
    Route::post('/register', 'RegisterController@register')->name('post.register');

    Route::get('/', 'LoginController@index')->name('index.login');
    Route::post('/', 'LoginController@login')->name('post.login');
    
});

Route::group([
    'middleware' => 'admin',
    'namespace' => 'Admin',
    'prefix' => 'admin',
], function ($router) {

    Route::group([
        'namespace' => 'dashboard',
        'prefix' => 'dashboard',
    ], function ($router) {
        Route::get('/', 'DashboardController@index')->name('index.dashboard');
        Route::post('/tambah', 'DashboardController@tambah_brand_motor')->name('create.brand.motor');
        Route::get('/hapus/{id}', 'DashboardController@hapus_brand_motor')->name('hapus.brand.motor');
        Route::post('/cari', 'DashboardController@cari_motor')->name('cari');
    });

    Route::group([
        'namespace' => 'kategori',
        'prefix' => 'kategori',
    ], function ($router) {
        Route::get('/', 'KategoriController@index')->name('index.kategori');
        Route::post('/', 'KategoriController@create')->name('create.kategori');
        Route::post('/update/{id}', 'KategoriController@update')->name('update.kategori');
        Route::get('/delete/{id}', 'KategoriController@delete')->name('delete.kategori');
    });

    Route::group([
        'namespace' => 'brand',
        'prefix' => 'brand',
    ], function ($router) {
        Route::get('/', 'BrandController@index')->name('index.brand');
        Route::post('/', 'BrandController@create')->name('create.brand');
    });

    Route::group([
        'namespace' => 'produk',
        'prefix' => 'produk',
    ], function ($router) {
        Route::get('/', 'ProdukController@index')->name('index.produk');
        // Route::post('/', 'BrandController@create')->name('create.brand');
    });
 

});

Route::group([
    'middleware' => 'auth',
    'prefix' => 'admin'
], function ($router) {
    //AKSES JIKA SUDAH LOGIN
    Route::get('/admin/logout', 'Admin\auth\LogoutController@logout')->name('logout');
});



