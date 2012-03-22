include Nanoc3::Helpers::Rendering
include Nanoc3::Helpers::LinkTo
include Nanoc3::Helpers::Blogging

def urlify(url)
  url =~ /http:/ ? url : relative_path_to(url)
end

def amzn(file)
  File.join "http://s3.amazonaws.com/bioinfsurvey/", file
end

def image(url,width=500,options={})
  link = "<img src='#{urlify(url)}' width=#{width}>"
  if options[:link]
    link = "<a href='#{urlify(options[:link])}'>#{link}</a>"
  end
  link
end

def stylesheet(location, media = 'screen,projection')
  "<link href='#{location}' media='#{media}' rel='stylesheet' type='text/css'>"
end

def google_fonts
  return unless @site.config[:google_fonts]
  output = String.new
  @site.config[:google_fonts].each do |font_name,fonts|
    family = font_name.to_s + ':' + fonts * ','
    link = "http://fonts.googleapis.com/css?family=#{family}&amp;subset=latin"
    output << "<link href='#{link}' media='all' type='application/x-font-woff'>\n"
  end
  output
end

def google_apps_verification
  '<meta name="google-site-verification" content="ceHFO1rQHYwXm0zmHGwh8_jjOr5WwufeOf9cWmvDPL8" />'
end

def scripts
  return unless @site.config[:scripts]
  output = String.new
  @site.config[:scripts].each do |script|
    script = relative_path_to(script) unless script =~ /^http/
    output << "<script src='#{script}' type='text/javascript'></script>\n"
  end
  output
end

def stylesheets
  return unless @site.config[:stylesheets]
  output = String.new
  @site.config[:stylesheets].each do |sheet,media|
    sheet = sheet.to_s
    sheet = relative_path_to(sheet) unless sheet =~ /^http/
    output << stylesheet(sheet,media) + "\n"
  end
  output
end

def favicon
  if @site.config[:site][:favicon]
    return "<link href='#{@site.config[:site][:favicon]}' rel='shortcut icon' >"
  end
end

def site_title
  title = Array.new
  title << @item[:title] if (@item[:title] && @item[:title] != "")
  title << @site.config[:site][:title]
  title.compact.uniq * " | "
end

def pretty_date(item)
  Time.parse(item[:created_at]).strftime('%b %d %y')
end

def time_for(time)
  Time.parse(time).xmlschema
end
