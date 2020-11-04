<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Rfahmi\Ai\Apriori;
use App\Jobs\AprioriTrain;
use App\Models\Cart;
use App\Models\Item;

class CartController extends Controller
{
	public function index()
	{
		$apriori = new Apriori();
		$item_set = Cart::pluck('item_id')->toArray();
		$recomendation_set = $apriori->predict($item_set);

		$data['items'] = Cart::withItem()->get();
		if ($recomendation_set) {
			foreach ($recomendation_set as $key => $value) {
				$data['recomendation'][$key] = Item::where('item_id', $value['item'])->get();
			}
		}

		// $data['items'] = ['A'];
		// $data['recomendation'] = $apriori->predict($data['items']);

		return response()->json([
			'success' => true,
			'message' => 'Success',
			'data' => $data
		], 200);
	}

	public function store(Request $request)
	{
		return true;
	}

	public function update(Request $request, $id)
	{
		try {
			$data = \App\Models\User::find($id)->update($request->all());

			return response()->json([
				'success' => true,
				'message' => 'Updated',
				'data' => ''
			], 200);
		} catch (Exception $e) {
			return response()->json([
				'success' => false,
				'message' => $e->getMessage(),
				'data' => ''
			], 400);
		}
	}

	public function delete($id)
	{
		try {
			\App\Models\User::find($id)->delete();

			return response()->json([
				'success' => true,
				'message' => 'Deleted',
				'data' => ''
			], 200);
		} catch (Exception $e) {
			return response()->json([
				'success' => false,
				'message' => $e->getMessage(),
				'data' => ''
			], 400);
		}
	}

	public function createRecomendationRule()
	{
		AprioriTrain::dispatch();
	}
}
