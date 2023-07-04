<?php

namespace Database\Factories;

use App\Models\Kangaroo;
use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Kangaroo>
 */
class KangarooFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Kangaroo::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            "name" => fake()->unique()->name(),
            "nickname" => fake()->firstName(),
            "weight" => fake()->randomFloat(2, 1, 100),
            "height" => fake()->randomFloat(2, 1, 100),
            "gender" => fake()->randomElement(['male', 'female']),
            "color" => fake()->safeColorName(),
            "friendliness" => fake()->randomElement(['friendly', 'not friendly']),
            "birthday" => fake()->date()
        ];
    }
}
