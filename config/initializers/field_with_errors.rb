ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
  if html_tag =~ /<(input|textarea|select)/
      %{#{html_tag}<td class="validation-error">&nbsp;
        #{instance.error_message}</td>}.html_safe
  else
    html_tag
  end
end

