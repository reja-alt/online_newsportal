@extends('layouts.admin_layout')

@section('content')

<main class="main-content">

    <div class="page-header">
        <div class="container-fluid d-sm-flex justify-content-between">
            <h4><a href="{{route('file.manager')}}">  File Manager </a></h4>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="{{route('home')}}">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">File Manager</li>
                </ol>
            </nav>
        </div>
    </div>
    <br>

      @php 
      $images = \File::allFiles(public_path('uploads/gallery'));
      @endphp


    <div class="pl-3 pr-3">
       <h1 >All Post</h1> 
        <div class="card">
            <div class="card-body">
            
                <table id="myTable" class="table  table-bordered" >
                    <thead>
                        <tr>
                            <th>SL</th>
                            <th>Image</th>
                            <th>Image Name</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                       @foreach($images as $row)
                        @php 
                        	$available=DB::table('image_galleries')->where('image',$row->getFilename())->first();
                        @endphp	
                        <tr>
                        	<td>
                        		<label class="checkbox checkbox-lg">
						           
						            <span></span>
						            
						        </label>
                        	</td>
                            <td> <img src="{{url('public/uploads/gallery/'.$row->getFilename())}}" width="100px;" hight="70px;" class="image"></td>
                            <td>{{$row->getFilename()}}</td>
                            <td>
                            	@if($available)
                            	 <span class="badge badge-success">Necessary</span>
                            	 @else
                            	 <span class="badge badge-danger">Unnecessary</span>
                            	 @endif
                            </td>
                            <td class="text-center">
                               <div class="btn-group" role="group" aria-label="Basic radio toggle button group">
								  <a class="btn btn-primary btn-sm" href="{{route('download.gallery.filemanager',$row->getFilename())}}"><i class="fa fa-download"></i></a>
								  <a class="btn btn-danger btn-sm delete-confirm" href="{{route('delete.gallery.filemanager',$row->getFilename())}}"><i class="fa fa-trash"></i></a>
							   </div>
                            </td>
                        </tr> 
                      	@endforeach
                    </tbody>
                    
                </table>
               
            </div>

        </div> 
    </div> 


    </div>
</main>









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


@endsection
