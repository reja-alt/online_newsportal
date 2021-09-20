@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
    <div class="container p-10">
        <div class="card">
            <div class="card-body">
                <h1 style="margin-bottom: -25px">All News</h1> 
                <a href="{{ route('bdcovid19.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add News</a>
            </div>
        </div>
        <div class="card">
            <div class="card-body">    
                <table id="myTable" class="table table-striped table-bordered" >
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Cases In Bangla</th>
                            <th>Cases In English</th>
                            <th>Death In Bangla</th>
                            <th>Death In English</th>
                            <th>Cure In Bangla</th>
                            <th>Cure In English</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($covid19s as $covid19)
                        <tr>
                            <td>{{ $covid19->id }}</td>
                            <td>{{ $covid19->cases_bn }}</td>
                            <td>{{ $covid19->cases_bn }}</td>
                            <td>{{ $covid19->death_bn }}</td>
                            <td>{{ $covid19->death_en }}</td>
                            <td>{{ $covid19->cure_bn }}</td>
                            <td>{{ $covid19->cure_en }}</td>
                            <td>
                                @if($covid19->status == 1)            
                                    <button type="submit" class="btn btn-sm btn-success" name="changeStatus" value="1">Active</button>                             
                                @else                                       
                                <button type="submit" class="btn btn-sm btn-danger" name="changeStatus" value="0">Inactive</button>                                                            
                                @endif</td>
                            <td class="text-center">
                                <div class="btn-group" role="group" aria-label="Second group">
                                    <a href="{{route('bdcovid19.edit',$covid19->id)}}" class="btn btn-sm btn-success" id="edit-category" ><i class="fa fa-sm fa-edit"></i></button>
                                @if(Session::has('messege'))
                                    Toastr::success('Successfully Registered','Success');
                                @endif
                                <a href="bdcovid19/delete/{{$covid19->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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
