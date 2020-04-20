<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class Project extends Model
{
    protected $table = "projects";
    use Translatable;
    protected $translatable = ['title','description'];

    public function categoryId(){
        return $this->belongsTo('App\ProjectsCategory');

    }

    public function expertId(){
        return $this->belongsTo('App\ExpertsTeam');

    }

}
