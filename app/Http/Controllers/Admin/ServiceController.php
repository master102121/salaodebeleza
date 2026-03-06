<?php

namespace App\Http\Controllers\Admin;

use App\Events\ServiceCreatedEvent;
use App\Events\ServiceDeletedEvent;
use App\Events\ServiceUpdatedEvent;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\ServiceStoreRequest;
use App\Http\Requests\Admin\ServiceUpdateRequest;
use App\Models\Models\Service;
use Illuminate\Http\Request;

class ServiceController extends Controller
{
    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $services = Service::all();

        return view('admin.services.index', compact('services'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        return view('admin.services.create', compact('service'));
    }

    /**
     * @param \App\Http\Requests\Admin\ServiceStoreRequest $request
     * @return \Illuminate\Http\Response
     */
    public function store(ServiceStoreRequest $request)
    {
        $service = Service::create($request->validated());

        event(new ServiceCreatedEvent($service));

        return redirect()->route('admin.services.index');
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Models\Service $service
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request, Service $service)
    {
        return view('admin.services.show', compact('service'));
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Models\Service $service
     * @return \Illuminate\Http\Response
     */
    public function edit(Request $request, Service $service)
    {
        return view('admin.services.edit', compact('service'));
    }

    /**
     * @param \App\Http\Requests\Admin\ServiceUpdateRequest $request
     * @param \App\Models\Models\Service $service
     * @return \Illuminate\Http\Response
     */
    public function update(ServiceUpdateRequest $request, Service $service)
    {
        $service->save();

        event(new ServiceUpdatedEvent($service));

        return redirect()->route('admin.services.index');
    }

    /**
     * @param \Illuminate\Http\Request $request
     * @param \App\Models\Models\Service $service
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request, Service $service)
    {
        $service->delete();

        event(new ServiceDeletedEvent($service));
    }
}
