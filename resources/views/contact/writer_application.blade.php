@extends('layouts.admin_layout')

@push('styles')

@endpush
@section('content')
    <div class="container P-10">
        <div class="card">
            <div class="card-body">
                <h1 style="margin-bottom: -25px">All Writer Application</h1> 
            </div>
        </div>
        <div class="card" >
            <div class="card-body">    
                <table id="myTable" class="table table-striped table-bordered" >
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Phone</th>
                            <th>Address</th>
                            <th>Education</th>
                            <th>Message</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($application as $row)
                    <tr>
                        <td>{{ $row->name }}</td>
                        <td>{{ $row->phone }}</td>
                        <td>{{ $row->address }}</td>
                        <td>{{ $row->education }}</td>
                        <td>{{ $row->message }}</td>
                        <td>
                        	<a href="{{route('delete.writer.application',$row->id)}}" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr> 
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection


