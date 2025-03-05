#import "@preview/ctheorems:1.1.3": *
#show: thmrules.with(qed-symbol: $square$)
#set math.cases(reverse: true)
#set heading(numbering: "1.1.")
#set text(size: 15pt)

#let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
#let corollary = thmplain(
    "corollary",
    "Corollary",
    base: "theorem",
    titlefmt: strong,
)
#let definition = thmbox(
    "definition",
    "Definition",
    inset: (x: 1.2em, top: 1em),
)

#let example = thmplain("example", "Example").with(numbering: none)
#let proof = thmproof("proof", "Proof")

= Random sample
The random variables $X_1$, $X_2$, ..., $X_N$ are a random sample of size $n$ if
- $X_i inter X_j = emptyset$, $forall i != j$.
- Every $X_i$ has same probability distribution.

= Statistic
- A statistic is any function of the observations in a random sample.
- Statistic is a random variable.
- Examples
    - Sample mean $overline(X)$
    - Sample variance $S^2$
    - ...

= Sampling distribution
The probability of a statistic is called a sampling distribution.

#pagebreak()

= Point estimation
- A point estimate of some population parameter $theta$ is a single numerical value $hat(theta)$ of a statistic $hat(Theta)$.
- The statistic $hat(Theta)$ is called the point estimator.
- Some reasonable point estimate
    - $hat(mu) = overline(x)$
    - $hat(sigma^2) = s^2$
    - $hat(p) = x / n$
    - $hat(mu_1) - hat(mu_2) = overline(x_1) - overline(x_2)$
    - ...

#pagebreak()

#example[
    There are two ponds containing lots of fish, a random sample of 20 fish were selected from each pond and record their weight. The results are as follows: \
    $
        S_1: mat(
            1.2, 3.0, 2.3, 1.0;
            1.9, 2.1, 1.4, 2.2;
            0.7, 1.3, 0.5, 0.8;
            2.3, 3.3, 4.1, 3.5;
            2.7, 1.3, 3.0, 1.4
        )
    $
    $
        S_2: mat(
            1.0, 2.3, 1.3, 1.5;
            0.3, 1.6, 2.3, 2.6;
            3.3, 4.2, 0.8, 2.8;
            3.7, 0.5, 4.1, 3.3;
            2.1, 3.6, 1.8, 2.1
        )
    $
    1) Estimated average weight, variance, standard deviation and standard rate of fish (weight> 2 kg) in each pond. \
    2) Compare the weight average, variance, standard deviation of the number of fish in two ponds and the standard rate of fish in two ponds.
]


#table(
    columns: (auto, auto, auto, auto, auto),
    inset: 10pt,
    align: horizon,
    table.header(
        [ ],
        [$overline(x)$],
        [$s^2$],
        [$s$],
        [$P(X > 2)$],
    ),

    $S_1$, $2$, $0.99$, $0.995$, $0.5$,
    $S_2$, $2.26$, $1.3224$, $1.15$, $0.6$,
)

#pagebreak()

= Central Limit Theorem
#figure(
    image("img/normal.png"),
    caption: [Probability distribution of $X_1 + ... +X_n$],
)

#figure(
    image("img/increasing-n.png"),
    caption: [Probability distribution of $X_1 + ... + X_n$ with various $n$],
)

#figure(
    image("img/change-distribution.png"),
    caption: [Probability distribution of $X_1 + ... + X_n$ with biased distribution $n$],
)

#pagebreak()

#theorem[
    Lindeberg–Lévy CLT
    $
        cases(
            X_1"," ..."," X_n "is random sample of size" n "with" mu "," sigma^2,
            0 < "Var"[X_i] < infinity ", " forall i
        )\
        => lim_(n -> infinity) (overline(X) - mu) / (sigma / sqrt(n)) = lim_(n -> infinity) Z ~ 𝒩(0, 1)
    $
]
#proof[
    $
        mu_(overline(X))
        &= E[overline(X)]\
        &= E[(X_1 + ... +X_n) / n]\
        &= 1 / n dot (E[X_1] + .. E[X_n]) \
        &= mu
    $
    $
        sigma_(overline(X))
        &= sqrt("Var"[overline(X)])\
        &= sqrt("Var"[(X_1 + ... +X_n) / n])\
        &= sqrt(1/n^2 dot (V[X_1] + .. V[X_n])) \
        &= sigma / sqrt(n)
    $
]

#pagebreak()

#example[
    An electronics company manufactures resistor that have a mean resistance of 100 ohms and a standard deviation of 10 ohms.
    The distribution of resistance if normal. Find the probability that a random sample of n = 25 resistors will have an average resistance less than 95 ohms.
]
$
    mu_overline(X) = mu = 100 \
    sigma_overline(X) = sigma / sqrt(n) = 10 / sqrt(25) = 2 \
    => P(overline(X) < 95) approx 0.0062
$

#pagebreak()

#theorem[
    Two variable CTL \
    Given two independent population with mean $mu_1$ and $mu_2$ and variances $sigma_1^2$ and $sigma_2^2$. $overline(X_1)$ and $overline(X_2)$ are the sample means of two independent random samples of sizes $n_1$ and $n_2$


    $
        => lim_(n -> infinity) (overline(X_1) - overline(X_2) - (mu_1 - mu_2)) / sqrt(sigma_1^2 / n_1 + sigma_2^2 / n_2) = lim_(n -> infinity) Z ~ 𝒩(0, 1)
    $
]

#proof[
    $
        mu_(overline(X_1) - overline(X_2))
        &= E[overline(X_1) - overline(X_2)]\
        &= E[overline(X_1)] - E[overline(X_2)]\
        &= mu_1 - mu_2
    $
    $
        sigma_(overline(X_1) - overline(X_2))
        &= sqrt("Var"[overline(X_1) - overline(X_2)])\
        &= sqrt("Var"[overline(X_1)] + "Var"[overline(X_2)])\
        &= sqrt(sigma_1^2 / n_1 + sigma_2^2 / n_2)
    $
]

#pagebreak()

#example[
    The effective life of a component used in a jet-turbine aircraft engine is a random variable with mean 5000 hours and standard deviation 40 hours.
    The distribution of effective life is fairly close to a normal distribution.
    The engine manufacturer introduces an improvement into the manufacturing process for this component that increases the mean life to 5050 hours and decreases the standard deviation to 30 hours.
    Suppose that a random sample of $n_1 = 16$ components is selected from the “old” process and a random sample of $n_2 = 15$ components is selected from the “new” process.
    What is the probability that the difference in the two sample means $overline(X_1) - overline(X_2)$ is at least 25 hours? Assume that the old and new processes can be regarded as independent populations.
]
$
    mu_(overline(X_1) - overline(X_2)) = mu_1 - mu_2 = 5000 - 5050 = -50 \
    sigma_(overline(X_1) - overline(X_2)) = sqrt(sigma_1^2 / n_1 + sigma_2^2 / n_2) = sqrt(40^2 / 16 + 30^2 / 15) = 4sqrt(10) approx 12.65 \
    P(overline(X_1) - overline(X_2) > 25) = 1.5214 dot 10^(-9)
$

#pagebreak()

= References
- #link("https://en.wikipedia.org/wiki/Central_limit_theorem")[Central limit theorem]
- #link("https://www.youtube.com/watch?v=zeJD6dqJ5lo")[But what is the Central Limit Theorem? - 3Blue1Brown]
