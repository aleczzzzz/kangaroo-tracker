<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreKangarooRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            "name" => "required|unique:kangaroos",
            "nickname" => "nullable",
            "weight" => "required|decimal:0,5|gt:0",
            "height" => "required|decimal:0,5|gt:0",
            "gender" => "required",
            "color" => "nullable",
            "friendliness" => "nullable|in:Friendly,Not Friendly",
            "birthday" => "required|date|date_format:m/d/Y"
        ];
    }
}
