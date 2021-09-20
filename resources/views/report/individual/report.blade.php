@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
<div class="card">
@php 
 $user=DB::table('users')->get();
@endphp
   <div class="card-body row">
   	<div class="col-lg-4"> 		
   		  <form class="form" action="{{route('report.individual')}}" method="post">
            @csrf
            <div class="form-group">
             <label>Select Month</label>
             <div class="input-group">
              <select  class="form-control" name="user_id"> 
              @foreach($user as $row)
               <option value="{{$row->id}}">{{$row->bangla_name}}</option>
               @endforeach
              </select>
              <div class="input-group-append">
               <button type="submit" class="btn btn-primary mr-2">Submit</button>
              </div>
             </div>
           </div>
          </form>
   	
   	</div>
   	 <div class="col-lg-8">
	       <a href="{{ route('daily.report') }}" class="btn btn-success btn-uppercase pull-right m-2" style="float: right;"><i class="fa fa-search mr-1"></i> Daily Report</a>
        <a href="{{ route('monthly.report') }}" class="btn btn-success btn-uppercase pull-right m-2" style="float: right;"><i class="fa fa-search mr-1"></i> Monthly Report</a>
        <a href="{{ route('yearly.report') }}" class="btn btn-success btn-uppercase pull-right m-2" style="float: right;"><i class="fa fa-search mr-1"></i> Yearly Report</a>
        <a href="{{ route('individual.report') }}" class="btn btn-success btn-uppercase pull-right m-2" style="float: right;"><i class="fa fa-search mr-1"></i> Individual Report</a>
        <a href="{{ route('datewise.report') }}" class="btn btn-success btn-uppercase pull-right m-2" style="float: right;"><i class="fa fa-search mr-1"></i> Datewise Report</a>
      </div>
   </div>
</div>

<div class=" m-2 card">
   <div class="card-body">

   	

      <table id="myTable" class="table table-striped table-bordered" >
         <thead>
            <tr>
               <th>Id</th>
               <th>Post Title English </th>
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
         	   <td> <img src="{{url('public/uploads/post/'.$post->image)}}"  class="image" style="height: 50px; width: 70px;"></td>
         	   <td>{{ \Carbon\Carbon::parse($post->created_at)->format('j F, Y')}}</td>
         	   <td>{{ $post->name_bn }}</td>
         	   <td>{{ $post->subcat_name_bn }}</td>
         	   <td>{{ $post->bangla_name }}</td>
         	   <td>@if($post->status == 1) 
         	      <button type="submit" class="btn btn-sm btn-success" name="changeStatus" value="1">Active</button>
         	      @else
         	      <button type="submit" class="btn btn-sm btn-danger" name="changeStatus" value="0">Inactive</button>
         	      @endif
         	   </td>
         	   <td class="text-center">
         	      <div class="btn-group" role="group" aria-label="Second group">
         	         <a href="{{ route('post.edit', $post->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
         	         <a href="post/delete/{{$post->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-trash"></i></a>
         	      </div>
         	   </td>
         	</tr>
         	@endforeach
         </tbody>
      </table>
   </div>
</div>
@endsection
