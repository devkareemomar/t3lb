<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class CompaniesAndCompound extends Model
{
    use Translatable;
    protected $translatable = ['company','compound'];
}
