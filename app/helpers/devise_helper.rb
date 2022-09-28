# frozen_string_literal: true

module DeviseHelper
    def bootstrap_devise_error_messages!
      return '' if resource.errors.empty?
      messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
      puts messages
      html = <<-HTML
      <div class="alert alert-error alert-danger" role="alert"> <button type="button"
      class="close" data-dismiss="alert">x</button>
        #{messages}
      </div>
      HTML
  
      html.html_safe
    end
  end