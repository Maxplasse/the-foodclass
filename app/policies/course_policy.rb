class CoursePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def show?
    return true
  end

  # def create?
  #   true
  # end
end
