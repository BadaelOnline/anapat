@extends('layouts.admin')

@section('content')

@if (session('error'))
<div class="alert alert-danger">
    {{ session('error') }}
</div>
@endif

<form action="{{ route('admin.user.update',$user->id) }}" method="POST">
    @csrf

    <div class="form-groups">
        <div class="form-group col-md-4">
            <label for="name" class="col-sm-2 col-form-label">Name</label>
            <div class="col-sm-9">
                <input type="text" name='name' class="form-control {{$errors->first('name') ? "is-invalid" : "" }} " value="{{old('name') ? old('name') : $user->name}}" id="name" placeholder="Ex: Susi Similikiti">
                <div class="invalid-feedback">
                    {{ $errors->first('name') }}    
                </div>
            </div>
        </div>

          <div class="form-group col-md-4">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-9">
                <input type="email" name='email' class="form-control {{$errors->first('email') ? "is-invalid" : "" }} " value="{{old('email') ? old('email') : $user->email}}" id="email" placeholder="Email">
                <div class="invalid-feedback">
                    {{ $errors->first('email') }}
                </div>
            </div>
        </div>

        <div class="form-group col-md-4">
            <label for="email" class="col-sm-2 col-form-label">Role</label>
            <div class="col-sm-9">
                <input type="text" name='role' class="form-control {{$errors->first('role') ? "is-invalid" : "" }} " value="{{old('role') ? old('role') : $user->role}}" id="role" placeholder="Role">
                <div class="invalid-feedback">
                    {{ $errors->first('role') }}
                </div>
            </div>
        </div>

         {{-- <div class="form-group col-md-4">
            <label for="password" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-9">
                <input type="password" name='password' class="form-control {{$errors->first('password') ? "is-invalid" : "" }} " value="{{old('password') ? old('password') : $user->password}}" id="password" placeholder="Password">
                <div class="invalid-feedback">
                    {{ $errors->first('password') }}    
                </div>   
            </div>
        </div> --}}
   
        <div class="form-group col-md-12">
            <div class="col-sm-3">
                <button type="submit" class="btn btn-info">Update</button>
            </div>
        </div>
    </div>
  </form>
@endsection