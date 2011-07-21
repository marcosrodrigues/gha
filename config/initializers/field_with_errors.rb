ActionView::Base.field_error_proc = Proc.new { |html_tag, instance|
  if html_tag =~ /<(input|textarea|select)/
    %{#{html_tag}
      <td>
        <div class="error-left"></div>
			  <div class="error-inner">Campo obrigatorio.</div>
		  </td>}.html_safe
  else
    html_tag
  end
}

