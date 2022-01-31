library(blogdown)

new_site(theme = "olOwOlo/hugo-theme-even") # create your website!

blogdown::check_site()

# install.packages("rstudioapi")
# library(rstudioapi) # to easily navigate to files
rstudioapi::navigateToFile("config.yaml")

# https://nguyenngocbinh.github.io/
# https://nguyenngocbinh.netlify.app/

blogdown::check_site()

# Personal information

rstudioapi::navigateToFile("netlify.toml") 


blogdown::new_post(title = "My first post",
                   ext = '.Rmarkdown',
                   subdir = "post")


blogdown::check_site()

blogdown::build_site()
