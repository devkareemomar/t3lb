<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class CarType extends Model
{
    protected $table = "car_type";
    use Translatable;
    protected $translatable = ['title'];

}
