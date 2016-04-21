class UserDecorator < ApplicationDecorator
  delegate_all

  def visible_column_list
    ["id"]
  end

  def enabled_column_list
    ["email", "password"]
  end
end
