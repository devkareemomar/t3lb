<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;


class ExpertsTeam extends Model
{
    protected $table = "experts_team";
    use Translatable;
    protected $translatable = ['name','description'];

}
