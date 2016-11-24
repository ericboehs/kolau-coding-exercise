module ApplicationHelper
  def active_class path
    return unless current_page?(path) && current_page?(root_path)
    'uk-active'
  end
end
