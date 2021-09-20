@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Subdistrict</h1> 
            <a href="{{ route('subdistrict.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add  Subdistricts
            </a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered">
                <thead>
                <tr>
                    <th>Id</th>
                    <th >Subdistrict Bangla Name</th>
                    <th>Subdistrict English Name</th>
                    <th>Division Bangla Name</th>
                    <th>District English Name</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                @foreach($subdistricts as $subdistrict)
                <tr>
                    <td>{{ $subdistrict->id }}</td>
                    <td>{{ $subdistrict->subdis_name_bn}}</td>
                    <td>{{ $subdistrict->subdis_name_en }}</td>
                    <td>{{ $subdistrict->div_name_en }}</td>
                    <td>{{ $subdistrict->dis_name_bn }}</td>
                    <td class="text-center">
                        <div class="btn-group" role="group" aria-label="Second group">
                        <a href="{{ route('subdistrict.edit', $subdistrict->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-xs fa-edit"></i></a>
                        <a href="subdistrict/delete/{{$subdistrict->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-xs fa-trash"></i></a>
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

