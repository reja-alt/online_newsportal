@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Division</h1> 
            <a href="{{ route('division.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add Division</a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered">
                <thead>
                <tr>
                    <th>Id</th>
                    <th >Division Bangla Name</th>
                    <th>Division English Name</th>
                </tr>
                </thead>
                <tbody>
                    @foreach($divisions as $division)
                        <tr>
                            <td>{{ $division->id }}</td>
                            <td>{{ $division->name_bn }}</td>
                            <td>{{ $division->name_en }}</td>
                            {{-- <td class="text-center">
                                <div class="btn-group" role="group" aria-label="Second group">
                                    <a href="{{ route('division.edit', $division->id) }}" class="btn btn-xs btn-primary" disabled><i class="fa fa-xs fa-edit"></i></a>
                                    <a href="division/delete/{{$division->id}}" class="btn btn-xs btn-danger delete-confirm" disabled><i class="fa fa-xs fa-trash"></i></a>
                                </div>
                            </td> --}}
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

