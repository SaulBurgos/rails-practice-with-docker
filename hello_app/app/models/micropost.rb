# You're right to notice that the properties aren't explicitly defined in the model file. Here's why:

# Rails uses a concept called "schema reflection". When you generate a model using scaffolding, Rails creates a migration file that defines the database schema for your model.
# The properties (content and user_id in this case) are defined in the migration file, which is typically located in db/migrate/YYYYMMDDHHMMSS_create_microposts.rb.
# Rails automatically reads the schema from the database and makes these attributes available to your model without you having to explicitly define them in the model file.
# You can verify this by checking the db/schema.rb file or by using rails console and inspecting the Micropost model's attributes.

class Micropost < ApplicationRecord
    belongs_to :user
    validates :content, length: { maximum: 140 },  presence: true
end
