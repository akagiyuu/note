= Chapter 4
+ Suppose that contamination particle size $X$ (in micrometers) can be modeled as a continuous random variable with probability density function $f(x) = 3/x^4$ for $x > 1$. Determine the variance of $X$.
    + 0.5
    + 0.25
    + 3
    + 0.75
    + 1

    *Solution* \
    $
        V(X) = integral_1^(+infinity) x^2f(x) - (integral_1^(+infinity) )^2 = integral_1^(+infinity) x^2 3 / x^4 - (integral_1^(+infinity) 3 / x^4)^2 = 0.75
    $
    *Answer*: D

+ A certain baseball player hits a home run in 3% of his at-bats. Consider at-bats as independent events. Use normal distribution to approximate the probability that this baseball player hist 5 home runs in 60 at-bats?
    $
        P(Z<2.80) = 0.9974 " , " P(Z<2.04) = 0.9793 " , " P(Z < 0.8) = 0.7881
    $
    + 0.0181
    + 0.1093
    + 0.1912
    + 0.3923
    + None of the other choices is correct

    *Solution* \
    $X$ is the number of home run in 60 at-bats for this baseball player
    $
        X ~ B(n = 60, p = 0.03) \
    $
    $
        P(X = 5)
        &= P(4.5 <= X <= 5.5) \
        &= P((4.5 - n p) / sqrt(n p (1- p)) <= (X - n p) / sqrt(n p (1- p)) <= (5.5 - n p) / sqrt(n p (1- p))) \
        &approx P((4.5 - 60 dot 0.03) / sqrt(60 dot 0.03 dot (1 - 0.03)) <= Z <= (5.5 - 60 dot 0.03) / sqrt(60 dot 0.03 (1 - 0.03)) ) \
        &approx P(2.04 <= Z <= 2.80) \
        &approx P(Z <= 2.80) - P(Z <= 2.04) \
        &approx 0.9974 - 0.9793 \
        &approx 0.0181
    $
    *Answer*: A

+ If a random variable has a normal distribution with mean $mu = 30$ and standard deviation $sigma = 5$, find the probability that it will take on the value less than 32.
    + 0.3446
    + 0.4207
    + 0.6554
    + 0.5793
    + None of the other choices is correct

    *Solution* \
    $
        X ~ cal(N)(mu = 30, sigma = 5) \
    $
    $
        P(X < 32) = P((X - mu) / sigma < (32 - mu) / sigma) = P(Z < (32 - 30) / 5) = P(Z < 0.4) = 0.6554
    $
    *Answer*: C

+ The volumes of soda in quart soda bottles are normally distributed with a mean of 32.3 oz and a standard deviation of 1.2 oz. What is the probability that the volume of soda in a randomly selected bottle will be less than 32 oz?
    $
        P(Z < -0.3) = 0.3821 " , " P(Z < -0.25) = 0.4013 \
        P(Z < 0.6) = 0.5987 " , " P(Z < 0.85) = 0.8026
    $
    + 0.4013
    + 0.8026
    + 0.3821
    + 0.5987
    + None of the other choices is correct

    *Solution* \
    $
        X ~ cal(N)(mu = 32.3, sigma = 1.2) \
    $
    $
        P(X < 32) = P((X - mu) / sigma < (32 - mu) / sigma) = P(Z < (32 - 32.3) / 1.2) = P(Z < -0.25) = 0.4013
    $
    *Answer*: A
