<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrxItem extends Model
{
	protected $table = 'transaction_items';

	protected $primary = 'row_id';

	protected $fillable = [
		'trx_id', 'item_id', 'qty', 'price',
	];
}
