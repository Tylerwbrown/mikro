class UserDecorator < ApplicationDecorator
  delegate_all

  def invisible_columns
    ["password_digest", "name", "remember_digest"]
  end
end
