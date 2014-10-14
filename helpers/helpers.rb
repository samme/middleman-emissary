def page_title
  data.page.title
end

def page_description
  data.page.description
end

def now format
  Time.now.strftime format
end

def middleman_version
  Middleman::VERSION
end

def icon classes, options={}
  content_tag :i, "", options.merge(class: classes)
end

def fa classes
  icon classes.split(" ").map{ |clas| "fa-#{clas}" }.sort().join(" ")
end

def meta name, content
  unless content.empty?
    return tag :meta, content: content, name: name
  end
end

def _image_attr source
  /(?<width>\d+)[x\/](?<height>\d+)/ =~ source
  {height: height, width: width}
end

def holder source, attr={}
  tag :img, attr.merge("data-src" => "holder.js/#{source}")
end

def lorempixel source, attr={}
  image_tag "http://lorempixel.com/#{source}/", attr.merge(_image_attr source)
end

def placeholdit source, attr={}
  image_tag "http://placehold.it/#{source}", attr.merge(_image_attr source)
end

def placekitty source, attr={}
  image_tag "http://placekitten.com/#{source}", attr.merge(_image_attr source)
end

