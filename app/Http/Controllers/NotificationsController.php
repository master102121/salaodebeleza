<?php

namespace App\Http\Controllers;
use App\Models\Notification;
use App\Models\User;
use Illuminate\Http\Request;

class NotificationsController extends Controller
{

     public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $notifications = Notification::get();
        return view('notifications.index')->with("notifications", $notifications);
    }



    public function create()
    {
         return view('notifications.create');
    }


    public function store(Request $request)
    {
        //
    }


    public function show(Facilitador $facilitador)
    {
        //
    }


    public function edit(Facilitador $facilitador)
    {
        //
    }


    public function update(Request $request, Facilitador $facilitador)
    {
        //
    }


    public function destroy(Facilitador $facilitador)
    {
        //
    }
}
