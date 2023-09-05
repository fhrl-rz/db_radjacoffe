<?php

namespace App\Http\Controllers;

use App\Models\LaporanPelayan;
use Illuminate\Http\Request;

class LaporanPelayanController extends Controller
{
    public function index () {
        $laporanpelayans = LaporanPelayan::all(); //nama table + model

        return view('laporanpelayans.index',compact(['laporanpelayans']));
    }
    public function create(){
        return view('laporanpelayans.create');
    }
    public function store(Request $request){
        LaporanPelayan::create($request->all());
        return redirect('/laporanpelayans');
    }
    public function edit($id){
        $laporanpelayan = LaporanPelayan::find($id);
        return view('laporanpelayans.edit',compact(['laporanpelayan']));
    }
    public function update(Request $request,$id){
        $laporanpelayan = LaporanPelayan::find($id);
        $laporanpelayan->update($request->all());
        return redirect('/laporanpelayans');
    }
    public function destroy($id){
        $laporanpelayan = LaporanPelayan::find($id);
        $laporanpelayan->delete();
        return redirect('/laporanpelayans');
    }
}
