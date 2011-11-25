class IssueConfirmationViewHooks < Redmine::Hook::ViewListener
  def view_layouts_base_body_bottom(context = {})
    <<END
<script type="text/javascript">
//<![CDATA[
  // 作成ボタン、連続作成ボタン
  Event.observe(window, 'load', function(){
    var new_button_names = ['commit', 'continue'];
    for (var i = 0 ; i < new_button_names.length; i++) {
      var button = document.getElementsByName(new_button_names[i])[0];
      Event.observe(button, 'click', function(e) {
        if (!confirm('よろしいですか?')) {
          e.stop();
        }
      });
    }
  });
//]]>
</script>
END
  end
end
