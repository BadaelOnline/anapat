<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Models\{
    Cursos, EntidadesFormadoreas, Examen, Formadores, Pcategory, Tipo_De_Curso, Tipo_Maquina
};

class CursosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $cursos = Cursos::orderBy('id','desc')->get();

        return view('admin.cursos.index',compact('cursos'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $entidad=EntidadesFormadoreas::select('id','nombre')->get();
        $formador=Formadores::select('id','nombre')->get();
        $tipo_maquina=Tipo_Maquina::select('id','tipo_maquina')->get();
        $tipo_curso=Tipo_De_Curso::select('id','tipo_curso')->get();
        $examen_t=Examen::select('id','nombre')->where('tipo',2)->get();
        $examen_p=Examen::select('id','nombre')->where('tipo',2)->get();
        $formadors=Formadores::select('id','nombre')->get();
        $formadors2=Formadores::select('id','nombre')->get();
        $formadors3=Formadores::select('id','nombre')->get();

//        dd($formador[0]->nombre);
        return view('admin.cursos.create',compact('entidad','formador','tipo_maquina','tipo_curso','examen_t','examen_p','formadors','formadors2','formadors3'));
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

        $cursos = new Cursos($request->except('_token'));


//        $cover = $request->file('cover');
//
//        if($cover){
//        $cover_path = $cover->store('images/Cursos', 'public');
//        $cursos->cover = $cover_path;
//        }

        if ($cursos->save()) {

                return redirect()->route('admin.cursos')->with('success', 'Data added successfully');
        
               } else {
                   
                return redirect()->route('admin.cursos.create')->with('error', 'Data failed to add');
        
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
        $cursos = Cursos::findOrFail($id);
        $categories = Pcategory::get();

        return view('admin.Cursos.edit',compact('cursos','categories'));
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

        $cursos = Cursos::findOrFail($id);
//        $Cursos->pcategory_id = $request->category;
//        $Cursos->name = $request->name;
//        $Cursos->client = $request->client;
//        $Cursos->desc = $request->desc;
//        $Cursos->date = $request->date;


        $new_cover = $request->file('cover');

        if($new_cover){
        if($cursos->cover && file_exists(storage_path('app/public/' . $Cursos->cover))){
            \Storage::delete('public/'. $Cursos->cover);
        }

        $new_cover_path = $new_cover->store('images/Cursos', 'public');

        $cursos->cover = $new_cover_path;
    
        }

        if ($cursos->save()) {

                return redirect()->route('admin.cursos')->with('success', 'Data updated successfully');
        
               } else {
                   
                return redirect()->route('admin.cursos.edit')->with('error', 'Data failed to update');
        
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
        $cursos = cursos::findOrFail($id);
        $cursos->delete();

        return redirect()->route('admin.cursos')->with('success', 'Data deleted successfully');
    }
}