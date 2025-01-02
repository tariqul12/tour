<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;
    public static function newService($request)
    {
        return self::saveInfo(new Service(), $request, self::getImageUrl($request->file('image'), 'uploads/service-image/'));
    }
    private static function saveInfo($service, $request, $imageUrl)
    {
        $service->title              = $request->title;
        $service->category_id        = $request->category_id;
        $service->short_description  = $request->short_description;
        $service->long_description   = $request->long_description;
        $service->meta_title         = $request->meta_title;
        $service->meta_description   = $request->meta_description;
        $service->search_keyword     = $request->search_keyword;
        $service->image              = $imageUrl;
        $service->status             = $request->status;
        $service->save();
        return $service;
    }
    private static function getImageUrl($image, $directory)
    {
        $extension = $image->extension();
        $newName   = rand(100000, 50000000) . "." . $extension;
        $image->move($directory, $newName);
        return $directory . $newName;
    }

    private static function deleteFolderImage($image)
    {
        if (file_exists($image))
        {
            unlink($image);
        }
    }

    public static function updateService($request, $service)
    {
        if ($image = $request->file('image'))
        {
            $imageUrl = self::getImageUrl($image, 'uploads/service-image/');
            self::deleteFolderImage($service->image);
        }
        else
        {
            $imageUrl = $service->image;
        }
        self::saveInfo($service,$request,$imageUrl);
    }
    public static function deleteService($service)
    {
        self::deleteFolderImage($service->image);
        $service->delete();
    }
    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function otherImages()
    {
        return $this->hasMany(OtherImage::class);
    }

}
