@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th >Access Area</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($role as $row)
                    <tr>
                        <td>{{ $row->bangla_name }}</td>
                        <td>{{ $row->email }}</td>
                        <td>
                        	@if($row->role_category==1)
                        	<span class="badge badge-info">Category</span>
                        	@else @endif

                        	@if($row->role_division==1)
                        	<span class="badge badge-info">Division</span>
                        	@else @endif

                        </td>
                      	<td>
                      		<a href="{{route('admin.role.edit',$row->id)}}" class="btn btn-ms btn-primary"><i class="far fa-edit"></i></a>
                      		<a href="{{route('admin.role.delete',$row->id)}}" class="btn btn-ms btn-danger delete-confirm" ><i class="far fa-trash-alt"></i></a>
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

@endpush

