(function (document) {
	'use strict';

	var LightTableFilter = (function (Arr) {
		var input;
		function onInputEvent(e) {
			input = e.target;
			var tables = document.getElementsByClassName(input.getAttribute('data-table'));
			Arr.forEach.call(tables, function (table) {
				Arr.forEach.call(table.tBodies, function (tbody) {
					Arr.forEach.call(tbody.rows, filter);
				});
			});
		}

		function filter(row) {
			var text = row.textContent.toLowerCase(), val = input.value.toLowerCase();
			row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
		}

		return {
			init: function () {
				var inputs = document.getElementsByClassName('light-table-filter');
				Arr.forEach.call(inputs, function (input) {
					input.oninput = onInputEvent;
				});
			}
		};
	})(Array.prototype);

	document.addEventListener('readystatechange', function() {
		if (document.readyState === 'complete') {
			LightTableFilter.init();
		}
	});

})(document);