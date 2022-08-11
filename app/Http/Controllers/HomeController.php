<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\Supplies;
use Carbon\Carbon;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $month = Carbon::now()->month;

        if ($request->month) {
            $month = $request->month;
        }

        $data = Supplies::select(
            'supplies.id',
            'supplies.sup_name',
            DB::raw('SUM(detail_exports.de_into_money) as total_sold')
        )
        ->leftJoin('detail_exports', 'detail_exports.sup_id', '=', 'supplies.id')
        ->join('exports', 'exports.id', '=', 'detail_exports.exp_id')
        ->groupBy(
            'supplies.id', 
            'supplies.sup_name', 
        )
        ->whereMonth('exports.exp_date', $month)
        ->get()
        ->toArray();

        // dd($data);

        $data_json = json_encode($data);
        
        return view('layouts.main', [
            'data' => $data_json,
            'month' => $month
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
