<?php
		require 'flight/Flight.php';

		Flight::route('/', function(){
		    echo 'hello | world!';
		});

		Flight::route('/asp', function(){
		    echo 'hello - world!';
		});

		Flight::start();