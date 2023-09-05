<?php

namespace App\Http\Controllers;

use App\Models\Lpelayan;
use Illuminate\Http\Request;

class LpelayanApiController extends Controller
{
    public function index(){
        $lpelayans = Lpelayan::all();
        return response()->json(['message'=> 'success', 'data'=> $lpelayans]);
    }
    public function show($id){
        $lpelayan = Lpelayan::find($id);
        return response()->json(['message'=> 'success', 'data'=> $lpelayan]);
    }
    public function store(Request $request){

        $lpelayan = Lpelayan::create($request->all());
        return response()->json(['message'=> ' Insert Data', 'data'=> $lpelayan]);
    }
    public function update(Request $request,$id){
        $lpelayan = Lpelayan::find($id);
        $lpelayan->update($request->all());
        return response()->json(['message'=> 'success', 'data'=> $lpelayan]);

    }
    public function destroy($id){
        $lpelayan = Lpelayan::find($id);
        $lpelayan->delete();
        return response()->json(['message'=> 'success', 'data'=> null]);
    }
}
