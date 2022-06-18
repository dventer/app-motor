@extends('Admin.layout.content.index')
@section('content')
<section class="section">
    <div class="section-header">
      {{-- <h1>UAS</h1> --}}
      <div class="section-header-breadcrumb">
        <div class="breadcrumb-item active"><a href="#">Dashboard</a></div>
        <div class="breadcrumb-item"><a href="#">Extra</a></div>
        <div class="breadcrumb-item">Blank Page</div>
      </div>
    </div>
    <div class="section-body">
      {{-- <div class="col-12 col-md-6 col-lg-12 mb-3">
        <button data-toggle="modal" type="button"
        data-target="#exampleModalCenter" class="btn btn-outline-info col-12 col-md-6 col-lg-12" style="border-radius: 10px;">Buat Brand</button>
      </div> --}}
      <!-- add content here -->
      <div class="row">
      <div class="col-12 col-md-6 col-lg-6">
        <div class="card">
          <div class="card-header">
            <h4>Cari Motor</h4>
          </div>
          <div class="card-body">
            
            <div class="form-group">
              <label>Type</label>
              <select id="type" class="form-control">
                <option>== Pilih Type ==</option>
                @foreach($type as $types)
                <option value="{{$types->id}}">{{$types->nama_motor}}</option>
                @endforeach
              </select>
            </div>
            <div class="form-group">
              <label>Tahun</label>
              <select id="tahun" class="form-control">
                <option>== Pilih Tahun ==</option>
                @foreach($tahun as $tah)
                <option value="{{$tah->id}}">{{$tah->tahun}}</option>
                @endforeach
              </select>
            </div>
          </div>
          <div class="card-footer text-right">
            <button class="btn btn-primary mr-1" id="cari__" onclick="cari();" type="submit">Cari</button>
          </div>
        </div>
      </div>

      <div class="col-12 col-md-6 col-lg-6">
        <div class="card">
          <div class="card-header">
            <h4>Hasil</h4>
          </div>
          <div class="card-body">
          <div id="show">
            .....
          </div>
          </div>
        </div>
      </div>
      </div>
    </div>
</section>

<script>

  function cari(){
    let tahun = $('#tahun').val();
    let type = $('#type').val();
    let dataHtml = "";

    var SendData = {
                        tahun: tahun,
                        type: type,
                        _token: "{{ csrf_token() }}"
                    }
                    // console.log(SendData)
                    $.ajax({
                    url: "{{route('cari')}}",
                    type: 'post',
                    dataType: 'json',
                    data: JSON.stringify(SendData),
                    contentType: 'application/json',
                    success: function(response) {
                      console.log(response)
                      if(response.status == '200'){
                        for (var data of response.hasil) 
                          {
                            dataHtml += ` <div style="background-color:aqua; margin:10px;"> Type Motor `+ data.type.nama_motor +` </br>
                            Brand Motor `+ data.type.brand.nama_brand +`</br> 
                            Nama Dealer `+ data. dealer.nama_dealer+`
                            </br> 
                            Lokasi Dealer ` + data.dealer.alamat +`</br>
                            Harga Motor Rp. `+ data.harga+` rupiah </br>
                            </div></br>
                            `;
                          }
                        } else{
                          dataHtml = `<h3>Data tidak ditemukan</h3>`;
                        }
                        $("#show").html(dataHtml);
                        }
              });
                    
  }

</script>
@endsection