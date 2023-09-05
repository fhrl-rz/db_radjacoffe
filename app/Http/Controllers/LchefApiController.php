<?php

namespace App\Http\Controllers;

use App\Models\Lchef;
use Illuminate\Http\Request;

class LchefApiController extends Controller
{
    public function index(){
        $lchefs = Lchef::all();
        return response()->json(['message'=> 'success', 'data'=> $lchefs]);
    }
    public function show($id){
        $lchef = Lchef::find($id);
        return response()->json(['message'=> 'success', 'data'=> $lchef]);
    }
    public function store(Request $request){

        $lchef = Lchef::create($request->all());
        return response()->json(['message'=> ' Insert Data', 'data'=> $lchef]);
    }
    public function update(Request $request,$id){
        $lchef = Lchef::find($id);
        $lchef->update($request->all());
        return response()->json(['message'=> 'success', 'data'=> $lchef]);

    }
    public function destroy($id){
        $lchef = Lchef::find($id);
        $lchef->delete();
        return response()->json(['message'=> 'success', 'data'=> null]);
    }
}
