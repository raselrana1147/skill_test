<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Stock;

class Item extends Model
{
    use HasFactory;
    protected $guarded=[];
    protected $with=['stock'];

    public function stock(){
        return $this->hasOne(Stock::class);
    }
}
