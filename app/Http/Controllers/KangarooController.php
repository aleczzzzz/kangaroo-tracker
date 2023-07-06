<?php

namespace App\Http\Controllers;

use App\Models\Kangaroo;
use App\Http\Requests\StoreKangarooRequest;
use App\Http\Requests\UpdateKangarooRequest;
use App\Http\Resources\KangarooCollection;
use App\Http\Resources\KangarooResource;
use Illuminate\Http\Request;

class KangarooController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function indexPage()
    {
        return view('kangaroos.index');
    }

    public function index()
    {
        $kangaroos = Kangaroo::orderBy('name')->get();
        return KangarooResource::collection($kangaroos);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreKangarooRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreKangarooRequest $request)
    {
        $kangaroo = Kangaroo::create($request->validated());

        return response()->json([
            'message' => 'Successfully Saved Kangaroo.'
        ], 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Kangaroo  $kangaroo
     * @return \Illuminate\Http\Response
     */
    public function show(Kangaroo $kangaroo)
    {
        return new KangarooResource($kangaroo);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Kangaroo  $kangaroo
     * @return \Illuminate\Http\Response
     */
    public function edit(Kangaroo $kangaroo)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateKangarooRequest  $request
     * @param  \App\Models\Kangaroo  $kangaroo
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateKangarooRequest $request, Kangaroo $kangaroo)
    {
        $kangaroo->update($request->validated());

        return response()->json([
            'message' => 'Successfully Updated Kangaroo.'
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Kangaroo  $kangaroo
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kangaroo $kangaroo)
    {
        $kangaroo->delete();

        return response()->json([
            'message' => 'Successfully Deleted Kangaroo.'
        ], 200);
    }

    public function checkName(Request $request)
    {
        $kangaroos = Kangaroo::where('name', 'LIKE', '%' . $request->value . '%')->count();

        return response()->json([
            'exists' => $kangaroos ? true : false,
            'message' => $kangaroos ? 'Kangaroo name already exist.' : 'Kangaroo name available.'
        ], 200);
    }
}
