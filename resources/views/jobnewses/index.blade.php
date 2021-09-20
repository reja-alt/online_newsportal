@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')   
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Job News</h1> 
            <a href="{{ route('jobnews.create') }}" class="btn btn-sm btn-outline-success " style="float: right;"><i class="fa fa-sm fa-plus"></i>Add Jobnews</a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered" >
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Image</th>
                        <th>Post Title Bangla</th>
                        <th>Post Title English</th>
                        <th>User English Name</th>
                        <th>User Bangla Name</th>
                        <th>Published Date </th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($jobnewses as $jobnew)
                    <tr>
                        <td>{{ $jobnew->id }}</td>
                        <td> <img src="{{url('public/uploads/jobpost/'.$jobnew->image)}}" width="100px;" hight="100px;" class="image"></td>
                        <td>{{ $jobnew->title_en }}</td>
                        <td>{{ $jobnew->title_bn }}</td>
                        <td>{{ $jobnew->bangla_name }}</td>
                        <td>{{ $jobnew->english_name }}</td>
                        <td>{{ \Carbon\Carbon::parse($jobnew->created_at)->diffForHumans()}}</td>
                        <td>@if($jobnew->status == 1) 
                        <button type="submit" class="btn btn-sm btn-success" name="changeStatus" value="1">Active</button>
                        @else
                        <button type="submit" class="btn btn-sm btn-danger" name="changeStatus" value="0">Inactive</button>
                        @endif</td>
                        <td class="text-center">
                            <div class="btn-group" role="group" aria-label="Second group">
                                <a href="{{ route('jobnews.edit', $jobnew->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                <a href="jobnews/delete/{{$jobnew->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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
