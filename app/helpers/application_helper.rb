module ApplicationHelper
	def actor_is_editor
		return user_signed_in? && current_user.editor?
	end
end
