<?php

namespace App\Http\Controllers;

use App\Models\Lchef;
use Illuminate\Http\Request;

class LchefController extends Controller
{
    public function index () {
        $lkasirs = Lchef::all(); //nama table + model

        return view('lkasirs.index',compact(['lkasirs']));
    }
    public function create(){
        return view('lkasirs.create');
    }
    public function store(Request $request){
        Lchef::create($request->all());
        return redirect('/lkasirs');
    }
    public function edit($id){
        $lchef = Lchef::find($id);
        return view('lkasirs.edit',compact(['lchef']));
    }
    public function update(Request $request,$id){
        $lchef = Lchef::find($id);
        $lchef->update($request->all());
        return redirect('/lkasirs');
    }
    public function destroy($id){
        $lchef = Lchef::find($id);
        $lchef->delete();
        return redirect('/lkasirs');
    }
}
