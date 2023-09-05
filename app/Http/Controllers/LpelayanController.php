<?php

namespace App\Http\Controllers;

use App\Models\Lpelayan;
use Illuminate\Http\Request;

class LpelayanController extends Controller
{
    public function index () {
        $lpelayans = Lpelayan::all(); //nama table + model

        return view('lpelayans.index',compact(['lpelayans']));
    }
    public function create(){
        return view('lpelayans.create');
    }
    public function store(Request $request){
        Lpelayan::create($request->all());
        return redirect('/lpelayans');
    }
    public function edit($id){
        $lpelayan = Lpelayan::find($id);
        return view('lpelayans.edit',compact(['lpelayan']));
    }
    public function update(Request $request,$id){
        $lpelayan = Lpelayan::find($id);
        $lpelayan->update($request->all());
        return redirect('/lpelayans');
    }
    public function destroy($id){
        $lpelayan = Lpelayan::find($id);
        $lpelayan->delete();
        return redirect('/lpelayans');
    }
}
