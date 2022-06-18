<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DealerMotor extends Model
{
    use HasFactory;
    protected $table = 'dealer_motor';
    protected $primaryKey = 'id';
    protected $guarded = [''];
    protected $timestamp;
}
