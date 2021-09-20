@extends('layouts.admin_layout')

@section('content')

<main class="main-content">

    <div class="page-header">
        <div class="container-fluid d-sm-flex justify-content-between">
            <h4>Analytics</h4>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item">
                        <a href="#">Dashboard</a>
                    </li>
                    <li class="breadcrumb-item active" aria-current="page">Analytics</li>
                </ol>
            </nav>
        </div>
    </div>
    <br>
    @php 
      $allpost=DB::table('posts')->get();
      $today=DB::table('posts')->where('published_date',date('Y-m-d'))->get();
      $category=DB::table('categories')->get();
      $subcategory=DB::table('subcategories')->get();
      $writers=DB::table('users')->where('status',1)->get();
      $ads=DB::table('advertisements')->get();
      $job=DB::table('job_news')->get();
      $lifestyle=DB::table('lifestyles')->get();
    @endphp



    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">{{count($allpost)}}</h2>
                                <div>Total Posts</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">{{count($today)}}</h2>
                                <div>Today Posts</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">{{count($category)}}</h2>
                                <div>Category</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">{{count($subcategory)}}</h2>
                                <div>Subcategory</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div><br>
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">{{count($writers)}}</h2>
                                <div>Writers</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">{{count($ads)}}</h2>
                                <div>Advertisements</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">{{count($job)}}</h2>
                                <div>Job News</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">{{count($lifestyle)}}</h2>
                                <div>Lifestyle News</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

             <div class="col-lg-3 col-md-6 col-sm-12"><br>
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">  <a href="#" target="_blank"><img src="http://www.blogcounter4free.com/counter.php?page=newsone.codebucket.xyz&digits=21&unique=1" alt="blog counter" border="0;"></a><br /> </h2>
                                <div>New Visitor</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6 col-sm-12"><br>
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between align-items-center">
                            <div>
                                <h2 class="font-weight-bold mb-2">  <a href="http://www.blogcounter4free.com" target="_blank"><img src="http://www.blogcounter4free.com/counter.php?page=newsone.codebucket.xyz&digits=21&unique=0" alt="blog counter" border="0;"></a> 
                                    <br/> </h2>
                                <div>All Visitor</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          

        </div>
        <br>

        <section>
          
        </section>
        

        <div class="row">

            <div class="col-lg-12 col-md-12">
                @php 
                  $posts = DB::table('posts')
                          ->Join('categories', 'posts.cat_id', '=', 'categories.id')
                          ->Join('subcategories', 'posts.sub_cat_id', '=', 'subcategories.id')
                          ->Join('users', 'posts.user_id', '=', 'users.id')
                          ->select('posts.*','categories.name_bn','subcategories.name_bn as subcat_name_bn','users.bangla_name')
                          ->orderBy('id','DESC')
                          ->limit(10)
                          ->get();
                @endphp

                <div class="card">
                    <div class="card-body">
                        <div class="d-flex justify-content-between">
                            <h6 class="card-title">Some latest Posts</h6>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th>Title</th>
                                    <th>Category</th>
                                    <th>Writer</th>
                                    <th>Published Date</th>
                                    <th class="text-right">View</th>
                                </tr>
                                </thead>
                                <tbody>
                              @foreach($posts as $row)      
                                <tr>
                                    <td>{{$row->title_bn}}</td>
                                    <td>{{ $row->name_bn }}</td>
                                    <td>{{ $row->bangla_name }}</td>
                                    <td>{{ \Carbon\Carbon::parse($row->created_at)->format('j F, Y')}}</td>
                                    <td class="text-right">{{ $row->view }}</td>
                                </tr>
                              @endforeach  
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</main>

@endsection
