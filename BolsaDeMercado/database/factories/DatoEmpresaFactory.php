<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\datoEmpresa>
 */
class DatoEmpresaFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'id_empresa' => rand(1,10),
            'Volume' => $this->faker->randomFloat(2, 100 ,10000),
            'AdjClose' => $this->faker->randomFloat(5,100 ,1000 ),
            'Close' => $this->faker->randomFloat(5,100 ,900 ),
            'Low' => $this->faker->randomFloat(5,100 ,500),
            'High' => $this->faker->randomFloat(5,100 ,900),
            'Open' => $this->faker->randomFloat(5,100 ,4000),
            'Date' => $this->faker->dateTimeInInterval('-1 year','+1 year')
        ];
    }
}
