@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
<div class="card">

   <div class="card-body row">
   	<div class="col-lg-4"> 		
   		  <form class="form" action="{{route('report.month')}}" method="post">
            @csrf
            <div class="form-group">
             <label>Select Month</label>
             <div class="input-group">
              <select  class="form-control" name="month"> 
               <option value="January">January</option>
               <option value="February">February</option>
               <option value="March">March</option>
               <option value="April">April</option>
               <option value="May">May</option>
               <option value="June">June</option>
               <option value="July">July</option>
               <option value="August">August</option>
               <option value="Sepetember">Sepetember</option>
               <option value="October">October</option>
               <option value="November">November</option>
               <option value="December">December</option>
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
