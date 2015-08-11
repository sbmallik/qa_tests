require "capybara_wysihtml5/version"


module Capybara
  module Wysihtml5Helper
    def fill_in_wysihtml5(text)
      #js must be enabled
      page.execute_script("wysihtml5.editor.setValue('#{text}')")
    end
  end
end

=begin

  module Wysihtml5
    def fill_in_wysihtml5(css_id, options = {})
      options[:with] ||= ''
      page.execute_script("$('##{css_id}').data('wysihtml5').editor.setValue('#{options[:with]}');")
    end
  end



module FillInWysihtml5
  def fill_in_wysihtml5(label, opts={})
    page.execute_script <<-JAVASCRIPT
      var id = $("label:contains(#{label})").attr("for");
      $("#" + id).data("wysihtml5").editor.setValue("#{opts[:with]}");
    JAVASCRIPT
  end
end


	<div class='form-group article-content'>
      <div class='input-group required container body-editor'>
        <label class='sr-only' for="message"><label for="body">Body</label></label>
        <textarea class="form-control" id="article-body-editor" name="body" placeholder="Text here..." value=""></textarea>
      </div>
    </div>


module Capybara

  module Wysihtml5Helper
    def fill_in_wysihtml5(text)
      #js must be enabled
      $('#textarea-id').wysihtml5().data("wysihtml5").editor.setValue('test');
      page.execute_script("editor.setValue('#{text}')")
    end
  end
end
=end