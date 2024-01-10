<?php

namespace App\Http\Controllers;

use App\Models\ServiceSheet;
use App\Models\SupplySheet;
use App\Models\WorkSheet;
use Illuminate\Http\Request;

class ServiceSheetController extends Controller
{
    protected string $route = 'service_sheet.';

    public function index() {
        $sheets = ServiceSheet::all();

        return view($this->route . 'index', [
            'sheets' => $sheets,
        ]);
    }

    public function fetch($id) {
        $sheet = ServiceSheet::find($id);
        $work_sheets = WorkSheet::where('service_sheet_id', $id)->get();

        foreach ($work_sheets as $work_sheet) {
            $supply_sheets = SupplySheet::where('work_sheet_id', $work_sheet->id)->get();
            $work_sheet['supply_sheets'] = $supply_sheets;
        }

        $sheet['work_sheets'] = $work_sheets;

        return view($this->route . 'fetch', [
            'sheet' => $sheet,
        ]);
    }
}
