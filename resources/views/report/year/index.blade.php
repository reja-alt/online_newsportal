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

         </tbody>
      </table>
   </div>
</div>
@endsection
