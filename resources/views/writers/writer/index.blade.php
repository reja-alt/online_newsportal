@extends('layouts.admin_layout')
@push('styles')
@endpush
@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Image</th>
                        <th >Writer Bangla Name</th>
                        <th>Writer English Name</th>
                        <th >Category Name</th>
                        <th>Email </th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($users as $user)
                    <tr>
                        <td>{{ $user->id }}</td>
                        <td><figure class="avatar">
                        <img src="{{url('uploads/post/'.$user->image)}}" width=50px; height=50px; class="rounded-circle" alt="avatar">
                        </figure></td>
                        <td>{{ $user->bangla_name }}</td>
                        <td>{{ $user->english_name }}</td>
                        <td>{{ $user->name_bn }}</td>
                        <td>{{ $user->email }}</td>
                        <td>
                        @if($user->status == 1) 
                            <button type="submit" class="btn btn-success" name="changeStatus" value="1">Active</button>
                        @else
                            <button type="submit" class="btn btn-default" name="changeStatus" value="0">Inactive</button>
                        @endif
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

