<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FuelTypes extends Model
{
    use HasFactory;

    protected $table = 'client_company_vehicle_fuel_types';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'company_id', 'name', 'unit_price', 'vk'
    ];
}
