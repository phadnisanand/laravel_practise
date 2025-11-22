<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Validator;
class PostController extends Controller
{

    public function index(Request $request) {
        $posts = Post::paginate(5);
        return response()->json([
            "status" => 1,
            "message"=> "Post Fetched",
            "data" => $posts
        ]);
    }
    public function update(Request $request, $id) {
         $validator = Validator::make($request->all(), [
            "name"=> "required",
            'body' => "required"
        ]);

        if ($validator->fails()) {
            return response()->json([
            'status'=> 0,
            'message'=> 'validation errors',
            'data' => $validator->errors()->all()
         ]);
        }

        $post = Post::find($id);
        $post->name = $request->name;
        $post->body = $request->body;
        $post->save();
        return response()->json([
            'status'=> 0,
            'message'=> 'Post updated',
            'data' => $post
        ]);
    }

    public function destroy(Request $request, $id) {
        $post = Post::find($id);
        $post->delete();
        return response()->json([
            "status"=> 0,
            "message"=> "Post deleted"
        ]);
    }


    public function store(Request $request) {
        $validator = Validator::make($request->all(), [
            "name"=> "required",
            'body' => "required"
        ]);

        if ($validator->fails()) {
            return response()->json([
            'status'=> 0,
            'message'=> 'validation errors',
            'data' => $validator->errors()->all()
         ]);
        }

         $posts = Post::create(
            ['name'=> $request->name,'body'=> $request->body]
         );

         return response()->json([
            'status'=> 0,
            'message'=> 'Post created',
            'data' => $posts
        ]);
     }

     public function show(Request $request, $id) {
        $post= Post::find($id);
        return response()->json([
            'status'=> 0,
            'message'=> 'Post fetched',
            'data' => $post
        ]);
     }
  }
