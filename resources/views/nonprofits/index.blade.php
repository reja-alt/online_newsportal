@extends('layouts.admin_layout')

@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Nonprofit News</h1> 
            <a href="{{ route('nonprofit.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add Nonprofit News</a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered" >
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Image</th>
                        <th>Title Bangla</th>
                        <th>Title English</th>
                        <th>Amount</th>
                        <th>End Date </th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody> 
                    @foreach($nonprofits as $nonprofit)
                    <tr>
                        <td>{{ $nonprofit->id }}</td>
                        <td> <img src="{{url('public/uploads/post/'.$nonprofit->image)}}" width="100px;" hight="100px;" class="image"></td>
                        <td>{{ $nonprofit->title_en }}</td>
                        <td>{{ $nonprofit->title_bn }}</td>
                        <td>{{ $nonprofit->amount }}</td>
                        <td>{{ \Carbon\Carbon::parse($nonprofit->end_date)->format('j F, Y')}}</td>
                        <td class="text-center">
                            <div class="btn-group" role="group" aria-label="Second group">
                                <a href="{{ route('nonprofit.edit', $nonprofit->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                <a href="nonprofit/delete/{{$nonprofit->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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

@endpush
