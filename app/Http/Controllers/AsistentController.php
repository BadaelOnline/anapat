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
        $operador = Operadores::orderBy('id','desc')->get();

        return view('admin.asistent.index',compact('asistent','operador'));
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

        $asistent = new Asistent($request->except('_token'));

        $examen_t_pdf = $request->file('examen_t_pdf');
        if($examen_t_pdf){
            $examen_t_pdf_path = $examen_t_pdf->store('asistent/', 'public');

            $asistent->examen_t_pdf = $examen_t_pdf_path;
        }else{
            $asistent->examen_t_pdf ='';
        }
        $examen_p_pdf = $request->file('examen_p_pdf');
        if($examen_p_pdf){
            $examen_p_pdf_path = $examen_p_pdf->store('asistent/', 'public');

            $asistent->examen_p_pdf = $examen_p_pdf_path;
        }else{
            $asistent->examen_p_pdf ='';
        }

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
        $curso=Cursos::select('id','codigo')->get();
        $operador=Operadores::select('id','nombre')->get();
        $tipo_carnet=Teoria::select('id','formacion')->get();
        $tipo=Practica::select('id','practica')->get();

        return view('admin.asistent.edit',compact('asistent','curso','operador','tipo_carnet','tipo'));
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
        $asistent->curso = $request->curso;
        $asistent->orden = $request->orden;
        $asistent->operador = $request->operador;
        $asistent->tipo_carnet = $request->tipo_carnet;
        $asistent->nota_t = $request->nota_t;
        $asistent->nota_p = $request->nota_p;
        $asistent->observaciones = $request->observaciones;
        $asistent->emision = $request->emision;
        $asistent->vencimiento = $request->vencimiento;
        $asistent->tipo_1 = $request->tipo_1;
        $asistent->tipo_2 = $request->tipo_2;
        $asistent->tipo_4 = $request->tipo_4;
        $asistent->tipo_3 = $request->tipo_3;

        $examen_t_pdf = $request->file('examen_t_pdf');
        if($examen_t_pdf){
            if($asistent->examen_t_pdf && file_exists(storage_path('app/public/' . $asistent->examen_t_pdf))){
                \Storage::delete('public/'. $asistent->examen_t_pdf);
            }
<<<<<<< HEAD
            $examen_t_pdf_path = $examen_t_pdf->store('images/asistent', 'public');
            $asistent->examen_t_pdf = $examen_t_pdf_path;
=======

            $examen_t_pdf_path = $examen_t_pdf->store('images/asistent', 'public');

            $asistent->examen_t_pdf = $examen_t_pdf_path;

>>>>>>> 979122e0b6a979f4cfff317719fb51dfff5b0116
        }
        $examen_p_pdf = $request->file('examen_t_pdf');

        if($examen_p_pdf){
            if($asistent->examen_p_pdf && file_exists(storage_path('app/public/' . $asistent->examen_p_pdf))){
                \Storage::delete('public/'. $asistent->examen_p_pdf);
            }
            $examen_p_pdf_path = $examen_p_pdf->store('images/asistent', 'public');
            $asistent->examen_p_pdf = $examen_p_pdf_path;
        }

        if ($asistent->save()) {
<<<<<<< HEAD
            return redirect()->route('admin.asistent')->with('success', 'Data updated successfully');
        } else {
            return redirect()->route('admin.asistent.edit')->with('error', 'Data failed to update');
=======

            return redirect()->route('admin.asistent')->with('success', 'Data updated successfully');

        } else {

            return redirect()->route('admin.asistent.edit')->with('error', 'Data failed to update');

>>>>>>> 979122e0b6a979f4cfff317719fb51dfff5b0116
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