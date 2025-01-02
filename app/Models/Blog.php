<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Auth;

class Blog extends Model
{
    use HasFactory;
    public static function newBlog($request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/blog-image/');
        }
        self::saveInfo(new Blog(), $request, $imageUrl);
    }

    private static function saveInfo($blog, $request, $imageUrl)
    {
        $blog->title             = $request->title;
        $blog->user_id           = Auth()->user()->id;
        $blog->short_description = $request->short_description;
        $blog->long_description  = $request->long_description;
        $blog->post_date         = date('Y-m-d');
        $blog->post_timestamp    = strtotime(date('Y-m-d'));
        $blog->image             = $imageUrl;
        $blog->status            = $request->status;
        $blog->save();
    }
    private static function deleteFolderImage($image)
    {
        if (file_exists($image))
        {
            unlink($image);
        }
    }
    public static function updateBlog($request, $blog)
    {
        if ($image = $request->file('image'))
        {
            $imageUrl = getFileUrl($image, 'uploads/blog-image/');
            self::deleteFolderImage($blog->image);
        }
        else
        {
            $imageUrl = $blog->image;
        }
        self::saveInfo($blog,$request,$imageUrl);
    }
    public static function deleteBlog($blog)
    {
        self::deleteFolderImage($blog->image);
        $blog->delete();
    }
    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
