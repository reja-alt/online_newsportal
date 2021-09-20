@extends('layouts.admin_layout')
@push('styles')

@endpush
@section('content')
<div class="container p-10">
    <div class="card">
        <div class="card-body">
            <h1 style="margin-bottom: -25px">All Subcategories</h1> 
            <a href="{{ route('subcategory.create') }}" class="btn btn-sm btn-outline-success pull-right"><i class="fa fa-sm fa-plus"></i>Add  Subcategory
            </a>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <table id="myTable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Subcategory Bangla Name</th>   
                            <th>Subcategory English Name</th>
                            <th>Category Bangla Name</th>
                            <th>Category English Name</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($subcategories as $subcategory)
                        <tr>
                            <td>{{ $subcategory->id }}</td>
                            <td>{{ $subcategory->name_bn }}</td>
                            <td>{{ $subcategory->name_en }}</td>
                            <td>{{ $subcategory->category->name_bn }}</td>
                            <td>{{ $subcategory->category->name_en }}</td>
                            <td>@if($subcategory->show_on_header == 1) 
                            <button type="submit" class="btn btn-sm btn-success" name="changeStatus" value="0">Active</button>
                            @else
                            <button type="submit" class="btn btn-sm btn-danger" name="changeStatus" value="1">Inactive</button>
                            @endif</td>
                            <td class="text-center">
                                <div class="btn-group" role="group" aria-label="Second group">
                                        <a href="{{ route('subcategory.edit', $subcategory->id) }}" class="btn btn-sm btn-primary"><i class="fa fa-sm fa-edit"></i></a>
                                        @if(Session::has('messege'))
                                            Toastr::success('Successfully Registered','Success');
                                        @endif
                                        <a href="subcategory/delete/{{$subcategory->id}}" class="btn btn-sm btn-danger delete-confirm"><i class="fa fa-sm fa-trash"></i></a>
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
