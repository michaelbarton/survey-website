

def start_form(form_key,redirect)
  <<-EOS
<script type="text/javascript">var submitted=false;</script>
<iframe name="hidden_iframe"
  id="hidden_iframe"
  style="display:none;"
  onload="if(submitted) {window.location='#{relative_path_to redirect}';}">
</iframe>
<form
  action="https://docs.google.com/spreadsheet/formResponse?hl=en_GB&amp;formkey=#{form_key}"
  method="post"
  target="hidden_iframe"
  onsubmit="submitted=true;"> 
  EOS
end


