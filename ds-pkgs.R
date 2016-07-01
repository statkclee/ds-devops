##==============================================================================================
## 0. R VagrantFile 팩키지 설치
##==============================================================================================
# 참조: https://github.com/dkilfoyle/vagrant-rstudio/blob/master/usefulpackages.R

##==============================================================================================
## 1. CRAN 팩키지 설치
##==============================================================================================
# CRAN 미러 설정 
options("repos"="http://cran.rstudio.com")

packages = c("devtools","ggplot2","dplyr","tidyr","RcppEigen", "stringr","gridExtra",
             "RCurl","RJSONIO","RJDBC","knitr","lme4", "latticeExtra",
             "XLConnect","Cairo","opencpu","rstudio")
packages = setdiff(packages, installed.packages()[,"Package"])
if (length(packages) != 0){
  (install.packages(packages, dep=c("Depends", "Imports")))
}

##==============================================================================================
## 2. GitHub 팩키지 설치
##==============================================================================================
# CRAN 미러 설정 
ghpackages = c("rstudio/htmltools","trestletech/shinyTable","rstudio/rmarkdown","rstudio/shiny")
devtools::install_github(ghpackages)
update.packages(ask=FALSE)
