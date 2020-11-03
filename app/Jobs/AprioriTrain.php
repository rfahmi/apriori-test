<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Rfahmi\Ai\Apriori;
use App\Models\TrxHdr;
use App\Models\TrxItem;
use App\Models\Item;

class AprioriTrain implements ShouldQueue
{
	use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

	public function __construct()
	{
	}

	public function handle()
	{
		$apriori = new Apriori();
		try {
			$items = Item::pluck('item_id')->toArray();
			$transactions = [];
			$transactions_header = TrxHdr::get();
			for ($i = 0; $i < count($transactions_header); $i++) {
				$transactions[$i] = TrxItem::where('trx_id', $transactions_header[$i]->trx_id)->pluck('item_id')->toArray();
			}

			$apriori->setSupport(2);
			$apriori->setConfidence(0.1);
			$apriori->train($items, $transactions);

			return true;
		} catch (Exception $e) {
			return false;
		}
	}
}
