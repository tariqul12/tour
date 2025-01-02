<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;
    public static function newSlider($request)
    {
        if ($image = $request->file('image')) {
            $imageUrl = getFileUrl($image, 'uploads/slider-image/');
        }
    
        self::saveInfo(new Slider(), $request, $imageUrl);
    }

    private static function saveInfo($slider, $request, $imageUrl)
    {
        $slider->service_id  = $request->service_id;
        $slider->title       = $request->title;
        $slider->description = $request->description;
        $slider->image       = $imageUrl;
        $slider->status      = $request->status;
        $slider->save();
    }
    private static function deleteFolderImage($image)
    {
        if (file_exists($image))
        {
            unlink($image);
        }
    }
    public static function updateSlider($request, $slider)
    {
        if ($image = $request->file('image'))
        {
            $imageUrl = getFileUrl($image, 'uploads/slider-image/');
            self::deleteFolderImage($slider->image);
        }
        else
        {
            $imageUrl = $slider->image;
        }
        self::saveInfo($slider,$request,$imageUrl);
    }
    public static function deleteSlider($slider)
    {
        self::deleteFolderImage($slider->image);
        $slider->delete();
    }
    
    public function service()
    {
        return $this->belongsTo(Service::class);
    }
}
