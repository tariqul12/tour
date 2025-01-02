<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function index()
    {
        return view("admin.comment.index",["comments"=> Comment::all()]);
    }
    public function edit($id)
    {
        return view("admin.comment.edit",["comment"=> Comment::find($id)]);
    }
    public function update(Request $request , $id)
    {
        Comment::updateComment($request,$id);
        return redirect("comment/index")->with("message","comment Udpate successfully");
    }
    public function destroy( $id)
    {
        Comment::destroyComment($id);
        return redirect("comment/index")->with("message","comment Delete successfully");
    }
}
