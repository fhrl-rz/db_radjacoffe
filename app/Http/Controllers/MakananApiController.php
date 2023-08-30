<?php

namespace App\Http\Controllers;

use App\Models\Makanan;
use Illuminate\Http\Request;

class MakananApiController extends Controller
{
    public function index(){
        $makanans = Makanan::all();
        return response()->json(['message'=> 'success', 'data'=> $makanans]);
    }
    public function show($id){
        $makanan = Makanan::find($id);
        return response()->json(['message'=> 'success', 'data'=> $makanan]);
    }
    public function store(Request $request){

        $makanan = Makanan::create($request->all());
        return response()->json(['message'=> ' Insert Data', 'data'=> $makanan]);
    }
    public function update(Request $request,$id){
        $makanan = Makanan::find($id);
        $makanan->update($request->all());
        return response()->json(['message'=> 'success', 'data'=> $makanan]);

    }
    public function destroy($id){
        $makanan = Makanan::find($id);
        $makanan->delete();
        return response()->json(['message'=> 'success', 'data'=> null]);
    }
}
