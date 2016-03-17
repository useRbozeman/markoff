data {
    int<lower=0> n1obs;
    int<lower=0> n2obs;
    int<lower=0> n3obs;
    int<lower=0> n1cens;
    int<lower=0> n2cens;
    int<lower=0> n3cens;
    real y1obs[n1obs];
    real y2obs[n2obs];
    real y3obs[n3obs];
    real y1cens[n1cens];
    real y2cens[n2cens];
    real y3cens[n3cens];
}

parameters {
    real<lower=0> mu1;
    real<lower=0> mu2;
    real<lower=0> mu3;
    real<lower=0> sigma;
}

model {
    mu1 ~ normal(20, 10);
    mu2 ~ normal(20, 10);
    mu3 ~ normal(20, 10);
    sigma ~ normal(0, 10);
    y1obs ~ normal(mu1, sigma);
    y2obs ~ normal(mu2, sigma);
    y3obs ~ normal(mu3, sigma);
    increment_log_prob(normal_ccdf_log(y1cens, mu1, sigma));
    increment_log_prob(normal_ccdf_log(y2cens, mu2, sigma));
    increment_log_prob(normal_ccdf_log(y3cens, mu3, sigma));
}

generated quantities {
    real cut_rain;

    cut_rain <- mu1 - mu2;
}
