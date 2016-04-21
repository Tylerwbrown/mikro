class ApplicationDecorator < Draper::Decorator

  def visible_columns
    attributes.keys.select { |e| visible_column_list.include? e }
  end

  def enabled_columns
    attributes.keys.select { |e| enabled_column_list.include? e }
  end

  def visible_column_list
    raise NotImplementedError
  end

  def enabled_column_list
    raise NotImplementedError
  end

end
