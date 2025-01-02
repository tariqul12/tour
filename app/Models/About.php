<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class About extends Model
{
    use HasFactory;
    public static function newAbout($request)
    {
        if ($image1 = $request->file('image1')) {
            $imageUrl1 = getFileUrl($image1, 'uploads/about-image/');
        }
        if ($image2 = $request->file('image2')) {
            $imageUrl2 = getFileUrl($image2, 'uploads/about-image/');
        }
        self::saveInfo(new About(), $request, $imageUrl1, $imageUrl2);
    }

    private static function saveInfo($about, $request, $imageUrl1, $imageUrl2)
    {
        $about->title               = $request->title;
        $about->description         = $request->description;
        $about->happy_customer      = $request->happy_customer;
        $about->employee            = $request->employee;
        $about->awards              = $request->awards;
        $about->network             = $request->network;
        $about->image1              = $imageUrl1;
        $about->image2              = $imageUrl2;
        $about->save();
    }
    private static function deleteFolderImage($image)
    {
        if (file_exists($image)) {
            unlink($image);
        }
    }
    public static function updateAbout($request, $about)
    {
        if ($image1 = $request->file('image1')) {
            $imageUrl1 = getFileUrl($image1, 'uploads/about-image/');
            self::deleteFolderImage($about->image1);
        } else {
            $imageUrl1 = $about->image1;
        }
        if ($image2 = $request->file('image2')) {
            $imageUrl2 = getFileUrl($image2, 'uploads/about-image/');
            self::deleteFolderImage($about->image2);
        } else {
            $imageUrl2 = $about->image2;
        }
        self::saveInfo($about, $request, $imageUrl1, $imageUrl2);
    }
    public static function deleteAbout($about)
    {
        self::deleteFolderImage($about->image);
        $about->delete();
    }
}
