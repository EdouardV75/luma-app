class UserPolicy < ApplicationPolicy
    def dashboard?
      user.office_manager?
    end

    def confirmed?
      true
    end
end
