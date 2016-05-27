<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;
use DB;

class applicationController extends Controller
{
    public function index() {
        $opleidingen = DB::select('select opleidings_code from Opleiding');
        $opleidingen = array_map(function ($o) {
            return $o->opleidings_code;
        }, $opleidingen);

        return view('application', ['opleidingen' => $opleidingen]);
    }
}
