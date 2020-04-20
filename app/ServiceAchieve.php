<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class ServiceAchieve extends Model
{
    protected $table = "service_achieve";
    use Translatable;
    protected $translatable = ['title','description'];

}
