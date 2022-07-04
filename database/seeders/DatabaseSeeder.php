<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call(CountriesSeeder::class);
        $this->call(CreateHighlightsSeeder::class);
        $this->call(CreateUsersSeeder::class);
        $this->call(CategorySeeder::class);
        $this->call(CarrierLogoSeeder::class);
    }
}
