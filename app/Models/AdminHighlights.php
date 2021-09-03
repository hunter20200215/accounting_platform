<?php


namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class AdminHighlights extends Model
{
    use HasFactory;
    protected $table = 'admin_highlights';
    
}
