= Chapter 11
+ The correlation when we use $y$ to predict $x$ is \_\_\_\_\_\_ the correlation when we use $x$ to predict.
    + the same as
    + greater than
    + less than
    + None of the other choices is correct

    *Solution* \
    $
        r = S_(x y) / sqrt(S_(x x) dot S_(y y))
    $
    *Answer*: A

+ Eight students in a mathematics anxiety workshop are given a questionnaire on math anxiety (y) and an inventory test on basic arithmetic skills (x). Given that \
    $sum x_i = 492$; $sum y_i = 379$; $sum x_i^2 = 32894$; $sum y_i^2 = 20115$; $sum x_i y_i = 21087$ \
    Compute the sample correlation coefficient
    + -0.93
    + 0.86
    + 0.93
    + 0.07
    + None of the other choices is correct.

    *Solution* \
    $
        r
        &= S_(x y) / sqrt(S_(x x) dot S_(y y)) \
        &= (sum x_i y_i - 1 / n sum x_i sum y_i) / sqrt((sum x_i^2 - 1/n (sum x_i)^2) dot (sum y_i^2 - 1 / n (sum y_i)^2) ) \
        &= (21087 - 1 / 8 dot 492 dot 379) / sqrt((32894 - 1/8 dot 492^2) dot (20115 - 1 /5 dot 379^2) ) \
        &approx -0.93
    $
    *Answer*: A

+ Mathematics and Physics grades of 5 students are as below.
    #table(
        columns: 3,
        "Student", [Mathematics grade ($X$)], [physics grade ($Y$)],
        "1", "7.5", "6",
        "2", "6.5", "8.5",
        "3", "6", "5.5",
        "4", "4.5", "6",
        "5", "9.5", "9",
    ) \ \

    We want to do linear regression analysis on $X$ and $Y$. Given the standard error of estimate $sigma = 1.43$, the estimated slope $hat(beta_1) = 0.56$. \
    Calculate the test hypotheses
    $
        H_0: beta_1 = 0 \
        H_1: beta_1 > 0
    $
    + 1.86
    + 1.66
    + 1.46
    + 2.06

    *Solution* \
    $
        S_(x x) = sum x_i^2 - 1 / n (sum x_i)^2 = 245 - 1 / 5 dot 34^2 = 13.8 \
        t_0 = (hat(beta_1) - beta_1) / sqrt(sigma^2 / S_(x x)) = (0.56 - 0) / sqrt(1.43^2 / 13.8) approx 1.46
    $
    *Answer*: C

+ The height y and base diameter x of four trees of a certain variety produced the following data
    #table(
        columns: 5,
        $x$, "2", "2", "3", "5",
        $y$, "31", "36", "94", "127",
    )
    Find the equation of the estimated regression line $hat(y) = a + b x$ of $y$ on $x$.
    + $-21.5x + 31.17$
    + $-21.5 + 31.17x$
    + None of the other choices is correct.
    + $21.5 + 31.17x$
    + $21.5x + 31.17$

    *Answer*: B
