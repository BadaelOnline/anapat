<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\{
    Asistent, Cursos, EntidadesFormadoreas, Examen, Formadores, Operadores, Pcategory, Practica, Teoria, Tipo_De_Curso, Tipo_Maquina
};

class AsistentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $asistent = Asistent::orderBy('id','desc')->get();

        return view('admin.asistent.index',compact('asistent'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $curso=Cursos::select('id','codigo')->get();
        $operador=Operadores::select('id','nombre')->get();
        $tipo_carnet=Teoria::select('id','formacion')->get();
        $tipo=Practica::select('id','practica')->get();

//        dd($formador[0]->nombre);
        return view('admin.asistent.create',compact('curso','operador','tipo_carnet','tipo'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
//dd($request);

        $asistent = new Asistent($request->except('_token'));


//        $cover = $request->file('cover');
//
//        if($cover){
//        $cover_path = $cover->store('images/Asistent', 'public');
//        $Asistent->cover = $cover_path;
//        }

        if ($asistent->save()) {

                return redirect()->route('admin.asistent')->with('success', 'Data added successfully');
        
               } else {
                   
                return redirect()->route('admin.asistent.create')->with('error', 'Data failed to add');
        
               }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $asistent = Asistent::findOrFail($id);
        $categories = Pcategory::get();

        return view('admin.asistent.edit',compact('asistent','categories'));
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
//        \Validator::make($request->all(), [
//            "category" => "required",
//            "desc" => "required"
//        ])->validate();

        $asistent = Asistent::findOrFail($id);
//        $Asistent->pcategory_id = $request->category;
//        $Asistent->name = $request->name;
//        $Asistent->client = $request->client;
//        $Asistent->desc = $request->desc;
//        $Asistent->date = $request->date;


        $new_cover = $request->file('cover');

        if($new_cover){
        if($asistent->cover && file_exists(storage_path('app/public/' . $asistent->cover))){
            \Storage::delete('public/'. $asistent->cover);
        }

        $new_cover_path = $new_cover->store('images/asistent', 'public');

        $asistent->cover = $new_cover_path;
    
        }

        if ($asistent->save()) {

                return redirect()->route('admin.asistent')->with('success', 'Data updated successfully');
        
               } else {
                   
                return redirect()->route('admin.asistent.edit')->with('error', 'Data failed to update');
        
               }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $asistent = Asistent::findOrFail($id);
        $asistent->delete();

        return redirect()->route('admin.asistent')->with('success', 'Data deleted successfully');
    }
}