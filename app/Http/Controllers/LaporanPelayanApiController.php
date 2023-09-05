<?php

namespace App\Http\Controllers;

use App\Models\LaporanPelayan;
use Illuminate\Http\Request;

class LaporanPelayanApiController extends Controller
{
    public function index(){
        $laporanpelayans = LaporanPelayan::all();
        return response()->json(['message'=> 'success', 'data'=> $laporanpelayans]);
    }
    public function show($id){
        $laporanpelayan = LaporanPelayan::find($id);
        return response()->json(['message'=> 'success', 'data'=> $laporanpelayan]);
    }
    public function store(Request $request){

        $laporanpelayan = LaporanPelayan::create($request->all());
        return response()->json(['message'=> ' Insert Data', 'data'=> $laporanpelayan]);
    }
    public function update(Request $request,$id){
        $laporanpelayan = LaporanPelayan::find($id);
        $laporanpelayan->update($request->all());
        return response()->json(['message'=> 'success', 'data'=> $laporanpelayan]);

    }
    public function destroy($id){
        $laporanpelayan = LaporanPelayan::find($id);
        $laporanpelayan->delete();
        return response()->json(['message'=> 'success', 'data'=> null]);
    }
}
