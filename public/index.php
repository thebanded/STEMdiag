<?php
		require 'flight/Flight.php';
		
		Flight::route('/asp', function(){
		    echo 'hello world!';
		});

		Flight::route('/', function(){
		    echo 'hello | world!';
		});

		Flight::start();