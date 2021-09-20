@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
<div class="card">

   <div class="card-body row">
   	<div class="col-lg-4"> 		
   		  <form class="form" action="{{route('report.year')}}" method="post">
            @csrf
            <div class="form-group">
             <label>Select Month</label>
             <div class="input-group">
              <select  class="form-control" name="year"> 
               <option value="2018">2018</option>
               <option value="2019">2019</option>
               <option value="2020">2020</option>
               <option value="2021">2021</option>
               <option value="2022">2022</option>
               <option value="2023">2023</option>
               <option value="2024">2024</option>
               <option value="2025">2025</option>
               <option value="2026">2026</option>
               <option value="2027">2027</option>
               <option value="2028">2028</option>
               <option value="2029">2029</option>
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
        <a href="{{ route('datewise.report') }}" class="btn btn-success btn-uppercase pull-right m-2" style="float: right;"><i class="fa fa-search mr-1"></i> Datewise Report</a>>
	      <a href="{{ route('post.create') }}" class="btn btn-success btn-uppercase pull-right m-2" style="float: right;"><i class="fa fa-search mr-1"></i> Datewise Report</a>
      </div>
   </div>
</div>

<div class=" m-2 card">
   <div class="card-body">

   	

      <table id="myTable" class="table table-striped table-bordered" >
         <thead>
             	@foreach($posts as $row)
         	<tr>
         	   <td>{{ $row->id }}</td>
               <td>{{ $row->title_en }}</td>
               <td>{{ $row->title_bn }}</td>
               <td> <img src="{{url('public/uploads/post/'.$row->image)}}"  class="image" style="height: 50px; width: 70px;"></td>
               <td>{{ \Carbon\Carbon::parse($row->created_at)->format('j F, Y')}}</td>
               <td>{{ $row->name_bn }}</td>
               <td>{{ $row->subcat_name_bn }}</td>
               <td>{{ $row->bangla_name }}</td>
               <td>@if($row->status == 1) 
                  <button type="submit" class="btn btn-sm btn-success" name="changeStatus" value="1">Active</button>
                  @else
                  <button type="submit" class="btn btn-sm btn-danger" name="changeStatus" value="0">Inactive</button>
                  @endif
               </td>
               <td class="text-center">
                  <div class="btn-group" role="group" aria-label="Second group">
                     <a href="{{ route('post.edit', $row->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                     <a href="post/delete/{{$row->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-trash"></i></a>
                  </div>
               </td>
         	</tr>
         	@endforeach
         </thead>
         <tbody>

         </tbody>
      </table>
   </div>
</div>
@endsection
