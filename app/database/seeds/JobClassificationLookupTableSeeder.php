<?php

use Faker\Factory as Faker;

class JobClassificationLookupTableSeeder extends Seeder{
    public function run()
    {
        $faker = Faker::create();


            JobCalssificationsLookup::create([
                'name' => 'Junior level'
            ]);
            JobCalssificationsLookup::create([
                'name' => 'Senior level'
            ]);

    }
} 