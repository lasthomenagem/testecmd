<?php
session_start();
// Mercado Pago SDK
require __DIR__ .  '/vendor/autoload.php';

// Add Your credentials
MercadoPago\SDK::setAccessToken('APP_USR-7119689702194507-021803-dbf42103e141db9b5286d916938c9764-162816222');

// Create a preference object
$preference = new MercadoPago\Preference();

// Create a preference item
$item = new MercadoPago\Item();
$item->title = 'pneu aro 30';
$item->quantity = 1;
$item->unit_price = 500;
$preference->items = array($item);
$preference->save();
?>
