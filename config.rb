# Middleman Config
#
# http://middlemanapp.com/advanced/configuration/

require 'uglifier'

set :css_dir,      'assets/css'
set :fonts_dir,    'assets/fonts'
set :images_dir,   'assets/img'
set :js_dir,       'assets/js'
set :partials_dir, 'partials'

set :markdown_engine, :redcarpet
set :relative_links, true
set :sass_assets_paths, ["bower_components"] # necessary?

# Extensions

# https://github.com/porada/middleman-autoprefixer#configuration
activate :autoprefixer do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
end

# https://github.com/plasticine/middleman-imageoptim#usage
activate :imageoptim

# https://github.com/kaiinui/middleman-inliner
# provides:
#
# `stylesheet_inline_tag`
# `javascript_inline_tag`
#
# activate :inliner

# https://github.com/middleman/middleman-livereload#configuration
activate :livereload, {
  no_swf: true
}

# Add bower's directory to sprockets asset path
after_configuration do
  sprockets.append_path File.join "#{root}", "bower_components"
end

# Build-specific configuration
configure :build do
  # activate :asset_hash
  # activate :cache_buster
  # activate :gzip
  activate :minify_css
  activate :relative_assets

  # https://github.com/paolochiodi/htmlcompressor#usage
  activate :minify_html, {
    remove_http_protocol:      false,
    remove_link_attributes:    true,
    remove_script_attributes:  true,
    remove_style_attributes:   true,
    simple_boolean_attributes: true
  }

  # https://github.com/lautis/uglifier#usage
  activate :minify_javascript, compressor: ::Uglifier.new(
    compress: {
      drop_console: true
  })
end

# ftp deployment configuration.
# activate :deploy do |deploy|
#   deploy.method = :ftp
#   deploy.host = "ftp-host"
#   deploy.user = "ftp-user"
#   deploy.password = "ftp-password"
#   deploy.path = "ftp-path"
# end
