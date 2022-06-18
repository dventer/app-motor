<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TahunMotor extends Model
{
    use HasFactory;
    protected $table = 'tahun_motor';
    protected $primaryKey = 'id';
    protected $guarded = [''];
    protected $timestamp;
}
