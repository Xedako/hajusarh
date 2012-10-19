function collectFormData($form) {
		var data = {};
		$inputs = $form.find(".input-group input");
		for (var i = 0; i < $inputs.length; i++) {
			var $input = $($inputs[i]);
			data[$input.attr('id')] = $input.val();
		}
		return data;
	}
		
function bindAjaxValidation(formActionUrl){
	var $form = $('form[action="'+formActionUrl+'"]');
	$form.bind('submit', function(e) {
		// Ajax validation
		var data = collectFormData($form);
		console.debug('Form was submitted to url ['+formActionUrl+']. Sending data:');
		console.debug(data);
		$.post(formActionUrl, data, function(response) {
			console.debug("Responsed data for requested URL["+formActionUrl+"]:");
			console.debug(response);
			$form.find('div.input-error, div.success').hide();
			if (response.status == 'FAIL') {
				console.debug("Form validation failed.");
				console.debug("Form has "+ response.errorMessages.length +" errors.");
				for (var i = 0; i < response.errorMessages.length; i++) {
					var item = response.errorMessages[i];
					console.debug("Show error message ["+ item.message +"] for ["+item.fieldName+"] element");
					var $inputGroup = $form.find('div.input-group[name="' + item.fieldName + '"]');
					$inputGroup.find(".input-error").text(item.message).show();
				}
			}else if (response.status == 'SUCCESS'){
				$form.find('div.success').show();
				console.debug($form.find('div.success'));
			}
		}, 'json');
		e.preventDefault();
		return false;
	});
}

function dateTimePicker(inputSelector){
	this.init = function(){
		$(document).ready(function() {
			console.debug("DateTimePicker was initialized for element["+inputSelector+"]");
			$(inputSelector).datepicker()
		});
	};
}
