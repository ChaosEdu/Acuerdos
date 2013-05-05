# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	if $('#annual').length > 0
		Morris.Line
			element: 'annual'
			data: [
				{y: '2013', a: 25 }
				{y: '2014', a: 66 }
				{y: '2015', a: 55 }
				{y: '2016', a: 45 }
				{y: '2017', a: 100 }
				{y: '2018', a: 80 }
				{y: '2019', a: 69 }
				{y: '2020', a: 100 }
			]
			xkey: 'y'
			ykeys: ['a']
			labels: ['Series A']