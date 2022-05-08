module ApplicationHelper
  def platform_name
    return "development" if Rails.env.development?
    return ENV.fetch("PLATFORM_NAME", nil)
  end
end
