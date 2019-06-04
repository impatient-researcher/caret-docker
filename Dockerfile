FROM jrowen/dcaret
LABEL maintainer="YAN Ting Hin <yantinghin@cuhk.edu.hk>"

# Install other libraries
RUN install2.r --error \
        midasr \
    && R -e "install.packages('https://cran.r-project.org/src/contrib/Archive/lqa/lqa_1.0-3.tar.gz', repo=NULL, type='source'); \
    install.packages('https://cran.r-project.org/src/contrib/Archive/genlasso/genlasso_1.3.tar.gz', repo=NULL, type='source')"
