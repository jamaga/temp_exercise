module ApplicationHelper
  def flash_css_class(type)
    { alert: "alert-warning", notice: "alert-info", success: "alert-success", error: "alert-danger" }[type]
  end
end
