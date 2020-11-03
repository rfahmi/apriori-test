<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
	use HasFactory;

	protected $table = 'cart';

	protected $primary = 'row_id';

	protected $fillable = [
		'item_id', 'qty',
	];

	public function scopeWithItem($query)
	{
		$query
		->leftjoin('items as i', 'i.item_id', '=', 'cart.item_id')
		->addSelect([
			'cart.*',
			'i.item_name',
		]);
	}
}
