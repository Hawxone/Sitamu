<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Bagian extends Model
{
  public $table = "bagian";
  protected $primaryKey = 'bagian_id';
  protected $fillable = [
     'nama',
  ];

  public function jabatan(){
      return $this->belongsToMany('App\Pegawai');
  }
}
