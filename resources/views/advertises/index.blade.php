@extends('layouts.admin_layout')

@push('styles')
@endpush
@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Advertises</h1> 
            <a href="{{ route('advertise.create') }}" class="btn btn-sm btn-outline-success pull-right" style="float: right;"><i class="fa fa-sm fa-plus"></i>Add Advertise</a>
        </div>
    </div>
      <div class="card">
          <div class="card-body">    
              <table id="myTable" class="table table-striped table-bordered" >
                  <thead>
                      <tr>
                          <th>Id</th>
                          <th>Advertise Type</th>
                          <th>Advertise Code</th>
                          <th>Image</th>
                          <th>Status</th>
                          <th>Action</th>
                      </tr>
                  </thead>
                  <tbody>
                        @foreach($advertises as $advertise)
                        <tr>
                            <td>{{ $advertise->id }}</td>
                            <td>
                                @if($advertise->ads_type == 1) 
                                    <button  class="btn  btn-sm btn-success"  value="1">Google Ads</button>
                                @elseif($advertise->ads_type == 2) 
                                    <button  class="btn btn-sm btn-primary"  value="2">Vertical Ads</button>
                                @elseif($advertise->ads_type == 3) 
                                    <button  class="btn btn-sm btn-info"  value="2">Horizontal Ads</button>   
                                @endif
                            </td>
                            <td>{{ $advertise->ads_code }}</td>
                            <td><img src="{{asset('public/uploads/ads')}}/{{$advertise->ads_image}}" style="width: 80px; height: 40px;"   class="ads_image"></td>
                            <td>
                                @if($advertise->ads_status == 1) 
                                    <button  class="btn btn-sm btn-success" name="changeStatus">Active</button>
                                @else
                                    <button class="btn btn-sm btn-danger" name="changeStatus">Inactive</button>
                                @endif
                            </td>
                            <td class="text-center">
                                <div class="btn-group" role="group" aria-label="Second group">
                                  <a href="{{route('advertise.edit',$advertise->id)}}" class="btn btn-sm btn-success" id="edit-Advertise" ><i class="fa fa-sm fa-edit"></i></button>
                                        @if(Session::has('messege'))
                                              Toastr::success('Successfully Registered','Success');
                                        @endif
                                    <a href="advertise/delete/{{$advertise->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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

@endpush
