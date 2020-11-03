<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class TrxHdr extends Model
{
	protected $table = 'transaction_header';

	protected $primary = 'trx_id';

	protected $fillable = [
		'trx_customer', 'trx_amount',
	];
}
