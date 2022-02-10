class Student < ApplicationRecord
	belongs_to :user
	validates :name, presence: true,
                    length: { minimum: 5 }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
#  <u><%= form.label :image %></u><br><br>
  # <%= form.file_field :image %><br><br>
  # <td><%image_tag @post.image if @post.image.attached? %></td>