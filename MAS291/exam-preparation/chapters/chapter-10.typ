= Chapter 10
+ A random sample of 400 adult residents of Maricopa County found that 320 were in favor of increasing the highway speed limit to 75 mph, while another sample of 300 adult residents of Pima County found that 210 were in favor of the increased speed limit. Construct a 90% confidence interval on the difference in the two proportions $p_1 - p_2$ of adults who favor increased speed. \
    Let $z_0.025 = 1.96$, $z_0.05 = 1.65$
    + 10
    + 755
    + 378
    + None of the other choices is correct.
    + 267

    *Solution* \
    $
        n_1 = 400, f_1 = 320 / 400 = 0.8 \
        n_2 = 300, f_2 = 210 / 300 = 0.7 \
        alpha = 1 - 0.9 - 0.1 \
    $
    $
        "CI"
        &= (f_1 - f_2 - z_(alpha / 2) sqrt((f_1 (1 - f_1)) / n_1 + (f_2 (1 - f_2)) / n_2), f_1 - f_2 + z_(alpha / 2) sqrt((f_1 (1 - f_1)) / n_1 + (f_2 (1 - f_2)) / n_2)) \
        &= (0.8 - 0.7 - z_0.05 sqrt((0.8 (1 - 0.8)) / 400 + (0.7 (1 - 0.7)) / 300), 0.8 - 0.7 + z_0.05 sqrt((0.8 (1 - 0.8)) / 400 + (0.7 (1 - 0.7)) / 300) ) \
        &approx (0.05, 0.15)
    $
    *Answer*: A

+ The diameter of steel rods manufactured on two different extrusion machines is being investigated. Two random samples of sizes $n_1 = 12$ and $n_2 = 10$ are selected, and the sample means and variances are $overline(x_1) = 9.25$, $s_1^2=0.4$, $overline(x_2) = 8.13$, $s_2^2 = 0.5$. Assume that both populations are normally distributed with the same variance. Find a 90% two sided confidence inteval for the difference in the two population means.
    Let $z_0.05 = 1.645$, $z_0.1 = 1.281$, $t_(0.05, 20) = 1.725$, $t_(0.1, 20) = 1.325$
    + (0.789, 1.449)
    + (0.622, 1.618)
    + (0.742, 1.498)
    + (0.627, 1.613)
    + None of the other choices is correct.

    *Solution* \
    $
        s_p^2
        &= ((n_1 - 1) s_1 ^2 + (n_2 - 1) s_2^2) / (n_1 + n_2 - 2) \ 
        &= ((12 - 1) 0.4 + (10 - 1) 0.5) / (12 + 10 - 2) \ 
        &= 0.445
    $
    $
        alpha = 1 - 0.9 = 0.1
    $
    $
        "CI"
        &= (overline(x_1) - overline(x_2) plus.minus t_(alpha / 2, n_1 + n_2 - 2) sqrt(s_p^2 (1/n_1 + 1/n_2))) \
        &= (9.5 - 8.13 plus.minus t_(0.05, 12 + 10 - 2) sqrt(0.045 (1/12 + 1 /10))) \
        &approx (0.627, 1.613)
    $
    *Answer*: D
 
+ Two types of plastic are used for an electronics component. It is known that the breaking strengths (unit: psi) of plastic 1 and 2 are normal with standard deviation $sigma_1 = 1.7$ and $sigma_2 = 1.4$, respectively. Two random samples of sizes $n_1 = 15$ and $n_2 = 12$ are tested, and the sample means are $overline(x_1) = 170$ and $overline(x_2) = 164.5$. Construct a 95% upper confidence bound for the difference in the two population means $mu_1 - mu_2$. \
    Let $z_0.025 = 1.96$, $z_0.05 = 1.645$, $t_(0.025,25) = 2.06$, $t_(0.05, 25) = 1.708$
    + 6.519
    + 6.729
    + 6.482
    + None of the other choices is correct.

    *Solution* \
    $
        alpha = 1 - 0.95 = 0.05
    $
    $
        "CI"
        &= (-infinity, mu_1 - mu_2 + z_alpha sqrt(sigma_1^2 / n_1 + sigma_2^2 / n_2)) \
        &= (-infinity, 170 - 164.5 + z_0.05 sqrt(1.7^2 / 15 + 1.4^2 / 12)) \
        &approx 6.482
    $
    *Answer*: C
