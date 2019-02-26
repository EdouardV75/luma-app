
  class UserPolicy < ApplicationPolicy

    def dashboard?
      user.office_manager?
      raise
    end

  # def create?
  #   user ? true : false
  # end

  # def update?
  #   record.user == user
  # end

  # def destroy?
  #   record.user == user
  # end
end
