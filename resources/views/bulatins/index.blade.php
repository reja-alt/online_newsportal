@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">   
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Bulatins</h1> 
            <a href="{{ route('bulatin.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add Bulatin</a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Image</th>
                        <th >Title</th>
                        <th>Title Slug</th>
                        <th >Description</th>
                        <th>Writer Name</th>
                    </tr>
                </thead>
                <tbody>                        
                @foreach($bulatins as $bulatin)
                    <tr>
                        <td>{{ $bulatin->id }}</td>
                        <td><figure class="avatar">
                            <img src="{{url('public/uploads/post/'.$bulatin->image)}}" width=50px; height=50px; class="rounded-circle" alt="avatar">
                            </figure>
                        </td>
                        <td>{{ $bulatin->title }}</td>
                        <td>{{ $bulatin->title_slug }}</td>
                        <td>{{ $bulatin->description }}</td>
                        <td>{{ $bulatin->user->bangla_name }} | {{ $bulatin->user->english_name }}</td>
                        <td class="text-center">
                            <div class="btn-group" role="group" aria-label="Second group">
                                <a href="{{ route('bulatin.edit', $bulatin->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                <a href="bulatin/delete/{{$bulatin->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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

  
@endpush

