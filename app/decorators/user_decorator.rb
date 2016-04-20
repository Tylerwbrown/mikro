class UserDecorator < ApplicationDecorator
  delegate_all

  def invisible_columns
    ["password_digest", "name"]
  end
end
