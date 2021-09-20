@extends('layouts.admin_layout')
@push('styles')

@endpush
@section('content')
<div class="separator separator-dashed mt-6 mb-5"></div>
<div class="card">
  <div class="card-body">
  
  <a href="{{ route('writer.post.create') }}" class="btn btn-primary pull-right" style="float: right;">Add Post</a>
  <h1 >ALL POST</h1>
  </div>
</div>

<div class="card">
  <div class="card-body">
  
    <table id="myTable" class="table table-striped table-bordered" >
  <thead>
    <tr>
      <th>Id</th>
      <th>Post Title English</th>
      <th>Post Title Bangla</th>
      <th>Image</th>
     <th>Published Date </th>
      <th>Category Bangla Name</th>
      <th>Subategory Bangla Name</th>
      <th>User English Name</th>
      <th>Status</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
    
    @foreach($posts as $post)
    <tr>
    <td>{{ $post->id }}</td>
    <td>{{ $post->title_en }}</td>
    <td>{{ $post->title_bn }}</td>
    <td> <img src="{{url('uploads/post/'.$post->image)}}" class="image" style="height: 50px; width: 70px;"></td>
    <td>{{ \Carbon\Carbon::parse($post->created_at)->format('j F, Y')}}</td>
    <td>{{ $post->name_bn }}</td>
    <td>{{ $post->subcat_name_bn }}</td>
    <td>{{ $post->bangla_name }}</td>
    
    <td>@if($post->status == 1) 
                                 
   <button type="submit" class="btn btn-sm btn-success" name="changeStatus" value="1">Active</button>
                                                
   @else
                                                         
  <button type="submit" class="btn btn-sm btn-danger" name="changeStatus" value="0">Inactive</button>
                                                                              
  @endif</td>
    
    <td class="text-center">
            <div class="btn-group" role="group" aria-label="Second group">
            
                <a href="{{ route('post.edit', $post->id) }}" class="btn btn-xs btn-primary"><i class="fa fa-edit"></i></a>
                
               
                <a href="post/delete/{{$post->id}}" class="btn btn-xs btn-danger delete-confirm"><i class="fa fa-trash"></i></a>
            </div>
        </td>
    </tr> 
    
    @endforeach
    ...
  </tbody>
</table>
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
