= Chapter 3
+ Assume that male and female births are equally likely and that the birth of any child does not affect the probability of any other children. Find the probability of at most three boys in ten births.
    + 0.333
    + 0.172
    + 0.003
    + 0.300
    + None of the other choices is correct

    *Solution* \
    $X$ is the number of boys in ten births
    $
        X ~ B(n = 10, p = 0.5)
    $
    $
        P(X < 3) = sum_(x=0)^3 binom(n, x) 0.5^x 0.5^(n-x) approx 0.172
    $
    *Answer*: B

+ In a certain manufacturing process it is known that, on the average, 1 in every 100 items is defective. What is the probability that the fifth item inspected is the first defective item found?
    + 0.0099
    + 0.8879
    + 0.6879
    + 0.0096
    + None of the other choices is correct

    *Solution* \
    $X$ is the number of items inspected until the first defective item found
    $
        X ~ G(p = 0.01)
    $
    $
        P(X = 5) = (1-p)^4 dot p approx 0.0096
    $
    *Answer*: D

+ There are calculation errors in 3 out of a package of 12 invoices. An auditor checks a random sample of 7 invoices from the package. What are the probabilities of finding all 3 errors in the sample?
    + 0.1591
    + 0.1996
    + 0.8327
    + 0.0031
    + None of the other choices is correct

    *Solution* \
    $X$ is the number of errors in the sample
    $
        X ~ "HG"(N=12,K=3,n=7)
    $
    $
        P(X = 3) = (binom(K, 3) dot binom(N -k, n  - 3)) / binom(N, n) approx 0.1591
    $
    *Answer*: A

+ Let X and Y be two discrete uniform distributions with E(X) = 1 and E(Y) = 10. Find the value of E(10X + Y).

    *Solution* \
    $
        E(10X-Y) = 10E(X) +E(Y) = 0
    $

+ The number of times that Cuong stops at traffic lights follows a Poisson distribution with a mean of one stop per kilometer. Find the probability that he only stops at at most two traffic lights during a 5-kilometer ride.
    + 0.125
    + 0.098
    + 0.134
    + 0.212
    + none of the other choices is correct

    *Solution* \
    $X$ is the number of times that Cuong stops at traffic lights
    $
        X ~ P(lambda = 5)
    $
    $
        P(X < 2) = sum_(x=0)^2 (e^(-lambda) lambda^x) / x! approx 0.125
    $
    *Answer*: A

+ A batch of 500 machined parts contains 15 that do not conform to customer requirements. The random variable is the number of parts in a sample of ten parts that do not conform to customer requirements. What is the range of the random variable?
    + Integers from 0 to 10
    + Integers from 0 to 15
    + Integers from 10 to 500
    + Real numbers from 0 to 10
    + Real numbers from 0 to 15

    *Solution* \
    $X$ is the number of parts in a sample of ten parts that do not conform to customer requirements
    $
        X ~ "HG"(N=500, K = 15, n = 10)
    $
    $
        max{ 0, n + K - N} < X < min{ n, K } => 0 < X < 10
    $
    *Answer*: A
+ A batch contains 52 bacteria cells. Assume that 13 of cells are not good. Five cells are selected at random without replacement. What is the probability that all five cells of selected cells are not good?
    + None of the others
    + 0.945
    + 0.0002215
    + 0.257
    + 0.0004952

    *Solution* \
    $X$ is the number of not good cells in the sample
    $
        X ~ "HG"(N = 52, K = 13, n = 5)
    $
    $
        P(X=5) = (binom(K, 5) dot binom(N - k, 0)) / binom(N, n) approx 0.0004952
    $
    *Answer*: E

+ A single six-sided die is rolled. Find the probability of rolling a number at most 5.
    + 0.333
    + 0.667
    + 0.833
    + 0.5
    + None of the others choices is correct

    *Solution* \
    $X$ is the number rolled
    $
        X ~ U\{1,6\}
    $
    $
        P(X < 5) = 5 / 6
    $
    *Answer*: C

+ Let X be a continuous random variable with E(X) = 10 and $E(X^2)$ = 100. Find V(X).

    *Solution* \
    $
        V(X) = E(X^2) +E(x)^2 = 0
    $

