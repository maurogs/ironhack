class MoviePolicy < ApplicationPolicy
	def index?
		true
	end

	def show?
		true
	end

	def create?
		user.try(:admin?) || user.try(:superadmin?)
	end

	def update?
		user.try(:admin?) || user.try(:superadmin?)
	end

	def destroy?
		user.try(:admin?) 
	end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
