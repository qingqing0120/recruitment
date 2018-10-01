<?php

class Vacancy extends \Eloquent {

	// Add your validation rules here
	public static $rules = [
		// 'title' => 'required'
	];

	//Don't forget to fill this array
	protected $fillable = ['title', 'location', 'open_date', 'closing_date', 'classification', 'company_id', 'cat_id', 'salary', 'summary', 'description', 'responsibilities', 'qualifications_experience', 'skills_knowledge', 'posted_user'];

    public function user(){
        return $this->belongsTo('User');
    }

    public static function getApplication($status)
    {
        switch($status) {
            case 0:
                return 'Please wait for the response';
            case 1:
                return 'Reject';
                break;
            case 2:
                return 'Waitlist';
                break;
            case 3:
                return 'Receive';
                break;
            default:
                return 'Unknown';
                break;
        }
    }

}