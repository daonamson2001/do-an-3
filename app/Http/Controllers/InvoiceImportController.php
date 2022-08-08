<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class InvoiceImportController extends Controller
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
        $imports = DB::table('imports')
            ->select('imports.*', 'users.fullname')
            ->join('users', 'users.id', '=', 'imports.user_id')
            ->get();
        return view('chucnang.invoice.import.index', ['imports' => $imports]);
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
            $user = DB::table('detail_imports')
                ->select('users.*', 'imports.imp_code', 'imports.imp_date', 'imports.imp_total')
                ->join('imports', 'imports.id', '=', 'detail_imports.imp_id')
                ->join('users', 'users.id', '=', 'imports.user_id')
                ->where('imp_id', $id)
                ->first();

            $detail_imports = DB::table('detail_imports')
                ->select('detail_imports.*', 'supplies.sup_name', 'imports.imp_code', 'producers.pro_name', 'qualities.qua_name', 'units.unit_name')
                ->join('supplies', 'supplies.id', '=', 'detail_imports.sup_id')
                ->join('imports', 'imports.id', '=', 'detail_imports.imp_id')
                ->join('producers', 'producers.id', '=', 'detail_imports.pro_id')
                ->join('qualities', 'qualities.id', '=', 'detail_imports.qua_id')
                ->join('units', 'units.id', '=', 'supplies.unit_id')
                ->where('imp_id', $id)
                ->get();
                
            return view('chucnang.invoice.import.details', [
                'user' => $user, 
                'detail_imports' => $detail_imports]
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
