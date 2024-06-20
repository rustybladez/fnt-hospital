<?php

namespace App\Helpers;

use Carbon\Carbon;

class AgeHelper
{
    public static function calculateAge($dob)
    {
        $dob = Carbon::parse($dob);
        $now = Carbon::now();

        if ($dob->diffInYears($now) > 1) {
            return $dob->diffInYears($now) . 'Y 0M 0D';
        } else {
            $years = $dob->diffInYears($now);
            $months = $dob->diffInMonths($now) % 12;
            $days = $dob->diffInDays($now) % 30;

            return "{$years}Y {$months}M {$days}D";
        }
    }
}
