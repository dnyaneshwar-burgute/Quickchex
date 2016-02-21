class ContactList < ActiveRecord::Base
	validates :name, :contact, presence: true
  def self.search(search)
    if search
      ContactList.where("contact like ?", "%#{search}%")
    else
      ContactList.all
    end
  end
end
