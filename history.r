blogdown::new_site(theme = "devcows/hugo-universal-theme")

download.file(

"https://github.com/jcolomb/hugrid/archive/master.zip",
destfile ="themes/hugrid.zip")

unzip("themes/hugrid.zip", exdir= "themes")

#delete zip file manually
#copy and rename confighug.toml
# copy item.toml and images
# modify confighug.toml, see commit history

blogdown::hugo_cmd("--config confighug.toml,config-common.toml") #bulid dat version
blogdown::serve_site()

blogdown::stop_server()
