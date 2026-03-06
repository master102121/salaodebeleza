<?php
namespace App\Http\Controllers;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Support\Collection;
use Illuminate\Routing\Controller as BaseController;


class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;


    public function Novidades(){


//Embaralhar
        $collection = collect([1, 2, 3, 4, 5]);
        $shuffled = $collection->shuffle();
        $shuffled->all();
        // [3, 2, 5, 1, 4] - (generated randomly)


//slice
$collection = collect([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
$slice = $collection->slice(4);
$slice->all();
// [5, 6, 7, 8, 9, 10]
//Slice com começo e fim
$slice = $collection->slice(4, 2);
$slice->all();
// [5, 6]



//The sort method sorts the collection. The sorted collection keeps the original array keys, so in this example we'll use the values method to reset the keys to consecutively numbered indexes:
$collection = collect([5, 3, 1, 2, 4]);
$sorted = $collection->sort();
$sorted->values()->all();
// [1, 2, 3, 4, 5]


$collection = collect([
    ['name' => 'Desk', 'price' => 200],
    ['name' => 'Chair', 'price' => 100],
    ['name' => 'Bookcase', 'price' => 150],
]);
$sorted = $collection->sortBy('price');
$sorted->values()->all();
/*
    [
        ['name' => 'Chair', 'price' => 100],
        ['name' => 'Bookcase', 'price' => 150],
        ['name' => 'Desk', 'price' => 200],
    ]
*/



//The splice method removes and returns a slice of items starting at the specified index:
    $collection = collect([1, 2, 3, 4, 5]);
    $chunk = $collection->splice(2);
    $chunk->all();
    // [3, 4, 5]
    $collection->all();
    // [1, 2]

    //You may pass a second argument to limit the size of the resulting chunk:
$collection = collect([1, 2, 3, 4, 5]);
$chunk = $collection->splice(2, 1);
$chunk->all();
// [3]


$collection->all();
// [1, 2, 4, 5]



//The sum method returns the sum of all items in the collection:
collect([1, 2, 3, 4, 5])->sum();
// 15


//If the collection contains nested arrays or objects, you should pass a key to use for determining which values to sum:
$collection = collect([
    ['name' => 'JavaScript: The Good Parts', 'pages' => 176],
    ['name' => 'JavaScript: The Definitive Guide', 'pages' => 1096],
]);
$collection->sum('pages');
// 1272


        //https://tutsforweb.com/15-laravel-collection-methods/
        $filter = $collection->filter(function($value, $key) {
            if ($value['user_id'] == 2) {
                return true;
            }
        });
        $filter->all();


        /************ */
        $names = collect(['Alex', 'John', 'Jason', 'Martyn', 'Hanlin']);
        $names->search('Jason');
        /********* */


        $names = collect(['Alex', 'John', 'Jason', 'Martyn', 'Hanlin']);
$names->search(function($value, $key) {
    return strlen($value) == 6;
});
/******** */


$prices = collect([18, 23, 65, 36, 97, 43, 81]);
$prices = $prices->chunk(3);
$prices->toArray();
/****** */


$collection->whereIn('user_id', [1, 2])
    ->dump()
    ->where('user_id', 1);
    /******** */


    $changed = $collection->map(function ($value, $key) {
        $value['user_id'] += 1;
        return $value;
    });



    return $changed->all();
    /******* */



$collection->whereNotIn('user_id', [1, 2]);
/******* */


$collection->max('user_id');
/******** */


$title = $collection->pluck('title');
$title->all();


$title = $collection->pluck('user_id', 'title');
$title->all();

/******** */
$posts = App\Post::all();
$posts->each(function ($item, $key) {
    // Do something
});
/******* */



$collection->contains('user_id', '1');
// true


$collection->contains('title', 'Not Found Title');
// false

/***** */



    }
}
