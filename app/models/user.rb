class User < ActiveRecord::Base
    has_secure_password
    # validate :current_password, :on => :update
    # validates :password, :on => :create
    # validates :password_confirmation, presence: true, :on => :update, :unless => lambda{|user| user.password.blank?}
    before_create { generate_token(:auth_token) }
    validates_presence_of :password, :on => :create

   def send_password_reset
        generate_token(:password_reset_token)
        puts "self[column] = " +  self[:password_reset_token]
        self.password_reset_sent_at = Time.zone.now
        save!
        UserMailer.password_reset(self).deliver_now
        puts "I MADDDDDEEEE ITTTTTTTT"
    end

   def generate_token(column)
       begin
        self[column] = SecureRandom.urlsafe_base64
       end while User.exists?(column => self[column]) 
   end
end
