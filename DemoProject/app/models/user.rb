require "uuidtools"

class User < Sequel::Model
	unrestrict_primary_key
	class << self
		def create_user(email, name)
			User.create({
					id: UUIDTools::UUID.random_create.hexdigest,
					email: email,
					name: name
			})
		end
	end
end

