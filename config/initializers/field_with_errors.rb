ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if html_tag =~ /<(input|textarea|select)/
      %{<div class="errorExplanation">#{html_tag}</div>}.html_safe
  else
    html_tag
  end
end

