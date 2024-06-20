<?php

if (!function_exists('convert_number_to_words')) {
    function convert_number_to_words($number)
    {
        $formatter = new \NumberFormatter('en', \NumberFormatter::SPELLOUT);
        return $formatter->format($number);
    }
}
