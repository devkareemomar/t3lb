<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Offer extends Model
{
    protected $table = "offers";
    use Translatable;
    protected $translatable = ['title','description'];
    public function serviceId() {
        return $this->belongsTo('App\service');

    }
}
