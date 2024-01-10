<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Support\Facades\DB;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function landingPage() {

        $image = '"data:image/png;base64, ' . base64_encode(file_get_contents(resource_path('images\auto-mechanic-checking-car.png'))) . '"';
        $body_style = "background-image: url($image); background-size:cover; background-position: 50% 20%; background-color: gray;";

        $statistics['first'] = DB::select('call p_brands_types_serviced();');
        $statistics['second'] = DB::select('call p_brand_reported_problems();');

        return view('landing_page.welcome', [
            'bodyStyle' => $body_style,
            'statistics' => $statistics,
        ]);
    }

    public function reportsPage() {

        $report = [];

        if(!empty($_REQUEST)) {
            $date_from = date('Y-m-d', strtotime($_REQUEST['date_from']));
            $date_to = date('Y-m-d', strtotime($_REQUEST['date_to']));

            switch ($_REQUEST['report']) {
                case 4 :
                    $report = DB::select('call p_completed_service_items_list(?, ?)', [$date_from, $date_to]);
                    break;
                case 3 :
                    $report = DB::select('call p_summed_vehicle_type_report(?, ?)', [$date_from, $date_to]);
                    break;
                case 2 :
                    $report = DB::select('call p_position_spent_hours(?, ?)', [$date_from, $date_to]);
                    break;
                default :
                    $report = DB::select('call p_active_front_desk_accepted_jobs(?, ?)', [$date_from, $date_to]);
            }
        }

        return view('reports.index', [
            'report' => $report,
        ]);
    }
}
