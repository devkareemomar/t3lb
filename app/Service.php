<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;


class Service extends Model
{
    protected $table = "services";
    use Translatable;
    protected $translatable = ['service_name','service_description'];
    use Resizable;
    protected $fillable = ['service_img'];
    /**
 * The attributes that should be cast to native types.
 *
 * @var array
 */

            // protected $casts = [
            //     'service_img' => 'array',   
                
            // ];

            
    // public function __construct(array $attributes = []) {
    //     parent::__construct($attributes + ['service_img' => ['array']]);
    // }
 
}
