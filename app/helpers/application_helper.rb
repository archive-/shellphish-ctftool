module ApplicationHelper
  def bootstrap_flash(type)
    case type
    when :alert
      'danger'
    when :notice
      'success'
    else
      type.to_s
    end
  end
end
