@extends('layouts.admin_layout')

@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Images</h1> 
            <a href="{{ route('image-gallery.create') }}" class="btn btn-sm btn-outline-success pull-right" style="float: right;" ><i class="fa fa-sm fa-plus"></i>Add Image</a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered" >
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Image</th>
                        <th>Title</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($datas as $data)
                    <tr>
                        <td>{{ $data->id }}</td>
                        <td> <img src="{{url('public/uploads/gallery/'.$data->image)}}" width="100px;" hight="100px;" class="image"></td>
                        <td>{{ $data->title }}</td>
                        <td>{{ $data->description }}</td>
                        <td class="text-center">
                            <div class="btn-group" role="group" aria-label="Second group">
                                <a href="{{ route('image-gallery.edit', $data->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                <a href="image-gallery/delete/{{$data->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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
