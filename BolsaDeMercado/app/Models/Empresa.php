<?php

namespace App\Models;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Empresa extends Model
{
    use HasFactory;
    protected $table = "empresa";
    protected $fillable = [
        'id',
        'nombre'
    ];
    public function getDate($value){
        return substr($value, 1, 120);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
