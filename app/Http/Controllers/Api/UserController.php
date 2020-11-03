<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        try {
            // HITUNG OFFSET
            if($_GET && $_GET['page'] && $_GET['limit']){
                $page=$_GET['page'];
                $limit=$_GET['limit'];
                $offset = ($page - 1) * $limit;
                $data = \App\Models\User::orderBy('id', 'desc')
                ->offset($offset)
                ->limit($limit)
                ->get();
            }else{
                $data = \App\Models\User::orderBy('id', 'desc')
                ->get();
            }
            
            return response()->json([
                'success' => true,
                'message' => 'Success',
                'data' => $data
            ],200);
        } catch (Exception $e) {
            return response()->json([
                "success" => false,
                "message" => $e->message,
            ], 200);
        }
    }
    public function show($id)
    {
        try {
            $data = \App\Models\User::find($id)->get()->first();
            return response()->json([
                'success' => true,
                'message' => 'Success',
                'data' => $data
            ],200);
        } catch (Exception $e) {
            return response()->json([
                "success" => false,
                "message" => $e->message,
            ], 200);
        }
    }
    public function update(Request $request, $id)
    {
        try{
            $data = \App\Models\User::find($id)->update($request->all());
            return response()->json([
                'success' => true,
                'message' => 'Updated',
                'data' => ''
            ],200);
        }catch(Exception $e){
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
                'data' => ''
            ],400);
        }
    }
    public function destroy($id)
    {
        try{
            \App\Models\User::find($id)->delete();
            return response()->json([
                'success' => true,
                'message' => 'Deleted',
                'data' => ''
            ],200);    
        }catch(Exception $e){
            return response()->json([
                'success' => false,
                'message' => $e->getMessage(),
                'data' => ''
            ],400);
        }
    }
}
