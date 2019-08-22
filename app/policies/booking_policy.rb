class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    record.article.user != user
  end
  # record -> Booking.new(article_id)
end