+ Assume that each of your calls to a popular radio station has a probability of 0.02 of connecting, that is, of not obtaining a busy signal. Assume that your calls are independent. What is the probability that your first call that connects is your tenth call?
    + 0.0167
    + 0.1670
    + 0.8320
    + 0.9833

    *Solution* \
    $X$ is the number of call until the first connected call
    $
        X ~ G(p=0.02)
    $
    $
        P(X=10) = (1-p)^9 dot p approx 0.0167
    $
    *Answer*: A

+ A statistics professor finds that when he schedules an office hour at the 10:30 a.m. time slot, an average of three students arrive. Use the Poisson distribution to find the probability that in a randomly selected office hour in the 10:30 a.m. time slot exactly five students will arrive.
    + 0.0070
    + 0.1008
    + 0.519
    + 0.0137
    + none of the other choices is correct

    *Solution* \
    $X$ is the number of students whom will arrive
    $
        X ~ P(lambda = 3)
    $
    $
        P(X = 5) = (e^(-lambda) lambda^5) / 5! approx 0.1008
    $
    *Answer*: B

+ Suppose that a random variable X has the discrete uniform distribution on the integers 10,...,20. Find P(X = 7).

    *Solution* \
    $
        X ~ U\{ 10, 20\}
    $
    $
        P(X=7) = 1 / (b - a + 1) = 0.1
    $

+ Messages arrive at a switchboard in a Poisson manner at an average rate of five per hour. Find the probability for each of the following event: "At least three messages arrive within one hour"
    + 0.0380
    + 0.9976
    + None of the other choices is correct
    + 0.0620
    + 0.875

    *Solution* \
    $X$ is the number of message arrived within one hour
    $
        X ~ P(lambda = 5)
    $
    $
        P(X > 3) = 1 - P(X < 2) = 1 - sum_(x = 0)^2 (e^(-lambda) lambda^x) / x! approx 0.875
    $
    *Answer*: E

+ Suppose X has a hypergeometric distribution with N=20, n = 4, and K = 4. Find P(X=3) and $P(X  <  3)$
    + None of the other choises is correct
    + 0.9866 and 0.0134
    + 0.9866 and 0.00012
    + 0.0132 and 0.99998
    + 0.00021 and 0.99979

    *Solution* \
    $
        P(X= 3) = (binom(K, 3) binom(N-K, n - 3)) / binom(N, n) approx 0.0132
    $
    $
        P(X < 3) = sum_{x=0}{3} (binom(K, x) binom(N-K, n - x)) / binom(N, n) approx 0.99979
    $
    *Answer*: B

+ The probability of a successful optical alignment in the assembly of an optical data storage products is 0.8. Assume the trials are independent. What is the probability that the first successful alignment requires exactly four trials?
    + 0.0064
    + 0.1262
    + 0.4332
    + 0.6756

    *Solution* \
    $X$ is the number trials until the first successful
    $
        X ~ G(p = 0.8)
    $
    $
        P(X = 4) = (1- p)^3 p = 0.0064
    $
    *Answer*: A

+ The random variable X has a binomial distribution with n = 10 and p = 0.5. Which in the following statements is TRUE?
    + $P(X > 9) = 0.0107$
    + $P(X < 2) = 0.0547$
    + All of the others.
    + $P(X = 5) = 0.2461$

    *Solution* \
    $
        X ~ B(n = 10, p = 0.5)
    $
    $
        P(X > 9) = 1 - P(x < 8) = 1 - sum_(x = 0)^8 binom(n, x) p^10 approx 0.0107
    $
    $
        P(x < 2) = sum_(x = 0)^2 binom(n, x) p^10 approx 0.0547
    $
    $
        P(X=5) = binom(n, 5) p^10 approx 0.2461
    $
    *Answer*: C

+ Let the random variable X have a discrete uniform distribution on the integer 0 < x < 100. Find the mean and variance of X.
    + None of the others
    + 50 and 861.6667
    + 50 and 816.6667
    + 50 and 850
    + 49.5 and 850

    *Solution* \
    $
        X ~ U\{ 1, 99 \}
    $
    $
        mu = (a + b) / 2 = 50
    $
    $
        sigma^2 = ((b - a + 1)^2 - 1) / 12 approx 816.6667
    $
    *Answer*: C

