##install packages
# remotes::install_github("bnicenboim/bcogsci")
# devtools::install_github("hyunjimoon/SBC")
# install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))


## load library
library(MASS)
## be careful to load dplyr after MASS
library(dplyr)
library(tidyr)
library(purrr)
library(extraDistr)
library(ggplot2)
library(loo)
library(bridgesampling)
library(brms)
library(bayesplot)
library(tictoc)
library(hypr)
library(bcogsci)
library(lme4)
library(rstan)
# This package is optional, see https://mc-stan.org/cmdstanr/:
library(cmdstanr)
# This package is optional, see https://hyunjimoon.github.io/SBC/:
library(SBC)
library(SHELF)
library(rootSolve)

## Save compiled models:
rstan_options(auto_write = FALSE)
## Parallelize the chains using all the cores:
options(mc.cores = parallel::detectCores())
# To solve some conflicts between packages:
select <- dplyr::select
extract <- rstan::extract

# remotes::install_github("bnicenboim/bcogsci")
# devtools::install_github("hyunjimoon/SBC")
# install.packages("cmdstanr", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
