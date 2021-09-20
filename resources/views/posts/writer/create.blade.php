@extends('layouts.admin_layout')

@push('styles')
<link rel="stylesheet" href="vendors/tagsinput/bootstrap-tagsinput.css" type="text/css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
@endpush

@section('content')
        <div class="separator separator-dashed mt-8 mb-5"></div>      
            <div class="card ml-8 mr-8">
                <div class="card">
                    <div class="card-body">
                        <h1>Add New Post</h1>
                    </div>
                </div>
            </div>
        <div class="card ml-8 mr-8">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-5 mx-auto">
                            <div class="tile">
                                <form action="{{ route('post.store') }}" method="POST" role="form" enctype="multipart/form-data">
                                    @csrf
                                    
                                    <div class="form-group label-floating">
                                        <label class="control-label">Category Bangla Name</label>

                                        <select name="category_name" id="cat_name" class="form-control">
                                        <option disabled="" selected="">-----Select-----</option>
                                            @foreach($categories as $category)
                                            <option value="{{$category->id}}">
                                                {{$category->name_bn}} | {{$category->name_en}}
                                            </option>
                                            
                                        @endforeach
                                    
                                    
                                        </select>
                                    </div>
                                    
                                    <div class="form-group label-floating">
                                        <label class="control-label">Sub category Bangla Name</label>

                                        <select name="subcat_name" class="form-control" id="subcat_name">
                                    <option></option>
                                    
                                        </select>
                                    </div>

                                    <div class="form-group label-floating">
                                        <label class="control-label">Writer Bangla Name</label>

                                        <select name="writer_name" class="form-control" >
                                        <option value="{{auth()->user()->id}}">{{auth()->user()->bangla_name}} | {{auth()->user()->english_name}}</option>
                                        </select>
                                    </div>

                                    <div class="form-group label-floating">
                                        <label class="control-label">Division Bangla Name</label>

                                        <select name="division_name" id="division_name" class="form-control">
                                        <option disabled="" selected="">----select one ------</option>
                                        @foreach($divisions as $division)
                                    
                                        <option value="{{$division->id}}">{{$division->name_bn}} | {{$division->name_en}}</option>
                                        
                                    @endforeach
                                    
                                        </select>
                                    </div>

                                    <div class="form-group label-floating">
                                        <label class="control-label">District Bangla Name</label>
                                        <select name="district_name" id="district_name" class="form-control">
                                        </select>
                                    </div>

                                    <div class="form-group label-floating">
                                        <label class="control-label">Subdistrict Bangla Name</label>
                                        <select name="subdistrict_name" id="subdistrict_name" class="form-control">
                                        </select>
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label" for="title_bn">Post Title Bangla <span class="m-l-5 text-danger"> *</span></label>
                                        <input class="form-control " type="text" name="title_bn" id="title_bn" value="{{old('title_bn')}}" required="" />
                                        
                                    </div>

                                    <div class="form-group">
                                        <label class="control-label" for="title_en">Post Title English<span class="m-l-5 text-danger"> *</span></label>
                                        <input class="form-control " type="text" name="title_en" id="title_en" value="{{old('title_en')}}" required="" />
                                        
                                    </div>
                                    <div id="form-group">
                                        <label class="control-label" for="details_en">Post Details English <span class="m-l-5 text-danger"> *</span></label>
                                        <textarea class="form-control" id="summernote" name="details_en" ></textarea>
                                        </div>
                                    <div class="form-group">
                                            <label class="control-label" for="details_bn">Post Details Bangla<span class="m-l-5 text-danger"> *</span></label>
                                            <textarea class="form-control" id="summernote2" name="details_bn"  ></textarea>
                                        </div>
                        </div>
            </div>
            
                        <div class="col-md-5 mx-auto">
                           <div class="tile">
                                {{-- <div class="form-group">
                                   <label class="control-label" for="headline_en">Post Headline Bangla<span class="m-l-5 text-danger"> *</span></label>
                                   <input class="form-control " type="text" name="headline_en" id="headline_en" value="{{old('headline_en')}}"/>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="headline_bn">Post Headline English<span class="m-l-5 text-danger"> *</span></label>
                                    <input class="form-control " type="text" name="headline_bn" id="headline_bn" value="{{old('headline_bn')}}"/>
                                    
                                </div> --}}
                            
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text">Upload</span>
                                </div>
                                <div class="custom-file">
                                    <input type="file" class="custom-file-input"  id="customImage" name="image" required="">
                                    <label class="custom-file-label" for="inputGroupFile01">Choose image</label>
                                </div>
                            </div>

        
                            <div class="form-group">
                                <label class="control-label" for="tags_en">English Tags <span class="m-l-5 text-danger"> *</span></label>
                                <input type="text" class="form-control" name="tags_en" placeholder="Tags" value="">
                                
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="tags_bn">Bangla Tags <span class="m-l-5 text-danger"> *</span></label>
                                <input type="text" class="form-control" name="tags_bn" placeholder="Tags" value="" required="">
                                
                            </div>

                            <div class="form-group">
                                <label class="control-label" for="published_date">Published Date<span class="m-l-5 text-danger"> *</span></label>
                                <input class="form-control " type="date" name="published_date" id="published_date" value="{{old('published_date')}}"/>
                                
                            </div>
                            
                            
                                
                        
                            <div class="form-group label-floating">
                                <label class="control-label">Status</label>

                                <select id="status" name="status"   class="form-control" >
                                <option value="1">Active </option>
                                <option value="0">Inactive </option>
                            </select>
                            </div>
                            
                            <div class="form-group label-floating">
                                <label class="control-label">Thumbnail</label>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" name="thumbnail_select" id="thumbnail_select" value="1">
                                <label class="form-check-label" for="thumbnail_select">Big Thumbnail</label>
                                </div>
                                <div class="form-check">
                                <input class="form-check-input" type="radio" name="thumbnail_select" id="thumbnail_select" value="0">
                                <label class="form-check-label" for="inlineRadio2">Small Thumbnail</label>
                            </div>
                            </div>

                            <div class="form-group label-floating">
                                <label class="control-label">First Section</label>
                                    <div class="form-group form-check">
                                        <input type="checkbox" class="form-check-input" id="first_section" name="first_section" value="1">
                                        <label class="form-check-label" for="headline">First Section</label>
                                    </div>
                            </div>
                            <div class="form-group label-floating">
                                <label class="control-label">Category First Section</label>
                                    <div class="form-group form-check">
                                        <input type="checkbox" class="form-check-input" id="category_first_section" name="category_first_section" value="1">
                                        <label class="form-check-label" for="headline">Category First Section</label>
                                    </div>
                            </div>
                            <div class="form-group label-floating">
                                <label class="control-label">Subcategory First Section</label>
                                    <div class="form-group form-check">
                                        <input type="checkbox" class="form-check-input" id="subcategory_first_section" name="subcategory_first_section" value="1">
                                        <label class="form-check-label" for="headline">Subcategory First Section</label>
                                    </div>
                            </div>
                            <div class="form-group label-floating">
                                <label class="control-label">Division First Section</label>
                                    <div class="form-group form-check">
                                        <input type="checkbox" class="form-check-input" id="division_first_section" name="division_first_section" value="1">
                                        <label class="form-check-label" for="division_first_section">Division First Section</label>
                                    </div>
                                </div>
                                <div class="form-group label-floating">
                                    <label class="control-label">District First Section</label>
                                        <div class="form-group form-check">
                                            <input type="checkbox" class="form-check-input" id="district_first_section" name="district_first_section" value="1">
                                            <label class="form-check-label" for="district_first_section">District First Section</label>
                                        </div>
                                </div>
                            
                            <div class="form-group label-floating">
                                <label class="control-label">Headline</label>
                                    <div class="form-group form-check">
                                        <input type="checkbox" class="form-check-input" id="headline" name="headline" value="1">
                                        <label class="form-check-label" for="headline">Headline</label>
                                    </div>
                            </div>

                            

                            
                        
                            <div class="model footer">
                        
                            <button class="btn btn-success btn-uppercase" type="submit" > <i class="ti-check-box mr-2"></i>Save</button>
                            &nbsp;&nbsp;&nbsp;
                            <a class="btn btn-danger btn-square btn-uppercase" href="{{ route('post.index') }}"><i class="ti-trash mr-2"></i>Cancel</a>
                        </div>
                    </div>
                </div>
            </div>
    <div class="separator separator-dashed mt-8 mb-5"></div>
