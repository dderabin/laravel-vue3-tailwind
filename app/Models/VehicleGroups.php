<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class VehicleGroups extends Model
{
    use HasFactory;

    protected $table = 'vehicle_groups';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */

    protected $fillable = [
        'id', 'company_id', 'name', 'created_user', 'updated_user', 'deleted_user'
    ];
}
