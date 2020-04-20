<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Career extends Model
{
    protected $table = "career";
    use Translatable;
    protected $translatable = ['job_title','job_description'];

}
