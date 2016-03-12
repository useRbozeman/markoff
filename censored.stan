data {
    int<lower=0> Nobs;
    int<lower=0> Ncens;
    real yobs[Nobs];
    real<lower=max(yobs)> U;
}

parameters {
    real<lower=0> lambda;
}

model {
    yobs ~ exponential(lambda);
    increment_log_prob(Ncens * exponential_ccdf_log(U, lambda));
}
