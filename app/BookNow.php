<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class BookNow extends Model
{
    protected $table = "book_now";

    use Translatable;
    protected $translatable = ['f_name','l_name','email','customer_type'];
}
