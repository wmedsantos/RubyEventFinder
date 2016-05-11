module ApplicationHelper
	def avatar_url(user)
      gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
      "http://1.gravatar.com/avatar/#{gravatar_id}.png?s=48&d=mm"
	end
end
