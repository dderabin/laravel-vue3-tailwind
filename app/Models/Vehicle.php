<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vehicle extends Model
{
    use HasFactory;

    protected $table = 'client_vehicles';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'company_id', 'group_id', 'name', 'license_plate_number', 'vin', 'fuel_type',
        'max_battery_capacity', 'max_fuel_capacity'
    ];
}
