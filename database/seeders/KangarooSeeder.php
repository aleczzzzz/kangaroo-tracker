<?php

namespace Database\Seeders;

use App\Models\Kangaroo;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class KangarooSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Kangaroo::factory()->count(50)->create();
    }
}
