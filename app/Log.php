<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Log extends Model
{
  public $table = "logs";
  protected $primaryKey = 'log_id';
  protected $fillable = [
     'tamu_id','nama', 'no_hp','alamat','tujuan','instansi','pegawai','tgl_masuk',
  ];
}
