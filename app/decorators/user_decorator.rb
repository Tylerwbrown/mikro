class UserDecorator < ApplicationDecorator
  delegate_all

  def visible_column_list
    ["id"]
  end

  def enabled_column_list
    ["email", "password"]
  end

  def posted_months
    self.posts.order(created_at: :asc).map { |p| p.created_at.strftime('%B') }
  end
end
