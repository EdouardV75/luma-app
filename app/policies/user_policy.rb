
  class UserPolicy < ApplicationPolicy

    def dashboard?
      user.office_manager?
    end
end
