@extends('layouts.admin_layout')
@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Prayer</h1> 
            <a href="{{ route('prayer.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add  Prayers
            </a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Prayer Bangla Name</th>   
                        <th>Prayer English Name</th>
                        <th>Prayer Time Start</th>
                        <th>Prayer Time End</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($prayers as $prayer)
                    <tr>
                        <td>{{ $prayer->id }}</td>
                        <td>{{ $prayer->prayer_name_bn }}</td>
                        <td>{{ $prayer->prayer_name_en }}</td>
                        <td>{{ \Carbon\Carbon::parse($prayer->time_satrt)->format('HH:MM')}}</td>
                        <td>{{ \Carbon\Carbon::parse($prayer->time_end)->format('H, M')}}</td>
                        <td>@if($prayer->status == 1) 
                                <button type="submit" class="btn btn-sm btn-success" name="changeStatus" value="0">Active</button>
                            @else
                                <button type="submit" class="btn btn-sm btn-danger" name="changeStatus" value="1">Inactive</button>
                            @endif
                        </td>
                        <td class="text-center">
                            <div class="btn-group" role="group" aria-label="Second group">
                                <a href="{{ route('prayer.edit', $prayer->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                <a href="prayer/delete/{{$prayer->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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
