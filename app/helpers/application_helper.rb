module ApplicationHelper
  def display_field(field)
    field.join(', ') if field
  end

  def render_panel(field_name: '', field_data: '')
    @panel_number = (@panel_number || 0) + 1
    render(partial: 'shared/panel', locals: { field_name: field_name, field_data: field_data })
  end

  def panel_id
    "panel#{@panel_number}"
  end
end
