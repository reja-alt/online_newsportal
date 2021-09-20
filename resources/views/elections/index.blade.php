@extends('layouts.admin_layout')

@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Election</h1> 
            <a href="{{ route('election.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add Election</a>
        </div>
    </div>
        <div class="card">
            <div class="card-body">
                <table id="myTable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Image</th>
                            <th >Title English</th>
                            <th >Title Bangla</th>
                            <th >published Date</th>
                            <th>Writer Name</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($elections as $election)
                          <tr>
                              <td>{{ $election->id }}</td>
                              <td><figure class="avatar">
                                  <img src="{{url('public/uploads/election/'.$election->image)}}" width=50px; height=50px; class="rounded-circle" alt="avatar">
                                  </figure>
                              </td>
                              <td>{{ $election->title_en }}</td>
                              <td>{{ $election->title_bn }}</td>
                              <td>{{ \Carbon\Carbon::parse($election->created_at)->format('j F, Y')}}</td>
                              <td>{{ $election->users->bangla_name }} | {{ $election->users->english_name }}</td>
                              <td class="text-center">
                                  <div class="btn-group" role="group" aria-label="Second group">
                                      <a href="{{ route('election.edit', $election->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                      <a href="election/delete/{{$election->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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

