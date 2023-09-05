<?php

namespace App\Http\Controllers;

use App\Models\Lkasir;
use Illuminate\Http\Request;

class LkasirController extends Controller
{
    public function index () {
        $lkasirs = Lkasir::all(); //nama table + model

        return view('lkasirs.index',compact(['lkasirs']));
    }
    public function create(){
        return view('lkasirs.create');
    }
    public function store(Request $request){
        Lkasir::create($request->all());
        return redirect('/lkasirs');
    }
    public function edit($id){
        $lkasir = Lkasir::find($id);
        return view('lkasirs.edit',compact(['lkasir']));
    }
    public function update(Request $request,$id){
        $lkasir = Lkasir::find($id);
        $lkasir->update($request->all());
        return redirect('/lkasirs');
    }
    public function destroy($id){
        $lkasir = Lkasir::find($id);
        $lkasir->delete();
        return redirect('/lkasirs');
    }
}
