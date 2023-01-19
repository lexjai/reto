<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class datoEmpresa extends Model
{
    use HasFactory;
    protected $table = "dato_empresas";
    protected $fillable = [
        'Date', 'Open', 'High', 'Low', 'Close', 'AdjClose', 'Volume', 'id_empresa', 'id'
    ];
    public function getDate($value){
        return substr($value, 1, 120);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
