module MailerMacros
    def last_email
        ActionMailers::Base.deliveries.last
    end

    def reset_email
        ActionMailer::Base.deliveries = []
    end
end
