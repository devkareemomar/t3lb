<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class OurBranch extends Model
{
    protected $table = "our_branches";
    use Translatable;
    protected $translatable = ['email','address','phone','name'];
}
