<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MasterDataMotor extends Model
{
    use HasFactory;
    protected $table = 'master_data_motor';
    protected $primaryKey = 'id';
    protected $guarded = [''];
    protected $timestamp;
}
