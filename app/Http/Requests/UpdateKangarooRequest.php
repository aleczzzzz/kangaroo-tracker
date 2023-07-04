<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateKangarooRequest extends FormRequest
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
            "name" => "sometimes|unique:kangaroos,name," . $this->route('kangaroo')->id,
            "nickname" => "nullable",
            "weight" => "sometimes|decimal:1,5|gt:0",
            "height" => "sometimes|decimal:1,5|gt:0",
            "gender" => "sometimes",
            "color" => "nullable",
            "friendliness" => "nullable|in:Friendly,Not Friendly",
            "birthday" => "sometimes|date"
        ];
    }
}
