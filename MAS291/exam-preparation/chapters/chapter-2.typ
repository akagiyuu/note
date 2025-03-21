= Chapter 2
+ We throw a fair six-sided die twice, then add the two numbers. Let $E$ denote the event that getting a number divisible by 5. What is the number of outcomes in $E$? + 0.333
    + 5
    + 6
    + 7
    + 8

    *Solution* \
    $
        E = { (1, 4), (2,3), (3,2), (4,1), (4,6), (5,5), (6,4) } \
        => abs(E) = 7
    $
    *Answer*: C

+ Which of the following assignments of probabilities to the sample points A, B, and C is valid if A, B, and C are the only sample points in the experiment?
    + $P(A) = -1/4$, $P(B) = 1/2$, $P(C) = 3/4$
    + $P(A) = 1/9$, $P(B) = 1/4$, $P(C) = 1/2$
    + $P(A) = 0$, $P(B) = 1/14$, $P(C) = 13/14$
    + $P(A) =1/5$, $P(B) = 1/5$, $P(C) = 1/5$
    + None of the other choices is correct

    *Solution* \
    Option A: $P(A) = -1/4 < 0 => $ invalid \
    Option B: $P(A) + P(B) + P(C) = 1/9 + 1/4 + 1/2 approx 0.861 < 1 => $ invalid \
    Option D: $P(A) + P(B) + P(C) = 1/5 + 1/5 + 1/5 = 0.6 < 1 => $ invalid \
    *Answer*: C

+ If $P(A) = 0.5$, $P(B) = 0.4$ and $P(A inter B) = 0.3$. Determine $P(A^' inter B)$ \ \
    *Solution* \
    $
        P(A^' inter B) = P(B) - P(A inter B) = 0.4 - 0.3 = 0.1
    $

+ Let's say that 50% of 10,000 women who take pregnancy tests are actually pregnant. Suppose there is a new pregnancy test and we know the following information: 92% of women who are pregnant will correctly get a positive result; and 6% of women who are not pregnant will also get a positive result. Given that a woman is not pregnant, what's the chance she'll get a negative result?
    + 94%
    + 93.88%
    + 95%
    + 93%
    
    *Solution* \
    Let $A$ denote the event that a women is pregnant and $B$ denote the event that the test return positive result. \
    From the hypothesis:
    - $P(A) = 0.5$
    - $P(B bar A) = 0.92$
    - $P(B bar overline(A)) = 0.06$
    $
        => P(overline(B) bar overline(A)) = 1 - P(B bar overline(A)) = 1 - 0.06 = 0.94
    $
    *Answer*: A
