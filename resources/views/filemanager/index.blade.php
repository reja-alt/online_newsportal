@extends('layouts.admin_layout')

@section('content')

<main class="main-content">

    <div class="page-header">
        <div class="container-fluid d-sm-flex justify-content-between">
            <h4>File Manager</h4>
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




    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-2 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="{{route('filemanager.post')}}">
                                <span class="svg-icon svg-icon-primary svg-icon-6x text-center">
                                	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <path d="M3.5,21 L20.5,21 C21.3284271,21 22,20.3284271 22,19.5 L22,8.5 C22,7.67157288 21.3284271,7 20.5,7 L10,7 L7.43933983,4.43933983 C7.15803526,4.15803526 6.77650439,4 6.37867966,4 L3.5,4 C2.67157288,4 2,4.67157288 2,5.5 L2,19.5 C2,20.3284271 2.67157288,21 3.5,21 Z" fill="#000000"/>
                                    </g>
                                </svg></span>
                                <div class="text-center"> Posts</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="{{route('filemanager.election')}}">
                                <span class="svg-icon svg-icon-primary svg-icon-6x text-center">
                                	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <path d="M3.5,21 L20.5,21 C21.3284271,21 22,20.3284271 22,19.5 L22,8.5 C22,7.67157288 21.3284271,7 20.5,7 L10,7 L7.43933983,4.43933983 C7.15803526,4.15803526 6.77650439,4 6.37867966,4 L3.5,4 C2.67157288,4 2,4.67157288 2,5.5 L2,19.5 C2,20.3284271 2.67157288,21 3.5,21 Z" fill="#000000"/>
                                    </g>
                                </svg></span>
                                <div class="text-center">Election Posts</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="{{route('filemanager.gallery')}}">
                               <span class="svg-icon svg-icon-primary svg-icon-6x text-center">
                                   	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                       <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                           <rect x="0" y="0" width="24" height="24"/>
                                           <path d="M3.5,21 L20.5,21 C21.3284271,21 22,20.3284271 22,19.5 L22,8.5 C22,7.67157288 21.3284271,7 20.5,7 L10,7 L7.43933983,4.43933983 C7.15803526,4.15803526 6.77650439,4 6.37867966,4 L3.5,4 C2.67157288,4 2,4.67157288 2,5.5 L2,19.5 C2,20.3284271 2.67157288,21 3.5,21 Z" fill="#000000"/>
                                       </g>
                                   </svg></span>
                                <div class="text-center">Photo Gallery</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-2 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="{{route('filemanager.job')}}">
                               <span class="svg-icon svg-icon-primary svg-icon-6x text-center">
                                	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <path d="M3.5,21 L20.5,21 C21.3284271,21 22,20.3284271 22,19.5 L22,8.5 C22,7.67157288 21.3284271,7 20.5,7 L10,7 L7.43933983,4.43933983 C7.15803526,4.15803526 6.77650439,4 6.37867966,4 L3.5,4 C2.67157288,4 2,4.67157288 2,5.5 L2,19.5 C2,20.3284271 2.67157288,21 3.5,21 Z" fill="#000000"/>
                                    </g>
                                </svg></span>
                                <div class="text-center">Job Post</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div> 
 
            <div class="col-lg-2 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="{{route('filemanager.writer')}}">
                                <span class="svg-icon svg-icon-primary svg-icon-6x text-center">
                                	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <path d="M3.5,21 L20.5,21 C21.3284271,21 22,20.3284271 22,19.5 L22,8.5 C22,7.67157288 21.3284271,7 20.5,7 L10,7 L7.43933983,4.43933983 C7.15803526,4.15803526 6.77650439,4 6.37867966,4 L3.5,4 C2.67157288,4 2,4.67157288 2,5.5 L2,19.5 C2,20.3284271 2.67157288,21 3.5,21 Z" fill="#000000"/>
                                    </g>
                                </svg></span>
                                <div class="text-center">Writer</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
             <div class="col-lg-2 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <a href="{{route('filemanager.ads')}}">
                                <span class="svg-icon svg-icon-primary svg-icon-6x text-center">
                                	<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <path d="M3.5,21 L20.5,21 C21.3284271,21 22,20.3284271 22,19.5 L22,8.5 C22,7.67157288 21.3284271,7 20.5,7 L10,7 L7.43933983,4.43933983 C7.15803526,4.15803526 6.77650439,4 6.37867966,4 L3.5,4 C2.67157288,4 2,4.67157288 2,5.5 L2,19.5 C2,20.3284271 2.67157288,21 3.5,21 Z" fill="#000000"/>
                                    </g>
                                </svg></span>
                                <div class="text-center">Advertisements</div>
                            </a>
                        </div>
                    </div>
                </div>
            </div> 
        </div><br>
      </div>

      {{-- All file manager post --}}
      @php 
      $images = \File::allFiles(public_path('uploads/post'));
      @endphp


    <div class="p-8">
       <h1 >All Post</h1> 
        <div class="card">
            <div class="card-body">
            	<form action="{{route('filemanager.post.delete')}}" method="post" onSubmit="return confirm('Are you sure you wish to delete?');">
                  	@csrf
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
                        	$available=DB::table('posts')->where('image',$row->getFilename())->first();
                        @endphp	
                        <tr>
                        	<td>
                        		<label class="checkbox checkbox-lg">
						            <input type="checkbox" name="id[]" value="{{$row->getFilename()}}" />
						            <span></span>
						            
						        </label>
                        	</td>
                            <td> <img src="{{url('public/uploads/post/'.$row->getFilename())}}" width="100px;" hight="70px;" class="image"></td>
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
								  <a class="btn btn-primary btn-sm" href="{{route('download.post.filemanager',$row->getFilename())}}"><i class="fa fa-download"></i></a>
								  <a class="btn btn-danger btn-sm delete-confirm" href="{{route('delete.post.filemanager',$row->getFilename())}}"><i class="fa fa-trash"></i></a>
							   </div>
                            </td>
                        </tr> 
                      	@endforeach
                    </tbody>
                    
                </table>
                <button type="submit" class="btn btn-danger btn-sm">Delete Selected</button> 
             </form>
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
