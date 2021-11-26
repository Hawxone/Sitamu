<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jabatan extends Model
{
  public $table = "jabatan";
  protected $primaryKey = 'jabatan_id';
  protected $fillable = [
     'nama',
  ];

  public function pegawai(){
      return $this->belongsToMany('App\Pegawai');
  }
}
