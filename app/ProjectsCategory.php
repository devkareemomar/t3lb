<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class ProjectsCategory extends Model
{
    protected $table = "projects_category";
    use Translatable;
    protected $translatable = ['name'];

}
