<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Order extends Model
{
    protected $table = "order";
    use Translatable;

    protected $translatable = ['service_name',];
   
}
 