@endsection

@push('scripts')
<script src="vendors/tagsinput/bootstrap-tagsinput.js"></script>
<script src="vendors/select2/js/select2.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

<script>
$("input.tagsinput-example").tagsinput('items');
</script>

<script type="text/javascript">
    $('#summernote').summernote({
        height: 100
    });
</script>
<script type="text/javascript">
    $('#summernote2').summernote({
        height: 100
    });
</script>

<script type="text/javascript">
        $("#cat_name").change(function(){
      var id = $(this).val();
      var token = $("input[name='_token']").val();
      
      $.ajax({
          url: "{{ route('cat-filter') }}",
          method: 'POST',
          data: {id:id, _token:token},
          success: function(data) {
            //   alert(data.options);
            $("select[name='subcat_name'").html('');
            $("select[name='subcat_name'").html(data.options);
          }
      });
  });
    </script>
    <script type="text/javascript">
        $("#division_name").change(function(){
      var id = $(this).val();
      var token = $("input[name='_token']").val();
      
      $.ajax({
          url: "{{ route('dis-filter') }}",
          method: 'POST',
          data: {id:id, _token:token},
          success: function(data) {
            //   alert(data.options);
            $("select[name='district_name'").html('');
            $("select[name='district_name'").html(data.options);
          }
      });
  });
    </script>
      <script type="text/javascript">
        $("#district_name").change(function(){
      var id = $(this).val();
      var token = $("input[name='_token']").val();
      
      $.ajax({
          url: "{{ route('subdis-filter') }}",
          method: 'POST',
          data: {id:id, _token:token},
          success: function(data) {
            //   alert(data.options);
            $("select[name='subdistrict_name'").html('');
            $("select[name='subdistrict_name'").html(data.options);
          }
      });
  });
    </script>

@endpush
