@extends('layouts.admin')

@section('styles')
    <style>
        .picture-container {
            position: relative;
            cursor: pointer;
            text-align: center;
        }
        .picture {
            width: 300px;
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

    <form action="{{ route('admin.operadores.update',$operadores->id) }}" method="POST" enctype="multipart/form-data">
        @csrf

        <div class="form-group">


            <div class="form-group ml-5">

                <label for="dni" class="col-sm-2 col-form-label">Dni</label>

                <div class="col-sm-7">
                    <input type="text" name='dni' class="form-control {{$errors->first('dni') ? "is-invalid" : "" }} " value="{{old('dni') ? old('dni') : $operadores->dni}}" id="dni" placeholder="Documento identificativo">
                    <div class="invalid-feedback">
                        {{ $errors->first('dni') }}
                    </div>
                </div>
            </div>

            <div class="form-group ml-5">
                <label for="apellidos" class="col-sm-2 col-form-label">Apellidos</label>
                <div class="col-sm-7">
                    <input type="text" name='apellidos' class="form-control {{$errors->first('apellidos') ? "is-invalid" : "" }} " value="{{old('apellidos') ? old('apellidos') : $operadores->apellidos}}" id="apellidos" placeholder="Apellidos">
                    <div class="invalid-feedback">
                        {{ $errors->first('apellidos') }}
                    </div>
                </div>
            </div>


            <div class="form-group ml-5">
                <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
                <div class="col-sm-7">
                    <input type="text" name='nombre' class="form-control {{$errors->first('nombre') ? "is-invalid" : "" }} " value="{{old('nombre') ? old('nombre') : $operadores->nombre}}" id="twitter" placeholder="Nombre ">
                    <div class="invalid-feedback">
                        {{ $errors->first('nombre') }}
                    </div>
                </div>
            </div>

            <div class="form-group ml-5">
                <label for="entidad" class="col-sm-2 col-form-label">Entidad</label>
                <div class="col-sm-9">
                    <select name='entidad' class="form-control {{$errors->first('entidad') ? "is-invalid" : "" }} " id="entidad">
                        <option disabled selected>{{__('message.Choose_One')}}</option>
                        @foreach ($entidad as $entidad)
                            <option value="{{ $entidad->id }}" {{$operadores->entidad == $entidad->id ? "selected" : ""}}>{{ $entidad->nombre }}</option>
                        @endforeach
                    </select>
                    <div class="invalid-feedback">
                        {{ $errors->first('entidad') }}
                    </div>
                </div>
            </div>

            <div class="form-group ml-5">
                <label for="foto" class="col-sm-2 col-form-label">Foto</label>
                <div class="col-sm-7">
                    <input type="file" name='foto' class="form-control {{$errors->first('foto') ? "is-invalid" : "" }} " value="{{old('foto') ? old('foto') : $operadores->foto}}" id="foto" placeholder="foto">
                    <div class="invalid-feedback">
                        {{ $errors->first('foto') }}
                    </div>
                </div>
            </div>

            <div class="form-group ml-5">
                <label for="dni_img" class="col-sm-2 col-form-label">Dni Img</label>
                <div class="col-sm-7">
                    <input type="file" name='dni_img' class="form-control {{$errors->first('dni_img') ? "is-invalid" : "" }} " value="{{old('dni_img')}}" id="dni_img" placeholder="dni_img">
                    <div class="invalid-feedback">
                        {{ $errors->first('dni_img') }}
                    </div>
                </div>
            </div>

            <div class="form-group ml-5">
                <label for="fecha_nacimiento" class="col-sm-2 col-form-label">Fecha Nacimiento</label>
                <div class="col-sm-7">
                    <input type="date" name='fecha_nacimiento' class="form-control {{$errors->first('fecha_nacimiento') ? "is-invalid" : "" }} " value="{{old('fecha_nacimiento') ? old('fecha_nacimiento') : $operadores->fecha_nacimiento}}" id="fecha_nacimiento" placeholder="fecha nacimiento">
                    <div class="invalid-feedback">
                        {{ $errors->first('fecha_nacimiento') }}
                    </div>
                </div>
            </div>
            <div class="form-group ml-5">
                <label for="provincia" class="col-sm-2 col-form-label">Provincia</label>
                <div class="col-sm-7">
                    <input type="text" name='provincia' class="form-control {{$errors->first('provincia') ? "is-invalid" : "" }} " value="{{old('provincia') ? old('provincia') : $operadores->provincia}}" id="provincia" placeholder="Provincia">
                    <div class="invalid-feedback">
                        {{ $errors->first('provincia') }}
                    </div>
                </div>
            </div>
            <div class="form-group ml-5">
                <label for="ciudad" class="col-sm-2 col-form-label">Ciudad</label>
                <div class="col-sm-7">
                    <input type="text" name='ciudad' class="form-control {{$errors->first('ciudad') ? "is-invalid" : "" }} " value="{{old('ciudad') ? old('ciudad') : $operadores->ciudad}}" id="ciudad" placeholder="Ciudad">
                    <div class="invalid-feedback">
                        {{ $errors->first('ciudad') }}
                    </div>
                </div>
            </div>

            <div class="form-group ml-5">
                <label for="direccion" class="col-sm-2 col-form-label">direccion</label>
                <div class="col-sm-7">
                    <input type="text" name='direccion' class="form-control {{$errors->first('linkedin') ? "is-invalid" : "" }} " value="{{old('direccion') ? old('direccion') : $operadores->direccion}}" id="linkedin" placeholder="Dirección del formador">
                    <div class="invalid-feedback">
                        {{ $errors->first('linkedin') }}
                    </div>
                </div>
            </div>

            <div class="form-group ml-5">
                <label for="codigo_postal" class="col-sm-2 col-form-label">Codigo Postal</label>
                <div class="col-sm-7">
                    <input type="number" name='codigo_postal' class="form-control {{$errors->first('linkedin') ? "is-invalid" : "" }} " value="{{old('codigo_postal') ? old('codigo_postal') : $operadores->codigo_postal}}" id="linkedin" placeholder="Código postal">
                    <div class="invalid-feedback">
                        {{ $errors->first('linkedin') }}
                    </div>
                </div>
            </div>


            <div class="form-group ml-5">
                <label for="mail" class="col-sm-2 col-form-label">mail</label>
                <div class="col-sm-7">
                    <input type="text" name='mail' class="form-control {{$errors->first('linkedin') ? "is-invalid" : "" }} " value="{{old('mail') ? old('mail') : $operadores->mail}}" id="linkedin" placeholder="Cuenta de correo">
                    <div class="invalid-feedback">
                        {{ $errors->first('linkedin') }}
                    </div>
                </div>
            </div>

            <div class="form-group ml-5">
                <label for="carnet" class="col-sm-2 col-form-label">Carnet</label>
                <div class="col-sm-7">
                    <input type="text" name='carnet' class="form-control {{$errors->first('carnet') ? "is-invalid" : "" }} " value="{{old('carnet') ? old('carnet') : $operadores->carnet}}" id="carnet" placeholder="Número de carné">
                    <div class="invalid-feedback">
                        {{ $errors->first('carnet') }}
                    </div>
                </div>
            </div>
        </div><div class="form-group ml-5">
            <label for="fecha" class="col-sm-2 col-form-label">fecha</label>
            <div class="col-sm-7">
                <input type="date" name='fecha' class="form-control {{$errors->first('linkedin') ? "is-invalid" : "" }} " value="{{old('fecha') ? old('fecha') : $operadores->fecha}}" id="linkedin" placeholder="Fecha de alta">
                <div class="invalid-feedback">
                    {{ $errors->first('linkedin') }}
                </div>
            </div>
        </div><div class="form-group ml-5">
            <label for="estado" class="col-sm-2 col-form-label">Estado</label>
            <div class="col-sm-7">
                <label for="estado" class="col-sm-2 col-form-label">yes</label> <input type="radio" name='estado' class="form-control {{$errors->first('estado') ? "is-invalid" : "" }} " value="1" id="estado" placeholder="Indicador: Activa/Inactiva" {{$operadores->estado == 1 ? "checked" : ""}}>
                <label for="estado" class="col-sm-2 col-form-label">no</label> <input type="radio" name='estado' class="form-control {{$errors->first('estado') ? "is-invalid" : "" }} " value="0" id="estado" placeholder="Indicador: Activa/Inactiva" {{$operadores->estado == 0 ? "checked" : ""}} >
                <div class="invalid-feedback">
                    {{ $errors->first('linkedin') }}
                </div>
            </div>
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