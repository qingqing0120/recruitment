<?php

class ErrorsController extends \BaseController {

    /**
     * Display a listing of experiences
     *
     * @return Response
     */
    public function unauthorized()
    {
        return View::make('errors.unauthorized');
    }

} 