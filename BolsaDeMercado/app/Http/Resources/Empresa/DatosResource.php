<?php

namespace App\Http\Resources\Empresa;

use Illuminate\Http\Resources\Json\JsonResource;

class DatosResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return['id'=>$this->id,
        'date'=>$this->Date,
        'open'=>$this->Open,
        'high'=>$this->Low,
        'close'=>$this->Close,
        'adjClose'=>$this->AdjClose,
        'volume'=>$this->volume,
        'empresa'=>$this->id_emepresa,
        ];
    }
}
