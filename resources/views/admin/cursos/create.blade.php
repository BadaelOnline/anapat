@extends('layouts.admin')

@section('styles')
@section('styles')
<style>
   .picture-container {
  position: relative;
  cursor: pointer;
  text-align: center;
}
 .picture {
  width: 800px;
  height: 400px;
  background-color: #999999;
  border: 4px solid #CCCCCC;
  color: #FFFFFF;
  /* border-radius: 50%; */
  margin: 5px auto;
  overflow: hidden;
  transition: all 0.2s;
  -webkit-transition: all 0.2s;
}
.picture:hover {
  border-color: #2ca8ff;
}
.picture input[type="file"] {
  cursor: pointer;
  display: block;
  height: 100%;
  left: 0;
  opacity: 0 !important;
  position: absolute;
  top: 0;
  width: 100%;
}
.picture-src {
  width: 100%;
  height: 100%;
}
</style>
@endsection
@section('content')

@if (session('error'))
<div class="alert alert-danger">
    {{ session('error') }}
</div>
@endif

<form action="{{ route('admin.cursos.store') }}" method="POST" enctype="multipart/form-data">
<form action="{{ route('admin.cursos.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
{{--first row--}}
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">curso</label>
                <input type="text" name='curso' class="form-control {{$errors->first('curso') ? "is-invalid" : "" }} " value="{{old('curso')}}" id="name" placeholder="curso">
                <div class="invalid-feedback">
                    {{ $errors->first('curso') }}
                </div>
            </div>
            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">tipo_curso</label>
                <div class="col-sm-9">
                    <select name='tipo_curso' class="form-control {{$errors->first('tipo_curso') ? "is-invalid" : "" }} " id="tipo_curso">
                        <option disabled selected>Choose One!</option>
                        @foreach ($tipo_curso as $tipo_curso)
                            <option value="{{ $tipo_curso->id }}">{{ $tipo_curso->name }}</option>
                        @endforeach
                    </select>
                    <div class="invalid-feedback">
                        {{ $errors->first('tipo_curso') }}
                    </div>
                </div>
            </div>
            <div class="col-sm">
                <label for="category" class="col-sm-2 col-form-label">tipo_maquina</label>
                @foreach($tipo_maquina as $tipo_maquina)
                <div class="form-check">
                    <input class="form-check-input" name="tipo_maquina.{{$tipo_maquina->id}}" type="checkbox" value="{{$tipo_maquina->id}}" id="{{$tipo_maquina->id}}">
                    <label class="form-check-label" for="flexCheckDefault">
                        {{$tipo_maquina->tipo_maquina}}
                    </label>
                </div>
                    @endforeach
            </div>
        </div>
    </div>




    {{--second row--}}
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">codigo</label>
                <input type="text" name='codigo' class="form-control {{$errors->first('name') ? "is-invalid" : "" }} " value="{{old('codigo')}}" id="codigo" placeholder="codigo">
                <div class="invalid-feedback">
                    {{ $errors->first('codigo') }}
                </div>
            </div>

            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">entidad</label>
                <div class="col-sm-9">
                    <select name='entidad' class="form-control {{$errors->first('entidad') ? "is-invalid" : "" }} " id="entidad">
                        <option disabled selected>Choose One!</option>
                        @foreach ($entidad as $entidad)
                            <option value="{{ $entidad->id }}">{{ $entidad->name }}</option>
                        @endforeach
                    </select>
                    <div class="invalid-feedback">
                        {{ $errors->first('entidad') }}
                    </div>
                </div>
            </div>

            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">formador</label>
                <div class="col-sm-9">
                    <select name='formador' class="form-control {{$errors->first('formador') ? "is-invalid" : "" }} " id="formador">
                        <option disabled selected>Choose One!</option>
                        @foreach ($formador as $formador)
                            <option value="{{ $formador->id }}">{{ $formador->name }}</option>
                        @endforeach
                    </select>
                    <div class="invalid-feedback">
                        {{ $errors->first('formador') }}
                    </div>
                </div>
            </div>
        </div>
    </div>




    {{--third row--}}
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">Formador Apoyo1</label>
                <select name='formador_apoyo_1' class="form-control {{$errors->first('formador_apoyo_1') ? "is-invalid" : "" }} " id="formador_apoyo1">
                    <option disabled selected>Choose One!</option>
                    @foreach ($formadors as $formadors)
                        <option value="{{ $formadors->id }}">{{ $formadors->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">Formador Apoyo 2</label>
                <select name='formador_apoyo_2' class="form-control {{$errors->first('formador_apoyo2') ? "is-invalid" : "" }} " id="formador_apoyo2">
                    <option disabled selected>Choose One!</option>
                    @foreach ($formadors2 as $formador)
                        <option value="{{ $formador->id }}">{{ $formador->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-sm">
                <label for="category" class="col-sm-2 col-form-label">Formador Apoyo 3</label>
                <div class="col-sm-9">
                    <select name='formador_apoyo_3' class="form-control {{$errors->first('formador_apoyo3') ? "is-invalid" : "" }} " id="formador_apoyo3">
                        <option disabled selected>Choose One!</option>
                        @foreach ($formadors3 as $formador)
                            <option value="{{ $formador->id }}">{{ $formador->name }}</option>
                        @endforeach
                    </select>
                    <div class="invalid-feedback">
                        {{ $errors->first('formador_apoyo3') }}
                    </div>
                </div>
            </div>
        </div>
    </div>


    {{--fourth row--}}
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <label for="date" class="col-sm-2 col-form-label">Fecha Inicio</label>
                <div class="col-sm-9">
                    <input type="date" name='fecha_inicio' class="form-control {{$errors->first('fecha_inicio') ? "is-invalid" : "" }} " value="{{old('fecha_inicio')}}" id="fecha_inicio" >
                    <div class="invalid-feedback">
                        {{ $errors->first('fecha_inicio') }}
                    </div>
                </div>
            </div>

            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">direccion</label>
                <input type="text" name='direccion' class="form-control {{$errors->first('direccion') ? "is-invalid" : "" }} " value="{{old('direccion')}}" id="direccion" placeholder="Project Name">
                <div class="invalid-feedback">
                    {{ $errors->first('name') }}
                </div>
            </div>
            <div class="col-sm">
                <label for="category" class="col-sm-2 col-form-label">ciudad</label>
                <div class="col-sm-9">
                    <input type="text" name='ciudad' class="form-control {{$errors->first('ciudad') ? "is-invalid" : "" }} " value="{{old('ciudad')}}" id="ciudad" placeholder="ciudad">
                    <div class="invalid-feedback">
                        {{ $errors->first('ciudad') }}
                    </div>
                    <div class="invalid-feedback">
                        {{ $errors->first('ciudad') }}
                    </div>
                </div>
            </div>
        </div>
    </div>


    {{--fifth row--}}
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <label for="date" class="col-sm-2 col-form-label">provincia</label>
                <div class="col-sm-9">
                    <input type="text" name='provincia' class="form-control {{$errors->first('provincia') ? "is-invalid" : "" }} " value="{{old('provincia')}}" id="provincia" >
                    <div class="invalid-feedback">
                        {{ $errors->first('provincia') }}
                    </div>
                </div>
            </div>

            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">codigo_postal</label>
                <input type="text" name='codigo_postal' class="form-control {{$errors->first('codigo_postal') ? "is-invalid" : "" }} " value="{{old('codigo_postal')}}" id="codigo_postal" placeholder="codigo_postal">
                <div class="invalid-feedback">
                    {{ $errors->first('codigo_postal') }}
                </div>
            </div>
            <div class="col-sm">
                <label for="category" class="col-sm-2 col-form-label">asistentes_pdf</label>
                <div class="col-sm-9">
                    <input type="text" name='asistentes_pdf' class="form-control {{$errors->first('asistentes_pdf') ? "is-invalid" : "" }} " value="{{old('asistentes_pdf')}}" id="asistentes_pdf" placeholder="asistentes_pdf">
                    <div class="invalid-feedback">
                        {{ $errors->first('asistentes_pdf') }}
                    </div>
                    <div class="invalid-feedback">
                        {{ $errors->first('asistentes_pdf') }}
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{--sixth row--}}
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <label for="date" class="col-sm-2 col-form-label">examen-t</label>
                <div class="col-sm-9">
                    <select name='examen-t' class="form-control {{$errors->first('examen-t') ? "is-invalid" : "" }} " id="examen-t">
                        <option disabled selected>Choose One!</option>
                        @foreach ($examen_t as $examen_t)
                            <option value="{{ $examen_t->id }}">{{ $examen_t->name }}</option>
                        @endforeach
                    </select>
                </div>
            </div>

            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">	examen-p</label>
                <select name='examen-p' class="form-control {{$errors->first('examen-p') ? "is-invalid" : "" }} " id="examen_p">
                    <option disabled selected>Choose One!</option>
                    @foreach ($examen_p as $examen_p)
                        <option value="{{ $examen_p->id }}">{{ $examen_p->name }}</option>
                    @endforeach
                </select>
            </div>
            <div class="col-sm">
                <label for="category" class="col-sm-2 col-form-label">	fecha_alta</label>
                <div class="col-sm-9">
                    <input type="date" name='fecha_alta' class="form-control {{$errors->first('fecha_alta') ? "is-invalid" : "" }} " value="{{old('fecha_alta')}}" id="fecha_alta" >
                    <div class="invalid-feedback">
                        {{ $errors->first('fecha_alta') }}
                    </div>
                </div>
            </div>
        </div>
    </div>


    {{--seventh row--}}
    <div class="container">
        <div class="row">
            <div class="col-sm">
                <label for="date" class="col-sm-2 col-form-label">publico-privado</label>
                <div class="col-sm-9">
                    <input type="text" name='publico-privado' class="form-control {{$errors->first('publico-privado') ? "is-invalid" : "" }} " value="{{old('publico-privado')}}" id="publico-privado" >
                    <div class="invalid-feedback">
                        {{ $errors->first('publico-privado') }}
                    </div>
                </div>
            </div>

            <div class="col-sm">
                <label for="name" class="col-sm-2 col-form-label">observaciones</label>
                <input type="text" name='observaciones' class="form-control {{$errors->first('observaciones') ? "is-invalid" : "" }} " value="{{old('observaciones')}}" id="observaciones" placeholder="observaciones">
                <div class="invalid-feedback">
                    {{ $errors->first('observaciones') }}
                </div>
            </div>
            <div class="col-sm">
                <label for="category" class="col-sm-2 col-form-label">cerrado</label>
                <div class="col-sm-9">
                    <input type="text" name='cerrado' class="form-control {{$errors->first('cerrado') ? "is-invalid" : "" }} " value="{{old('cerrado')}}" id="cerrado" placeholder="cerrado">
                    <div class="invalid-feedback">
                        {{ $errors->first('cerrado') }}
                    </div>
                    <div class="invalid-feedback">
                        {{ $errors->first('cerrado') }}
                    </div>
                </div>
            </div>
        </div>
    </div>

    <label for="category" class="col-sm-2 col-form-label">estado</label>
    <div class="col-sm-9">
        <input type="text" name='estado' class="form-control {{$errors->first('estado') ? "is-invalid" : "" }} " value="{{old('estado')}}" id="cerrado" placeholder="estado">
        <div class="invalid-feedback">
            {{ $errors->first('estado') }}
        </div>
        <div class="invalid-feedback">
            {{ $errors->first('estado') }}
        </div>
    </div>

        <div class="form-group">
            <div class="picture-container">
                <div class="picture">
                    <img src="" class="picture-src" id="wizardPicturePreview" height="200px" width="400px" title=""/>
                    <input type="file" id="wizard-picture" name="cover" class="form-control {{$errors->first('cover') ? "is-invalid" : "" }} ">
                    <div class="invalid-feedback">
                        {{ $errors->first('cover') }}
                    </div>
                </div>
                <h6>Pilih Cover</h6>
            </div>
        </div>
   
        <div class="form-group ml-5">
   
            <div class="col-sm-3">
   
                <button type="submit" class="btn btn-primary">Create</button>
   
            </div>
   
        </div>

    </div>      

  </form>
@endsection

@push('scripts')

<script>
    // Prepare the preview for profile picture
    $("#wizard-picture").change(function(){
      readURL(this);
  });
  //Function to show image before upload
function readURL(input) {
  if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
          $('#wizardPicturePreview').attr('src', e.target.result).fadeIn('slow');
      }
      reader.readAsDataURL(input.files[0]);
  }
}
</script>
@endpush