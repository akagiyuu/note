= Chapter 8
+ A researcher at a major hospital wishes to estimate the proportion of the adult population of the United States that has high blood pressure. How large a sample is needed in order to be 98% confident that the sample proportion will not differ from the true proportion by more than 6%? Let $z_0.01 = 2.33$.
    + 10
    + 755
    + 378
    + None of the other choices is correct
    + 267
    *Solution* \
    $
        alpha = 1 - 0.98 = 0.02 \
        Epsilon = z_(alpha / 2) sqrt((f (1 - f)) / n) = 0.06 \
        => n = f(1 - f) (z_0.01 / 0.06)^2 = 0.5(1 - 0.5) (2.33 / 0.06)^2 approx 377.007
        => n = 378
    $
    *Answer*: C

+ In a sample of 10 randomly selected women, it was found that their mean height was 63.4 inches. From previous studies, it is assumed that the standard deviation of the population is 2.4 inches. Construct the 95% confidence interval for the population mean. \
    Let $z_0.025 = 1.96$, $z_0.05 = 1.65$, $t_(0.025, 9) = 2.26$
    + None of the other choices is correct
    + (61.9, 64.9)
    + (58.1, 67.3)
    + (59.7, 66.5)
    + (60.8, 65.4)
    *Solution* \
    Given:
    - $n = 10$
    - $overline(x) = 63.4$
    - $sigma = 2.4$
    - $alpha = 0.05$
    $=> sigma$ known \
    $=>$ Case 1
    $
        "CI"
        &= (overline(x) - z_(alpha / 2) sigma / sqrt(n), overline(x) + z_(alpha / 2) sigma / sqrt(n)) \
        &= (63.4 - z_0.025 2.4 / sqrt(10), 63.4 + z_0.025 2.4 / sqrt(10) ) \
        &= (61.9, 64.9) \
    $
    *Answer*: B

+ In an application to estimate the mean number of miles that downtown employees commute to work roundtrip each day, the following information is given: $n = 20, overline(x) = 4.33, s = 3.50$. Based on this information, what is the upper limit for a 95 percent two-sided confidence interval estimate for the true population mean? \
    Let $z_0.025 = 1.96$, $z_0.05 = 1.65$, $t_(0.025, 9) = 2.09$, $t_(0.05, 19) = 1.73$
    + about 9.02 miles
    + about 5.97 miles
    + about 12.0 miles
    + about 7.83 miles
    *Solution* \
    Given:
    - $n = 20$
    - $overline(x) = 4.33$
    - $s = 3.50$
    - $alpha = 0.05$
    $=> sigma$ unknown and $n < 30$ \
    $=>$ Case 3
    $
        "CI"
        &= (overline(x) - t_(alpha / 2, n - 1) s / sqrt(n), overline(x) + t_(alpha / 2, n - 1) s / sqrt(n)) \
        &= (4.33 - t_(0.025, 19) 3.50 / sqrt(20), 4.33 + t_(0.025, 19) 3.50 / sqrt(20)  ) \
        &= (2.69, 5.97) \
    $
    *Answer*: B

+ An economist is interested in studying the incomes of consumers in a particular standard deviation is known to be \$1,500.  A random sample of 50 individuals resulted in an average income of \$25,000. What is the width of the 95% confidence interval? \
    Let $z_0.025 = 1.96$, $t_(0.025, 49) = 2.01$, $z_0.05 = 1.65$, $t_(0.05, 49) = 1.68$
    + 700.04
    + 415.78
    + 350.02
    + None of the other choices is correct
    + 831.56
    *Solution* \
    Given:
    - $n = 50$
    - $overline(x) = 25000$
    - $sigma = 1500$
    - $alpha = 0.05$
    $=> sigma$ known \
    $=>$ Case 1
    $
        "Width" = 2Epsilon = 2z_(alpha / 2) sigma / sqrt(n) = 2 z_0.025 1500 / sqrt(50) approx 831.56
    $
    *Answer*: E
