@extends('layouts.admin_layout')

@push('styles')

@endpush
@section('content')
    <div class="container P-10">
        <div class="card">
            <div class="card-body">
                <h1 style="margin-bottom: -25px">All Contact Message</h1> 
            </div>
        </div>
        <div class="card" >
            <div class="card-body">    
                <table id="myTable" class="table table-striped table-bordered" >
                    <thead>
                        <tr>
                            <th>Name</th>
                            <th>Subject</th>
                            <th>Message</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($contact as $row)
                    <tr>
                        <td>{{ $row->name }}</td>
                        <td>{{ $row->subject }}</td>
                        <td>{{ $row->message }}</td>
                        <td>
                        	<a href="{{route('delete.contact.message',$row->id)}}" class="btn btn-sm btn-danger">Delete</a>
                        </td>
                    </tr> 
                    @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection


