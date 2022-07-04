<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\Model;

class Insert_file extends Model
{
    use HasFactory;
    public static function insertData($data) {
        DB::table('admin_clients_info')->insert($data);
    }
}
