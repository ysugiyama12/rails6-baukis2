class Admin::Authenticator
    def initialize(authenticator)
        @authenticator = authenticator
    end

    def authenticate(raw_password)
        @authenticator &&
        # !@staff_member.suspended? &&
        @authenticator.hashed_password &&
        # @staff_member.start_date <= Date.today &&
        # (@staff_member.end_date.nil? || @staff_member.end_date > Date.today) &&
        BCrypt::Password.new(@authenticator.hashed_password) == raw_password
    end
end