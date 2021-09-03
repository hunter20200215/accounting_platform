<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\AdminHighlights;
use Illuminate\Support\Facades\Hash;


class CreateHighlightsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $highlights = [
            [
               'name'=>'Income',
               
               
            ],
            [
               'name'=>'Deduction',
               
            ],
        ];
  
        foreach ($highlights as $key => $value) {
            AdminHighlights::create($value);
        }
    }
}
