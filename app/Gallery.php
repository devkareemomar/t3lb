<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Gallery extends Model
{
    protected $table = "gallery";
    use Translatable;
    protected $translatable = ['description'];

}
