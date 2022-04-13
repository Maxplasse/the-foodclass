class PostPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
  def index?
    true
  end
  def create?
    record.course.in? user.courses_as_participant.where("ends_at < ?", Time.now)
  end
  def destroy?
    record.participation.user == user
  end
end
