class Client < ApplicationRecord
	enum :status ,[:active,:inactive]
	#has_secure_password
end
