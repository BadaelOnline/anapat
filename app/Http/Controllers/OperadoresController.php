<?php 

namespace App\Http\Controllers;


use App\Models\EntidadesFormadoreas;
use App\Models\Operadores;
use Illuminate\Http\Request;

class OperadoresController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $operadores = Operadores::orderBy('id','desc')->get();

        return view('admin.operadores.index',compact('operadores'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $entidad=EntidadesFormadoreas::select('id','nombre')->get();
        return view('admin.operadores.create',compact('entidad'));

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {



        $operadores = new operadores($request->except('_token'));


        if ( $operadores->save()) {

            return redirect()->route('admin.operadores')->with('success', 'Data added successfully');

        } else {

            return redirect()->route('admin.operadores.create')->with('error', 'Data failed to add');

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
        $operadores = Operadores::findOrFail($id);

        return view('admin.operadores.edit',compact('operadores'));
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
        \Validator::make($request->all(), [
            "icon" => "required",
            "title" => "required",
            "quote" => "required|max:255"
        ])->validate();

        $operadores = Operadores::findOrFail($id);


        if ( $operadores->save()) {

            return redirect()->route('admin.operadores')->with('success', 'Data added successfully');

        } else {

            return redirect()->route('admin.operadores.create')->with('error', 'Data failed to add');

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
        $operadores = Operadores::findOrFail($id);

        $operadores->delete();

        return redirect()->route('admin.operadores')->with('success', 'Data deleted successfully');
    }
}
