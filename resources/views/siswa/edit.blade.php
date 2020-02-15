@extends('layouts.master')

@section('content')
    <div class="main">
        <div class="main-content">
            <div class="content-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel">
                            <div class="panel-heading">
                                <h2 class="panel-title">Edit Data Siswa</h2>
                            </div>
                            <div class="panel-body">
                                <form action="/siswa/{{$siswa->id}}/update" method="POST">
                                    {{ csrf_field() }}
                                    <div class="form-group">
                                    <label for="exampleInputEmail1">Nama Depan</label>
                                    <input name="nama_depan" value="{{$siswa->nama_depan}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Nama Belakang</label>
                                        <input name="nama_belakang" value="{{$siswa->nama_belakang}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    </div>
                
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Jenis Kelamin</label>
                                        <select name="jenis_kelamin" class="form-control" id="exampleFormControlSelect1">
                                        <option value="L" @if($siswa->jenis_kelamin == 'L') selected @endif>Laki - Laki</option>
                                        <option value="P" @if($siswa->jenis_kelamin == 'P') selected @endif>Perempuan</option>
                                        </select>
                                    </div>
                
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Agama</label>
                                        <input name="agama" value="{{$siswa->agama}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                    </div>        
                
                                <div class="form-group">
                                    <label for="exampleFormControlTextarea1">Alamat</label>
                                <textarea name="alamat" class="form-control" id="exampleFormControlTextarea1" rows="3">{{$siswa->alamat}}</textarea>
                                </div>
                            
                                    <button type="submit" class="btn btn-warning">Update</button>
                                </form> 
                            </div>
                        </div> 
                    </div>
                </div>  
            </div>
        </div>
    </div>
@stop

@section('content1')
        @if(session('sukses'))
        <div class="alert alert-success" role="alert">
            {{ session('sukses') }}
          </div>
          @endif
        <div class="row">
            <h1> Edit Data Siswa </h1>
            <div class="col-md-12">
                <form action="/siswa/{{$siswa->id}}/update" method="POST">
                    {{ csrf_field() }}
                    <div class="form-group">
                    <label for="exampleInputEmail1">Nama Depan</label>
                    <input name="nama_depan" value="{{$siswa->nama_depan}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Nama Belakang</label>
                        <input name="nama_belakang" value="{{$siswa->nama_belakang}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>

                    <div class="form-group">
                        <label for="exampleFormControlSelect1">Jenis Kelamin</label>
                        <select name="jenis_kelamin" class="form-control" id="exampleFormControlSelect1">
                        <option value="L" @if($siswa->jenis_kelamin == 'L') selected @endif>Laki - Laki</option>
                        <option value="P" @if($siswa->jenis_kelamin == 'P') selected @endif>Perempuan</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="exampleInputEmail1">Agama</label>
                        <input name="agama" value="{{$siswa->agama}}" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>        

                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Alamat</label>
                <textarea name="alamat" class="form-control" id="exampleFormControlTextarea1" rows="3">{{$siswa->alamat}}</textarea>
                </div>
            
                    <button type="submit" class="btn btn-warning">Update</button>
                </form> 
            </div>
        </div>
@endsection

