module ApplicationHelper
	def custom_submit(model_instance, on_new, on_edit)
		# return '' unless model_instance.is_a? ActiveRecord
		model_instance.new_record? ? on_new : on_edit
	end
end
