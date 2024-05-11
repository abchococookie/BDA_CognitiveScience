source("pkg.R")

data("df_pupil_pilot")
df_pupil_pilot$p_size %>% summary()
qnorm(c(0.025, 0.975), mean = 1000, sd = 500)

# 4.1 A first regression model: does the attentional load affect pupil size?
# centering predictor variable
data("df_pupil")
df_pupil <- df_pupil %>% mutate(c_load = load - mean(load))

# fit brms model
fit_pupil <- brm(p_size ~ 1 + c_load, data = df_pupil, family = gaussian(),
                 prior = c(prior(normal(1000,500), class = Intercept),
                           prior(normal(0, 1000), class = sigma),
                           prior(normal(0, 100), class = b, coef = c_load)))
plot(fit_pupil)

# how likely the pupil size increases rather than decreases
mean(as_draws_df(fit_pupil)$b_c_load > 0)

# check descriptive adequacy
for (i in 0:5)