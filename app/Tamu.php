<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Tamu extends Model
{
  public $table = "tamu";
  protected $primaryKey = 'tamu_id';
  protected $fillable = [
     'nama', 'no_hp','alamat','tujuan','instansi','pegawai_id','img_src',
  ];

  public function pegawai(){
      return $this->hasOne('App\Pegawai');
  }
}
