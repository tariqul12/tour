<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OtherImage extends Model
{
    use HasFactory;
    public static $otherImages;
    public static function newOtherImage($images,$package_id)
    {
        foreach ($images as $image)
        {
            $otherImage             = new OtherImage();
            $otherImage->package_id = $package_id;
            $otherImage->image      = self::getImageUrl($image);
            $otherImage->save();
        }
    }
    public static function updateOtherImage($images,$package_id)
    {
        self::$otherImages = OtherImage::where('package_id',$package_id)->get();

        foreach (self::$otherImages as $image)
        {
            if (file_exists($image->image))
            {
                unlink($image->image);
            }
            $image->delete();
        }
        self::newOtherImage($images,$package_id);
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
        $images = OtherImage::where('package_id',$id)->get();
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
