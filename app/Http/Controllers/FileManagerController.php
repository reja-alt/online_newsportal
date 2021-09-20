<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Response;
use File;
class FileManagerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function FileManager()
    {
    	return view('filemanager.index');
    }

    public function DeletePost($row)
    {
    	unlink('public/uploads/post/'.$row);
        $notification=array(
             'message' => 'Successfully Done',
             'alert-type' => 'success'
           );
        return redirect()->back()->with( $notification);
    }

    public function PostDelete(Request $request)
    {

    	if ($request->id<1) {
    		$notification=array(
                'message' => 'Please select any file',
                'alert-type' => 'error'
             );
            return redirect()->back()->with( $notification);
    	}
    	// $data=array();
    	// $data['id']=$request->id;
    	$post=$request->id;
    	foreach ($post as $row) {
    		unlink('public/uploads/post/'.$row);
    	}
    	$notification=array(
             'message' => 'Successfully Done',
             'alert-type' => 'success'
           );
        return redirect()->back()->with( $notification);
    }

    public function Download($row)
    {
    	
    		return Response::download('public/uploads/post/'.$row);
    	
		
    }


    public function FileManagerPost()
    {
    	return view('filemanager.post');
    }

    public function FileManagerElection()
    {
    	return view('filemanager.election');
    }

    public function DownloadElection($row)
    {
    	
    		return Response::download('public/uploads/election/'.$row);
    	
    	
    }

    public function DeleteElection($row)
    {
    	unlink('public/uploads/election/'.$row);
        $notification=array(
             'message' => 'Successfully Done',
             'alert-type' => 'success'
           );
        return redirect()->back()->with( $notification);
    }

    //gallery
    public function FileManagerGallery()
    {
    	return view('filemanager.gallery');
    }

    public function DownloadGallery($row)
    {
    	
    		return Response::download('public/uploads/gallery/'.$row);
    	
    	
    }

    public function DeleteGallery($row)
    {
    	unlink('public/uploads/gallery/'.$row);
        $notification=array(
             'message' => 'Successfully Done',
             'alert-type' => 'success'
           );
        return redirect()->back()->with( $notification);
    }

    //job
    public function FileManagerJob()
    {
    	return view('filemanager.job');
    }

    public function DownloadJob($row)
    {
    
       return Response::download('public/uploads/jobpost/'.$row);
    	
    }

    public function DeleteJob($row)
    {
    	unlink('public/uploads/jobpost/'.$row);
        $notification=array(
             'message' => 'Successfully Done',
             'alert-type' => 'success'
           );
        return redirect()->back()->with( $notification);
    }
    //FileManagerWriter
    public function FileManagerWriter()
    {
    	return view('filemanager.writer');
    }

    public function DownloadWriter($row)
    { 	
    	return Response::download('public/uploads/writer/'.$row);
    }

    public function DeleteWriter($row)
    {
    	unlink('public/uploads/writer/'.$row);
        $notification=array(
             'message' => 'Successfully Done',
             'alert-type' => 'success'
           );
        return redirect()->back()->with( $notification);
    }

    //ads
    public function FileManagerAds()
    {
    	return view('filemanager.ads');
    }

    public function DownloadAds($row)
    {
    	return Response::download('public/uploads/ads/'.$row);
    }

    public function DeleteAds($row)
    {
    	unlink('public/uploads/ads/'.$row);
        $notification=array(
             'message' => 'Successfully Done',
             'alert-type' => 'success'
           );
        return redirect()->back()->with( $notification);
    }

    
}
