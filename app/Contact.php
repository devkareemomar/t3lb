<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Contact extends Model
{
    protected $table = "contact";
    use Translatable;
    protected $translatable = ['name','email','phone','massage'];
}
