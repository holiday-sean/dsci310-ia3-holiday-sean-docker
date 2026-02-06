FROM rocker/rstudio:4.4.2

RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev

RUN Rscript -e "install.packages('remotes', repos='http://cran.rstudio.com/')"

RUN Rscript -e "remotes::install_version('cowsay', version='1.2.2', repos='http://cran.rstudio.com/')"