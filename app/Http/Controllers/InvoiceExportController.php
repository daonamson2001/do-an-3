<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InvoiceExportController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $exports = DB::table('exports')
            ->select('exports.*', 'users.fullname')
            ->join('users', 'users.id', '=', 'exports.user_id')
            ->get();
        return view('chucnang.invoice.export.index', ['exports' => $exports]);
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
        if (DB::table('detail_exports')->where('exp_id', $id)->exists()) {
            $user = DB::table('detail_exports')
            ->select('users.*', 'exports.exp_code', 'exports.exp_date', 'exports.exp_total')
            ->join('exports', 'exports.id', '=', 'detail_exports.exp_id')
            ->join('users', 'users.id', '=', 'exports.user_id')
            ->where('exp_id', $id)
            ->first();

            $detail_exports = DB::table('detail_exports')
                ->select('detail_exports.*', 'supplies.sup_name')
                ->join('supplies', 'supplies.id', '=', 'detail_exports.sup_id')
                ->join('exports', 'exports.id', '=', 'detail_exports.exp_id')
                ->where('exp_id', $id)
                ->get();        
                
            return view('chucnang.invoice.export.details', [
                'user' => $user, 
                'detail_exports' => $detail_exports]
            );
        }
        return redirect()->back()->withErrors(['msg' => 'Không tìm thấy chi tiết hoá đơn này!']);
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
