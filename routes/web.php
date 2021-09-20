<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect()->route('frontend.home-show');
});
Route::get('/index','FrontendController@index')->name('frontend.home-show');

Auth::routes();
//password change
Route::get('password-change','Auth\ChangedPasswordController@edit')->name('password.edit');
Route::put('password-change','Auth\ChangedPasswordController@updatepassword')->name('manual.password.update');


Route::get('/home', 'HomeController@index')->name('home');
Route::get('/admin/panel/edit', 'HomeController@adminpaneledit')->name('admin.panel.edit');
Route::post('/admin/logo/update', 'HomeController@AdminLogoUpdate')->name('admin.logo.update');
Route::post('contact','HomeController@postStore');
Route::get('contact/data','HomeController@getData');
Route::post('contact/update','HomeController@postUpdate');
Route::post('contact/delete','HomeController@postDelete');

Route::resource('category', 'CategoryController');
Route::get('category/delete/{id}', 'CategoryController@destroy');
Route::resource('subcategory', 'SubcategoryController');
Route::get('subcategory/delete/{id}', 'SubcategoryController@destroy');
Route::resource('writer', 'WriterController');
Route::get('writer/delete/{id}', 'WriterController@destroy');
//Venues
Route::resource('division', 'DivisionController');
Route::get('division/delete/{id}', 'DivisionController@destroy');
Route::resource('district', 'DistrictController');
Route::get('district/delete/{id}', 'DistrictController@destroy');
Route::resource('subdistrict', 'SubdistrictController');
Route::post('filter', 'SubdistrictController@filterdistrict')->name('filter');
Route::get('subdistrict/delete/{id}', 'SubdistrictController@destroy');
Route::resource('post', 'PostController');
Route::post('cat-filter', 'PostController@filtercategory')->name('cat-filter');
Route::post('dis-filter', 'PostController@filterdistrict')->name('dis-filter');
Route::post('subdis-filter', 'PostController@filtersubdistrict')->name('subdis-filter');
Route::get('post/delete/{id}', 'PostController@destroy');
Route::resource('prayer', 'PrayerController');
Route::get('prayer/delete/{id}', 'PrayerController@destroy');
//Setting
Route::resource('setting', 'SettingController');
Route::resource('sociallink', 'SociallinkController');
Route::get('seo/create', 'SeoController@create')->name('seo.create');
Route::post('seo/update', 'SeoController@updateSeo')->name('seo.update');
Route::resource('socialpage', 'SocialPageController');

Route::get('off/on/', 'SettingController@OffOn')->name('off.on');
Route::get('on/election/', 'SettingController@OnElection')->name('on.election');
Route::get('off/election/', 'SettingController@OffElection')->name('off.election');
Route::get('on/language/', 'SettingController@OnLanguage')->name('on.language');
Route::get('off/language/', 'SettingController@OffLanguage')->name('off.language');
Route::get('on/headline/', 'SettingController@Onheadline')->name('on.headline');
Route::get('off/headline/', 'SettingController@Offheadline')->name('off.headline');
Route::get('on/header_ads/', 'SettingController@Onheaderads')->name('on.header_ads');
Route::get('off/header_ads/', 'SettingController@Offheaderads')->name('off.header_ads');
Route::get('on/facebook_page/', 'SettingController@OnFacebookPage')->name('on.facebook_page');
Route::get('off/facebook_page/', 'SettingController@OffFacebookPage')->name('off.facebook_page');
Route::get('on/covid19/', 'SettingController@Oncovid19')->name('on.covid19');
Route::get('off/covid19/', 'SettingController@Offcovid19')->name('off.covid19');
Route::get('on/namaz/', 'SettingController@Onnamaz')->name('on.namaz');
Route::get('off/namaz/', 'SettingController@Offnamaz')->name('off.namaz');
Route::get('on/notice/', 'SettingController@Onnotice')->name('on.notice');
Route::get('off/notice/', 'SettingController@Offnotice')->name('off.notice');
Route::get('on/photogallery/', 'SettingController@Onphotogallery')->name('on.photogallery');
Route::get('off/photogallery/', 'SettingController@Offphotogallery')->name('off.photogallery');
Route::get('on/biggopti/', 'SettingController@OnBiggopti')->name('on.biggopti');
Route::get('off/biggopti/', 'SettingController@OffBiggopti')->name('off.biggopti');
Route::get('on/job/', 'SettingController@OnJob')->name('on.job');
Route::get('off/job/', 'SettingController@OffJob')->name('off.job');
Route::get('on/nonprofit/', 'SettingController@OnnonProfit')->name('on.nonprofit');
Route::get('off/nonprofit/', 'SettingController@OffnonProfit')->name('off.nonprofit');

