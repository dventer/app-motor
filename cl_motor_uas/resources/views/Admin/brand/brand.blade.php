@extends('Admin.layout.content.index')
@section('content')
<section class="section">
    <div class="section-header">
      <h1>Brand</h1>
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="{{route('index.dashboard')}}">Dashboard</a></div>
        <div class="breadcrumb-item">Brand</div>
      </div>
    </div>
    <div class="section-body">
      <div class="col-12 col-md-6 col-lg-12 mb-3">
        <button data-toggle="modal" type="button"
        data-target="#exampleModalCenter" class="btn btn-outline-info col-12 col-md-6 col-lg-12" style="border-radius: 10px;">Buat Brand</button>
      </div>
      <!-- add content here -->
      <div class="col-12 col-md-6 col-lg-12">
        <div class="row">
          @foreach($brand as $brands)
          <div class="col-12 col-md-6 col-lg-4">
            <div class="card card-info">
              <div class="card-header">
                <h4>{{$brands->nama_brand}}</h4>
                <div class="card-header-action">
                  <div class="dropdown">
                    <a href="#" data-toggle="dropdown" class="btn btn-warning dropdown-toggle">Options</a>
                    <div class="dropdown-menu">
                      <a data-toggle="modal" type="button"
                      data-target="#edit_{{$brands->id}}" href="#" class="dropdown-item has-icon"><i class="far fa-edit"></i> Edit</a>
                      <div class="dropdown-divider"></div>
                      <a href="{{route('delete.kategori', $brands->id)}}" class="dropdown-item has-icon text-danger"><i class="far fa-trash-alt"></i>
                        hapus</a>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-body">
                <p>Write something here</p>
              </div>
            </div>
         
          </div>
          @endforeach
        </div>
      </div>
      
    </div>

  </section>
  {{-- start create kategori --}}
  <!-- Vertically Center -->
  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
  aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Buat Brand</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="{{route('create.brand')}}" method="post">
          @csrf
          <div class="form-group">
            <label>Nama Brand</label>
            <input type="text" class="form-control" name="nama_brand">
          </div>
        </div>
        <div class="modal-footer bg-whitesmoke br">
          <button type="submit" class="btn btn-primary">Buat</button>
        </form>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Keluar</button>
      </div>
    </div>
  </div>
  </div>
  {{-- end create kategori --}}
  
  {{-- start edit kategori --}}
  <!-- Vertically Center -->
 
  <div class="modal fade" id="edit_" tabindex="-1" role="dialog"
  aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">Buat Kategori</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="" method="post">
          @csrf
          <div class="form-group">
            <label>Edit Kategori</label>
            <input type="text" class="form-control" name="update_nama_kategori">
          </div>
        </div>
        <div class="modal-footer bg-whitesmoke br">
          <button type="submit" class="btn btn-primary">Update</button>
        </form>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Keluar</button>
      </div>
    </div>
  </div>
  </div>

  {{-- end edit kategori --}}

@endsection