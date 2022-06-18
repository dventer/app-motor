<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KlasifikasiMotor extends Model
{
    use HasFactory;
    protected $table = 'klasifikasi_motor';
    protected $primaryKey = 'id';
    protected $guarded = [''];
    protected $timestamp;
}
