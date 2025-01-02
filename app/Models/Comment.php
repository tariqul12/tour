<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    public static function newComment($request)
    {
        self::saveInfo(new Comment(),$request);
    }
    public static function updateComment($request ,$id)
    {
        $comment = Comment::find($id);
       self::saveInfo($comment,$request);
    }

    private static function saveInfo($comment,$request)
    {
        $comment->name = $request->name;
        $comment->email = $request->email;
        $comment->message = $request->message;
        $comment->status = $request->status;
        $comment->save();
    }

    public static function destroyComment($id)
    {
        $comment = Comment::find($id);
        $comment->delete();
    } 

}
