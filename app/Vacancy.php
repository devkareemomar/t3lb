<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Vacancy extends Model
{
    protected $table = "vacancies";
    use Translatable;

    protected $translatable = ['title',];
}
