<?php


class JobCalssificationsLookup extends \Eloquent {
    protected $fillable = ['name'];

    protected $table = 'job_classification_lookup';
    protected $primaryKey = 'id';
    public $timestamps = false;
} 