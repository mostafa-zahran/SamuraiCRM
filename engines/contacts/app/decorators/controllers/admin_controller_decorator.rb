Samurai::Admin::AdminController.class_eval do
  #Solution 1
  before_action :last_n_contacts, only: :index

  private

  def last_n_contacts
    @last_n_contacts= Samurai::Contacts::Contact.all.limit(3)
  end

  #Solution 2
  # alias_method :old_index, :index
  # def index
  #   old_index
  #   @last_n_contacts= Samurai::Contacts::Contact.all.limit(3)
  # end
end