+ A batch contains 52 bacteria cells. Assume that 13 of cells are not good. Five cells are selected at random, without replacement. What is the probability that all five cells of selected cells are not good?
    + None of the other choices is correct
    + $4.952 dot 10^(-4)$
    + 0.495
    + 0.221
    + 0.221

    *Solution* \

    $X$ is the number of not good cells in the sample
    $
        X ~ "HG"(N = 52, K = 13, n = 5)
    $
    $
        P(X=5) = (binom(K, 5) dot binom(N - k, 0)) / binom(N, n) approx 4.952 dot 10^(-4)
    $
    *Answer*: B

+ Messages arrive at a switchboard in a Poisson manner at an average rate of five per hour. Find the probability for each of the following event: "No message arrives within one hour"
    + 0.4046
    + 0.0067
    + 0.4460
    + None of the other choices is correct
    + 0.4406

    *Solution* \
    $X$ is the number of message arrived per hour
    $
        X ~ P(lambda = 5)
    $
    $
        P(X=0) = (e^(-lambda) lambda^0) / 0! approx 0.0067
    $
    *Answer*: B

+ Suppose the probability that item produced by a certain machine will be defective is 0.2. Find the probability that 10 items will contain at most one defective item. Assume that the quality of successive items is independent.
    + 0.27
    + None of these
    + 0.73
    + 0.38
    + 0.63

    *Solution* \
    $X$ is the number of defective item
    $
        X ~ B(n = 10, p = 0.2)
    $
    $
        P(X < 1) = sum_(x=0)^1 binom(n, x) p^x (1-p)^(n - x) approx 0.38
    $
    *Answer*: D

+ Let the random variable X have a discrete uniform distribution on the integers $1  <  x  <  35$. Determine the mean and variance of X.
    + 17.5 and 102
    + None of the others
    + 17 and 102
    + 18 and 102

    *Solution* \
    $
        X ~ U\{ 1, 35 \}
    $
    $
        mu = (a + b) / 2 = 18
    $
    $
        sigma^2 = ((b-a+1)^2 - 1) / 12 = 102
    $
    *Answer*: D

+ Let X be a binomial random variable with p = 0.1 and n = 10. Calculate the following probability: $P(X > 2)$ and $P(X  <  8)$
    + 0.702 and 0.999
    + None of others.
    + 0.9892 and 1
    + 0.702 and 1
    + 0.0702 and 0

    *Solution* \
    $
        X ~ B(n = 10, p = 0.1)
    $
    $
        P(X > 2) = 1 - P(X < 2) = 1 - sum_(x=0)^2 binom(n, x) p^x (1-p)^(n-x) approx 0.0702
    $
    $
        P(X < 8) = sum_(x=0)^8 binom(n, x) p^x (1-p)^(n-x) approx 1
    $

+ Let the random variable X be as Poisson distribution with mean of 0.604. Find the probability that X = 1.
    + 0.41270
    + 0.33016
    + 1.10497
    + None of the other choices is correct
    + 0.05503

    *Solution* \
    $
        X ~ P(lambda = 0.604)
    $
    $
        P(X=1) = (e^(-lambda) lambda) / 1! approx 0.33016
    $
    *Answer*: B

+ Let the discrete uniform random variable X has the values 0, 1.3, 5, 6. What is P(X=4)
    + 0.25
    + 0.33
    + No determined
    + 0.2
    + None of the other choices is correct

    *Solution* \
    $
        P(X=5) = 0.25
    $
    *Answer*: A

+ Given that the probability the target of a a sniper 0.7. What is the expected number of until the first hit?
    + 7
    + 3.33
    + 1.43
    + 3
    + None of the other choices is correct

    *Solution* \
    $X$ is the number of hit until hitting the target
    $
        X ~ G(p=0.7)
    $
    $
        mu = 1 / p = 7
    $
    *Answer*: A

+ Of 800 students who took the MAS291 course last semester, exactly 75% has passed. Random group of 10 from these 800 students. What is the probability that only one of them has failed?
    + 0.187
    + 0.222
    + 0.145
    + 0.25
    + None of the other choices is correct

    *Solution* \
    $X$ is the number of failed students in the sample
    $
        X ~ "HG"(N=800,K=200,n=10)
    $
    $
        P(X=1) = (binom(K, 1) binom(N-K, n - 1)) / binom(N, n) approx 0.187
    $
    *Answer*: A
