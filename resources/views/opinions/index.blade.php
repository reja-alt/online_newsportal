@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Opinion News</h1> 
            <a href="{{ route('opinions.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add Opinion News</a>
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
                    @foreach($opinions as $opinion)
                    <tr>
                        <td>{{ $opinion->id }}</td>
                        <td> <img src="{{url('public/uploads/post/'.$opinion->image)}}" width="100px;" hight="100px;" class="image"></td>
                        <td>{{ $opinion->title_en }}</td>
                        <td>{{ $opinion->title_bn }}</td>
                        <td>{{ $opinion->bangla_name }}</td>
                        <td>{{ $opinion->english_name }}</td>
                        <td>{{ \Carbon\Carbon::parse($opinion->created_at)->diffForHumans()}}</td>
                        <td>@if($opinion->status == 1) 
                            <button type="submit" class="btn btn-sm btn-success" name="changeStatus" value="1">Active</button>
                            @else
                            <button type="submit" class="btn btn-sm btn-danger" name="changeStatus" value="0">Inactive</button>
                            @endif</td>
                        <td class="text-center">
                            <div class="btn-group" role="group" aria-label="Second group">
                            
                                <a href="{{ route('opinions.edit', $opinion->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                
                                
                                <a href="opinions/delete/{{$opinion->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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
