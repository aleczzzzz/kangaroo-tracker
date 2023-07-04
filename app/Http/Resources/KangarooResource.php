<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class KangarooResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            "id" => $this->id,
            "name" => ucwords($this->name),
            "nickname" => $this->nickname,
            "weight" => $this->weight,
            "height" => $this->height,
            "gender" => ucwords($this->gender),
            "color" => ucwords($this->color),
            "friendliness" => ucwords($this->friendliness),
            "birthday" => $this->birthday,
            "created_at" => $this->created_at->format('F j, Y'),
            "updated_at" => $this->updated_at->format('F j, Y')
        ];
    }
}
