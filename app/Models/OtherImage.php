<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OtherImage extends Model
{
    use HasFactory;
    public static $otherImages;
    public static function newOtherImage($images,$service_id)
    {
        foreach ($images as $image)
        {
            $otherImage             = new OtherImage();
            $otherImage->service_id = $service_id;
            $otherImage->image      = self::getImageUrl($image);
            $otherImage->save();
        }
    }
    public static function updateOtherImage($images,$service_id)
    {
        self::$otherImages = OtherImage::where('service_id',$service_id)->get();

        foreach (self::$otherImages as $image)
        {
            if (file_exists($image->image))
            {
                unlink($image->image);
            }
            $image->delete();
        }
        self::newOtherImage($images,$service_id);
    }
    private static function getImageUrl($image)
    {
        $extension  = $image->extension();
        $newName    = rand(100000, 50000000) . "." . $extension;
        $directory  = "uploads/other-image/";
        $image->move($directory,$newName);
        return $directory . $newName;
    }
    public static function deleteOtherImage($id)
    {
        $images = OtherImage::where('service_id',$id)->get();
        foreach($images as $image)
        {
            if (file_exists($image->image))
            {
                unlink($image->image);
            }
            $image->delete();
        }
    }
}
