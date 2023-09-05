<?php

namespace App\Http\Controllers;

use App\Models\Lkasir;
use Illuminate\Http\Request;

class LkasirApiController extends Controller
{
    public function index(){
        $lkasirs = Lkasir::all();
        return response()->json(['message'=> 'success', 'data'=> $lkasirs]);
    }
    public function show($id){
        $lkasir = Lkasir::find($id);
        return response()->json(['message'=> 'success', 'data'=> $lkasir]);
    }
    public function store(Request $request){

        $lkasir = Lkasir::create($request->all());
        return response()->json(['message'=> ' Insert Data', 'data'=> $lkasir]);
    }
    public function update(Request $request,$id){
        $lkasir = Lkasir::find($id);
        $lkasir->update($request->all());
        return response()->json(['message'=> 'success', 'data'=> $lkasir]);

    }
    public function destroy($id){
        $lkasir = Lkasir::find($id);
        $lkasir->delete();
        return response()->json(['message'=> 'success', 'data'=> null]);
    }
}
