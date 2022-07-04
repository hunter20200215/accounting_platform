<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\AdminCategory;
class CategorySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $categories = [
            [
               'name'=>'Individual',
               
               
            ],
            [
               'name'=>'Company',
               
            ],
            [
                'name'=>'Charity',
                
             ],
        ];
        foreach ($categories as $key => $value) {
            AdminCategory::create($value);
        }
    }
}
