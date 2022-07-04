<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class CreateUsersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = [
            [
                'name'=>'Calendly',
                'email'=>'info@lakeshoreaccounting.ca',
                'roll'=>'10',
                'password'=> Hash::make('123456'),
            ],
            [
               'name'=>'Admin',
               'email'=>'admin@admin.com',
                'roll'=>'0',
               'password'=> Hash::make('123456'),
               
            ],
            [
               'name'=>'User',
               'email'=>'user@user.com',
                'roll'=>'1',
               'password'=> Hash::make('123456'),
            ],
            
        ];
  
        foreach ($user as $key => $value) {
            User::create($value);
        }
    }
}
