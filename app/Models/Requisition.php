<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Item;

class Requisition extends Model
{
    use HasFactory;
    protected $guarded=[];

 protected $with=['item'];

    public function item(){
        return $this->belongsTo(Item::class,'item_id');
    }

}
