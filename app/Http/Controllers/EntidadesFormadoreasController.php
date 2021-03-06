<?php

namespace App\Http\Controllers;

use App\Entidades_Formadoreas;
use App\Models\EntidadesFormadoreas;
use Illuminate\Http\Request;


class EntidadesFormadoreasController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $entidadesFormadores = EntidadesFormadoreas::orderBy('id','desc')->get();

        return view('admin.entidades_formadoreas.index',compact('entidadesFormadores'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.entidades_formadoreas.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $entidades_formadoreas = new EntidadesFormadoreas($request->except('_token'));
        $logo = $request->file('logo');
        $doc_medios_pdf =$request->file('doc_medios_pdf');
        if($logo){
            $logo_path = $logo->store('entidades_formadoreas/'.$request->nombre, 'public');

            $entidades_formadoreas->logo = $logo_path;
        }
        if($doc_medios_pdf){
            $doc_medios_pdf_path = $doc_medios_pdf->store('entidades_formadoreas/'.$request->nombre, 'public');

            $entidades_formadoreas->doc_medios_pdf = $doc_medios_pdf_path;
        }


//        $entidades_formadoreas = $request->except('_token');
//        dd($request->except('_token'));

        if ( $entidades_formadoreas->save()) {

            return redirect()->route('admin.entidades_formadoreas')->with('success', 'Data added successfully');

        } else {

            return redirect()->route('admin.entidades_formadoreas.create')->with('error', 'Data failed to add');

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
        $entidades_formadoreas = EntidadesFormadoreas::findOrFail($id);

        return view('admin.entidades_formadoreas.edit',compact('entidades_formadoreas'));
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
        $entidades_formadoreas = EntidadesFormadoreas::findOrFail($id);
        $entidades_formadoreas->socio = $request->socio;
        $entidades_formadoreas->cif = $request->cif;
        $entidades_formadoreas->nombre = $request->nombre;
        $entidades_formadoreas->razon_social = $request->razon_social;
        $entidades_formadoreas->province = $request->province;
        $entidades_formadoreas->ciudad = $request->ciudad;
        $entidades_formadoreas->direccion = $request->direccion;
        $entidades_formadoreas->codigo_postal = $request->codigo_postal;
        $entidades_formadoreas->web = $request->web;
        $entidades_formadoreas->mail = $request->mail;
        $entidades_formadoreas->fecha = $request->fecha;
        $entidades_formadoreas->estado = $request->estado;
        $entidades_formadoreas->certificado = $request->certificado;

        $new_logo = $request->file('logo');
        $new_doc_medios_pdf = $request->file('doc_medios_pdf');

        if($new_logo){
            if($entidades_formadoreas->logo && file_exists(storage_path('app/public/' . $entidades_formadoreas->logo))){
                \Storage::delete('public/'. $entidades_formadoreas->logo);
            }

            $new_logo_path = $new_logo->store('entidades_formadoreas/'.$request->nombre, 'public');

            $entidades_formadoreas->logo = $new_logo_path;
        }
        if($new_doc_medios_pdf){
            if($entidades_formadoreas->doc_medios_pdf && file_exists(storage_path('app/public/' . $entidades_formadoreas->doc_medios_pdf))){
                \Storage::delete('public/'. $entidades_formadoreas->doc_medios_pdf);
            }

            $new_doc_medios_pdf_path = $new_doc_medios_pdf->store('entidades_formadoreas/'.$request->nombre, 'public');

            $entidades_formadoreas->doc_medios_pdf = $new_doc_medios_pdf_path;
        }

        if ( $entidades_formadoreas->save()) {

            return redirect()->route('admin.entidades_formadoreas')->with('success', 'Data updated successfully');

        } else {

            return redirect()->route('admin.entidades_formadoreas.edit')->with('error', 'Data failed to update');

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
        $entidades_formadoreas = EntidadesFormadoreas::findOrFail($id);

        $entidades_formadoreas->delete();

        return redirect()->route('admin.entidades_formadoreas')->with('success', 'Data deleted successfully');


    }
}
