<?php

namespace App\Exports;

use App\Log;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;
use Maatwebsite\Excel\Concerns\WithEvents;
use Maatwebsite\Excel\Events\AfterSheet;

class LogExport implements FromCollection, WithHeadings, ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Log::all();
    }

    public function headings(): array
   {
       return [
           'ID Log',
           'ID Tamu',
           'Nama Tamu',
           'Nomor HP',
           'Alamat Email',
           'Tujuan',
           'Instansi',
           'Pegawai Pendamping',
           'Tanggal Masuk',
           'Data Dibuat',
           'Data di Update'
       ];
   }

   public function registerEvents(): array
    {
        return [
            AfterSheet::class    => function(AfterSheet $event) {
                $cellRange = 'A1:W1'; // All headers
                $event->sheet->getDelegate()->getStyle($cellRange)->getFont()->setSize(14);
            },
        ];
    }
}
