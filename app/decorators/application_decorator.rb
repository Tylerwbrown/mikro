class ApplicationDecorator < Draper::Decorator
  def formatted_columns
    self.class.column_names.reject { |e| invisible_columns.include? e }.map { |c| [c.gsub("_", " ").capitalize, self.send(c).to_s] }.to_h
  end

  def invisible_columns
    raise NotImplementedError
  end
end
