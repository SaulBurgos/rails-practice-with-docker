# Rails uses a concept called "schema reflection". When you generate a model using scaffolding or create a migration, Rails creates a migration file that defines the database schema for your model.
# The properties (like name and email in this case) are defined in the migration file, which is typically located in db/migrate/YYYYMMDDHHMMSS_create_users.rb.
# Rails automatically reads the schema from the database and makes these attributes available to your model without you having to explicitly define them in the model file.
# You can verify this by checking the db/schema.rb file, which reflects the current state of your database schema

class User < ApplicationRecord
    before_save { self.email = email.downcase }
    has_many :microposts
    validates :name,  presence: true, length: { maximum: 50 }
    validates :password, length: { minimum: 6 }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX } , uniqueness: true
    has_secure_password
end


