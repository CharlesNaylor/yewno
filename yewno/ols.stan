data {
  int<lower=1> N; // # of data points for fit
  int<lower=1> N2; // # data points for validation
  vector[N] y; // initial claims
  vector[N] x; // aggregate trend
  //validation
  real y2[N2]; // (inserted for convenience)
  real x2[N2]; 
}
parameters {
  real alpha; // intercept
  real beta; // beta
  real<lower=0> sigma; //sd of errors
}
model {
//priors
  beta ~ normal(0, 1);
  alpha ~ normal(0, 0.1);
  sigma ~ cauchy(0, 2);
//model
  y ~ normal(alpha+beta*x, sigma);
}
generated quantities {
//validation
  real y_hat[N2];
  for(n in 1:N2)
    y_hat[n] = normal_rng(alpha+beta*x[n], sigma);
}
