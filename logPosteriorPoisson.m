function [logpdf, gradlogpdf] = logPosteriorPoisson(Parameters,X,lambdaPrior_a,lambdaPrior_b,n)
% "Parameters" is the lambda parameter in Poisson distribution
% "X" is the voltage sag data from MCS
% "lambdaPrior_a" and "lambdaPrior_b" are the prior values of lambda

% Unpack the parameter vector
lambda        = Parameters(1);

% Compute the log likelihood and its gradient
u                       = lambda;
loglik                  = sum(X.*log(u)-u-log(factorial(X)));
grad_u                  = (1/u).*sum(X)-n;   

% Compute log priors and gradients
[logprior, gradlog]=gammaPriorlog(u,lambdaPrior_a,lambdaPrior_b,n);

% % Return the log posterior and its gradient
logpdf               = loglik + logprior;
gradlogpdf           = grad_u+gradlog;
end

% Compute the log prior for Gamma distribution 
function [logpdf,gradlog] = gammaPriorlog(P,alfa,beta,n)
logpdf = n*log(1/beta)+(alfa-1)*sum(log(P))-n*log(gamma(alfa))-(1/beta)*sum(P);
gradlog = (alfa-1)*sum(1./P)-(1/beta);
end