//Special Item
Route::resource('advertise', 'AdvertiseController');
Route::get('advertise/delete/{id}', 'advertiseController@destroy');
Route::resource('election', 'ElectionController');
Route::get('election/delete/{id}', 'ElectionController@destroy');
Route::resource('bulatin', 'BulatinController');
Route::get('bulatin/delete/{id}', 'BulatinController@destroy');
Route::resource('jobnews', 'JobNewsController');
Route::get('jobnews/delete/{id}', 'JobNewsController@destroy');
Route::resource('opinions', 'OpinionController');
Route::get('opinions/delete/{id}', 'OpinionController@destroy');
Route::resource('covid19', 'Covid19Controller');
Route::get('covid19/delete/{id}', 'Covid19Controller@destroy');
Route::resource('bdcovid19', 'BdCovid19Controller');
Route::get('bdcovid19/delete/{id}', 'BdCovid19Controller@destroy');
Route::resource('lifestyle', 'LifeStyleController');
Route::get('lifestyle/delete/{id}', 'LifeStyleController@destroy');
Route::resource('abroad', 'AbroadController');
Route::get('abroad/delete/{id}', 'AbroadController@destroy');
Route::resource('website', 'WebsiteController');
Route::get('website/delete/{id}', 'WebsiteController@destroy');
//Pages
Route::resource('page', 'PageController');
Route::resource('about', 'AboutController');
Route::resource('contact-us', 'ContactUsController');
Route::resource('term', 'TermController');
Route::resource('our-say', 'OurSayController');
Route::resource('privacy', 'PrivacyController');
Route::resource('notice', 'NoticeController');
Route::get('give/ads', 'NoticeController@give_ads')->name('give.ads');
Route::post('giving/ads', 'NoticeController@AdsUpdate')->name('givingads.update');


//writer post page
Route::get('writer-post-create', 'PostController@WriterPostPage')->name('writer.post.create');
Route::get('writer-post-index', 'PostController@WriterPostIndex')->name('writer.post.index');
Route::get('writer-post-edit', 'PostController@WriterPostEdit')->name('writer.post.edit');

//writer's writer index page
Route::get('user-writer-index', 'writerController@UserWriterShow')->name('user.writer.index');

//Image Gallery
Route::resource('image-gallery', 'ImageGalleryController');
Route::get('image-gallery/delete/{id}', 'ImageGalleryController@destroy')->name('image-gallery.delete');

//Writer job news post
Route::get('writer-jobnews-create', 'JobNewsController@WriterJobnewsPage')->name('writer.jobnews.create');
Route::get('writer-jobnews-index', 'JobNewsController@WriterJobnewsIndex')->name('writer.jobnews.index');

Route::resource('nonprofit', 'NonProfitController');
Route::get('nonprofit/delete/{id}', 'NonProfitController@destroy')->name('nonprofit.delete');

//Frontend
Route::post('subscribe', 'FrontendController@Subscribs')->name('subscribe.now');
Route::post('store/message', 'FrontendController@StoreContactMessage')->name('store.contact.message');
Route::post('store/writer/application', 'FrontendController@StoreApplication')->name('store.writer.application');

Route::get('frontendview', 'FrontendController@index');
Route::get('subcategory_posts/{slug_bn}', 'FrontendController@SubcategoryPosts')->name('subcategory.posts');
Route::get('category_posts_show/{slug_bn}', 'FrontendController@CategoryPostsShow')->name('category.posts.show');
Route::get('category-all-post-show/{id}', 'CategoryAllPostShowController@show')->name('category.all.post');
Route::get('find-post', 'FindPostShowController@show')->name('find.post');
Route::get('postshow/{slug}', 'PostDetailsController@show')->name('postshow.show');
Route::get('notice_show/{slug}', 'NoticeShowController@show')->name('notice.show');
Route::get('opinionshow/{slug}', 'OpinionShowController@show')->name('opinion.show');
Route::get('electionshow/{slug_bangla}', 'ElectionShowController@show')->name('election.show');
Route::get('lifestyleshow/{id}', 'LifeStyleShowController@show')->name('lifestyle.show');
Route::get('jobnewspost/{id}', 'JobnewsPostShowController@show')->name('jobnews.show');
Route::get('abroadshow/{id}', 'AbroadPostShowController@show')->name('abroad.show');
Route::get('bangladesh/{id}', 'DivisionPostShowController@show')->name('division.post.show');
Route::get('districtpost/{id}', 'DistrictPostShowController@show')->name('district.post.show');
Route::get('district-post-filter/{id}', 'FrontendController@filterdistrict');
Route::get('subdistrict-post-filter/{id}', 'FrontendController@filtersubdistrict');
Route::get('archive', 'ArchiveController@index')->name('archive.post');
Route::get('district-archive-filter/{id}', 'ArchiveController@filterdistrict');
Route::get('subdistrict-archive-filter/{id}', 'ArchiveController@filtersubdistrict');
Route::get('find-archive_post', 'FindArchiveController@show')->name('find.archive.post');


