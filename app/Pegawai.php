<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pegawai extends Model
{
  public $table = "pegawai";
  protected $primaryKey = 'pegawai_id';
  protected $fillable = [
     'nama', 'jabatan_id','bagian_id',
  ];

  public function jabatan(){
      return $this->hasOne('App\Jabatan');
  }

  public function bagian(){
      return $this->hasOne('App\Bagian');
  }
}
