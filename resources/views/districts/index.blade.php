@extends('layouts.admin_layout')
@push('styles')

@endpush

@section('content')
    <div class="container p-10">
        <div class="card">
            <div class="card-body">
                <h1 style="margin-bottom: -25px">All Districts</h1> 
                <a href="{{ route('district.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add District</a>
            </div>
        </div>
        <div class="card">
          <div class="card-body">
              <table id="myTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th >District Bangla Name</th>
                        <th>District English Name</th>
                        <th>Division English Name</th>
                        <th>Division English Name</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($districts as $district)
                        <tr>
                            <td>{{ $district->id }}</td>
                            <td>{{ $district->name_bn }}</td>
                            <td>{{ $district->name_en }}</td>
                            <td>{{ $district->divisions->name_bn}}</td>
                            <td> {{ $district->divisions->name_en}}</td>
                            <td class="text-center">
                              <div class="btn-group" role="group" aria-label="Second group">
                                  <a href="{{ route('district.edit', $district->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                  <a href="district/delete/{{$district->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
                                </div>
                            </td>
                        </tr> 
                    @endforeach
                  
                </tbody>
              </table>
          </div>
      </div>
    </div>  
@endsection

@push('scripts')
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script type="text/javascript">
   $('.delete-confirm').on('click', function (event) {
    event.preventDefault();
    const url = $(this).attr('href');
    swal({
        title: 'Are you sure?',
        text: 'This record and it`s details will be permanantly deleted!',
        icon: 'warning',
        buttons: ["Cancel", "Yes!"],
    }).then(function(value) {
        if (value) {
            window.location.href = url;
        }
    });
});
</script>

   <script>
   $(document).ready(function (){
    $('#myTable').DataTable({
        "scrollY": "400px",
        "scrollCollapse": true
    });
});
  </script>
  
@endpush

