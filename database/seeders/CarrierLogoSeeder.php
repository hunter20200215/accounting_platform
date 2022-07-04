<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CarrierLogoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $logonames = ["Blue Cross","bmo","canada life","canada life2","desjardins","Empire Life","Equitable Life","Humania",
    "Industrial Alliance","Ivari","manulife","RBC Insurance","ssq","sunlife","TD Insurance","Wawanesa"];
        foreach ($logonames as $logoname) {
            DB::table('carrier_logos')->insert([
            'logo_name' => $logoname,
            ]);
        }
    }
}
