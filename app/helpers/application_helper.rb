module ApplicationHelper
  def display_field(field)
    field.join(', ') if field
  end
end
