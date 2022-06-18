<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TypeMotor extends Model
{
    use HasFactory;
    protected $table = 'type_motor';
    protected $primaryKey = 'id';
    protected $guarded = [''];
    protected $timestamp;
}