//pages
Route::get('know/us', 'FrontendController@about')->name('about.page');
Route::get('terms-condition', 'FrontendController@terms')->name('terms.page');
Route::get('privacy-policy', 'FrontendController@privacy')->name('privacy.page');
Route::get('contact-us', 'FrontendController@contact')->name('contact.us');
Route::get('provide-ads', 'FrontendController@ads')->name('provide.ads');
Route::get('writer-application', 'FrontendController@WritrApplication')->name('writer.application');
//Report

Route::get('daily/report', 'ReportController@daily')->name('daily.report');
Route::get('monthly/report', 'ReportController@Monthly')->name('monthly.report');
Route::post('monthly/report', 'ReportController@ReportMonth')->name('report.month');
Route::get('yearly/report', 'ReportController@Yearly')->name('yearly.report');
Route::post('year/report', 'ReportController@ReportYear')->name('report.year');

Route::get('individual/report', 'ReportController@individual')->name('individual.report');
Route::post('year/individual', 'ReportController@ReportIndividual')->name('report.individual');

Route::get('datewise/report', 'ReportController@datewise')->name('datewise.report');
Route::post('year/datewise', 'ReportController@ReportDatewise')->name('report.datewise');

//contact message
Route::get('admin/contact/message', 'ApplicationController@Contact')->name('admin.contact.message');
Route::get('delete/contact/message/{id}', 'ApplicationController@DeleteContact')->name('delete.contact.message');
Route::get('admin/writer/application', 'ApplicationController@WriterApplication')->name('admin.writer.application');
Route::get('delete/writer/application/{id}', 'ApplicationController@DeleteApplication')->name('delete.writer.application');

//user role
Route::get('admin/create/role', 'RoleController@create')->name('admin.create.role');
Route::post('admin/store/role', 'RoleController@rolestore')->name('role.store');
Route::get('admin/manage/role', 'RoleController@index')->name('admin.manage.role');
Route::get('admin/role/edit/{id}', 'RoleController@edit')->name('admin.role.edit');
Route::post('admin/update/role/{id}', 'RoleController@update')->name('admin.update.role');
Route::get('admin/role/delete/{id}', 'RoleController@delete')->name('admin.role.delete');

//Page Show
Route::get('page-show-footer/{id}', 'PageShowController@contact')->name('page.show.footer');

//File Manager Routes are here
Route::get('admin/file/manager', 'FileManagerController@FileManager')->name('file.manager');
Route::get('delete/post/filemanager/{row}', 'FileManagerController@DeletePost')->name('delete.post.filemanager');
Route::post('filemanager/post/delete', 'FileManagerController@PostDelete')->name('filemanager.post.delete');
Route::get('download/post/filemanager/{row}', 'FileManagerController@Download')->name('download.post.filemanager');

Route::get('admin/filemanager/post', 'FileManagerController@FileManagerPost')->name('filemanager.post');

Route::get('admin/filemanager/election', 'FileManagerController@FileManagerElection')->name('filemanager.election');
Route::get('download/election/filemanager/{row}', 'FileManagerController@DownloadElection')->name('download.election.filemanager');
Route::get('delete/election/filemanager/{row}', 'FileManagerController@DeleteElection')->name('delete.election.filemanager');

Route::get('admin/filemanager/gallery', 'FileManagerController@FileManagerGallery')->name('filemanager.gallery');
Route::get('download/gallery/filemanager/{row}', 'FileManagerController@DownloadGallery')->name('download.gallery.filemanager');
Route::get('delete/gallery/filemanager/{row}', 'FileManagerController@DeleteGallery')->name('delete.gallery.filemanager');

Route::get('admin/filemanager/job', 'FileManagerController@FileManagerJob')->name('filemanager.job');
Route::get('download/job/filemanager/{row}', 'FileManagerController@DownloadJob')->name('download.job.filemanager');
Route::get('delete/job/filemanager/{row}', 'FileManagerController@DeleteJob')->name('delete.job.filemanager');

Route::get('admin/filemanager/writer', 'FileManagerController@FileManagerWriter')->name('filemanager.writer');
Route::get('download/writer/filemanager/{row}', 'FileManagerController@DownloadWriter')->name('download.writer.filemanager');
Route::get('delete/writer/filemanager/{row}', 'FileManagerController@DeleteWriter')->name('delete.writer.filemanager');

Route::get('admin/filemanager/ads', 'FileManagerController@FileManagerAds')->name('filemanager.ads');
Route::get('download/ads/filemanager/{row}', 'FileManagerController@DownloadAds')->name('download.ads.filemanager');
Route::get('delete/ads/filemanager/{row}', 'FileManagerController@DeleteAds')->name('delete.ads.filemanager');

//All in One Cache Clear
Route::get('/clear-cache', function() {
    Artisan::call('optimize:clear');
    echo Artisan::output();
    });