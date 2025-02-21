# Chapter 3
1. Assume that male and female births are equally likely and that the birth of any child does not affect the probability of any other children. Find the probability of at most three boys in ten births.
	- A. 0.333
	- B. 0.172
	- C. 0.003
	- D. 0.300
	- E. None of the other choices is correct
	
	**Solution**\
	$X$ is the number of boys in ten births
	$$
	X \sim B(n = 10, p = 0.5)
	$$
	$$
	P(X\le3) = \sum_{x=0}^3 \binom{n}{x} 0.5^x 0.5^{n-x} \approx 0.172
	$$
	$\Rightarrow$ Chọn B	
	
2.  in a certain manufacturing process it is known that, on the average, 1 in every 100 items is defective. What is the probability that the fifth item inspected is the first defective item found?
	- A. 0.0099
	- B. 0.8879
	- C. 0.6879
	- D. 0.0096
	- E. None of the other choices is correct

	**Solution**\
	$X$ is the number of items inspected until the first defective item found
	$$
	X \sim G(p = 0.01)
	$$
	$$
	P(X = 5) = (1-p)^4 \cdot p \approx 0.0096
	$$
	$\Rightarrow$ Chọn D

3. There are calculation errors in 3 out of a package of 12 invoices. An auditor checks a random sample of 7 invoices from the package. What are the probabilities of finding all 3 errors in the sample?
	- A. 0.1591
	- B. 0.1996
	- C. 0.8327
	- D. 0.0031
	- E. None of the other choices is correct

	**Solution**\
	$X$ is the number of errors in the sample
	$$
k	X \sim HG(N=12,K=3,n=7)
	$$
	$$
	P(X = 3) = \frac{\binom{K}{3} \cdot \binom{N - K}{n - 3}}{\binom{N}{n}} \approx 0.1591
	$$
	$\Rightarrow$ Chọn A

4. Let X and Y be two discrete uniform distributions with E(X) = 1 and E(Y) = 10. Find the value of E(10X - Y).

	**Solution**\
	$$
	E(10X-Y) = 10E(X) - E(Y) = 0
	$$

5. The number of times that Cuong stops at traffic lights follows a Poisson distribution with a mean of one stop per kilometer. Find the probability that he only stops at at most two traffic lights during a 5-kilometer ride.
	- A. 0.125
	- B. 0.098
	- C. 0.134
	- D. 0.212
	- E. none of the other choices is correct

	**Solution**\
	$X$ is the number of times that Cuong stops at traffic lights
	$$
	X \sim P(\lambda = 5)
	$$
	$$
	P(X\le 2) = \sum_{x=0}^2 \frac{e^{-\lambda} \lambda^x}{x!} \approx 0.125
	$$
	$\Rightarrow$ Chọn A

6. A batch of 500 machined parts contains 15 that do not conform to customer requirements. The random variable is the number of parts in a sample of ten parts that do not conform to customer requirements. What is the range of the random variable?
	- A. Integers from 0 to 10
	- B. Integers from 0 to 15
	- C. Integers from 10 to 500
	- D. Real numbers from 0 to 10
	- E. Real numbers from 0 to 15

	**Solution**\
	$X$ is the number of parts in a sample of ten parts that do not conform to customer requirements
	$$
	X \sim HG(N=500, K = 15, n = 10)
	$$
	$$
	\max\{0, n + K - N\} \le X \le \min\{n, K\} \Rightarrow 0 \le X \le 10
	$$
	$\Rightarrow$ Chọn A
7. A batch contains 52 bacteria cells. Assume that 13 of cells are not good. Five cells are selected at random without replacement. What is the probability that all five cells of selected cells are not good?
	- A. None of the others
	- B. 0.945
	- C. 0.0002215
	- D. 0.257
	- E. 0.0004952

	**Solution**\
	$X$ is the number of not good cells in the sample
	$$
	X \sim HG(N = 52, K = 13, n = 5)
	$$
	$$
	P(X=5) = \frac{\binom{K}{5} \cdot \binom{N - K}{0}}{\binom{N}{n}} \approx 0.0004952
	$$
	$\Rightarrow$ Chọn E

8. A single six-sided die is rolled. Find the probability of rolling a number at most 5.
	- A. 0.333
	- B. 0.667
	- C. 0.833
	- D. 0.5	
	- E. None of the others choices is correct

	**Solution**\
	$X$ is the number rolled
	$$
	X \sim U\{1,6\}
	$$
	$$
	P(X \le 5) = \frac{5}{6}
	$$
	$\Rightarrow$ Chọn C

9. Let X be a continuous random variable with E(X) = 10 and $E(X^2)$ = 100. Find V(X).

	**Solution**\
	$$
	V(X) = E(X^2) - E(x)^2 = 0
	$$

10. Assume that each of your calls to a popular radio station has a probability of 0.02 of connecting, that is, of not obtaining a busy signal. Assume that your calls are independent. What is the probability that your first call that connects is your tenth call?
	- A. 0.0167
	- B. 0.1670
	- C. 0.8320
	- D. 0.9833

	**Solution**\
	$X$ is the number of call until the first connected call
	$$
	X \sim G(p=0.02)
	$$
	$$
	P(X=10) = (1-p)^9 \cdot p \approx 0.0167
	$$
	$\Rightarrow$ Chọn A

11. A statistics professor finds that when he schedules an office hour at the 10:30 a.m. time slot, an average of three students arrive. Use the Poisson distribution to find the probability that in a randomly selected office hour in the 10:30 a.m. time slot exactly five students will arrive.
	- A. 0.0070
	- B. 0.1008
	- C. 0.519
	- D. 0.0137
	- E. none of the other choices is correct

	**Solution*8
	$X$ is the number of students whom will arrive
	$$
	X \sim P(\lambda = 3)
	$$
	$$
	P(X = 5) = \frac{e^{-\lambda} \lambda^5}{5!} \approx 0.1008
	$$
	$\Rightarrow$ Chọn B

12. Suppose that a random variable X has the discrete uniform distribution on the integers 10,...,20. Find P(X = 7).

	**Solution**\
	$$
	X \sim U\{ 10, 20\}
	$$
	$$
	P(X=7) = \frac{1}{b - a + 1} =  0.1
	$$

13. Messages arrive at a switchboard in a Poisson manner at an average rate of five per hour. Find the probability for each of the following event: "At least three messages arrive within one hour"
	- A. 0.0380
	- B. 0.9976
	- C. None of the other choices is correct
	- D. 0.0620
	- E. 0.875

	**Solution**\
	$X$ is the number of message arrived within one hour
	$$
	X \sim P(\lambda = 5)
	$$
	$$
	P(X \ge 3) = 1- P(X \le 2) = 1-\sum_{x = 0}^2 \frac{e^{-\lambda} \lambda^x}{x!} \approx 0.875
	$$
	$\Rightarrow$ Chọn E

14. Suppose X has a hypergeometric distribution with N=20, n = 4, and K = 4. Find P(X=3) and $P(X \le 3)$
	- A . None of the other choises is correct
	- B. 0.9866 and 0.0134
	- C. 0.9866 and 0.00012
	- D. 0.0132 and 0.99998
	- E. 0.00021 and 0.99979

	**Solution**\
	$$
	P(X= 3) = \frac{\binom{K}{3} \binom{N-K}{n - 3}}{\binom{N}{n}} \approx 0.0132
	$$
	$$
	P(X \le 3) = \sum_{x=0}{3} \frac{\binom{K}{x} \binom{N-K}{n - x}}{\binom{N}{n}} \approx 0.99979
	$$
	$\Rightarrow$ Chọn B

15. The probability of a successful optical alignment in the assembly of an optical data storage products is 0.8. Assume the trials are independent. What is the probability that the first successful alignment requires exactly four trials?
	- A. 0.0064
	- B. 0.1262
	- C. 0.4332
	- D. 0.6756

	**Solution**\
	$X$ is the number trials until the first successful
	$$
	X \sim G(p = 0.8)
	$$
	$$
	P(X = 4) = (1- p) ^3 p = 0.0064
	$$
	$\Rightarrow$ Chọn A

16. The random variable X has a binomial distribution with n = 10 and p = 0.5. Which in the following statements is TRUE?
	- A. $P(X \ge 9) = 0.0107$
	- B. $P(X \le 2) = 0.0547$
	- C. All of the others.
	- D. $P(X= 5)  = 0.2461$

	**Solution**\
	$$
	X \sim B(n = 10, p = 0.5)
	$$
	$$
	P(X\ge9) = 1 - P(x \le 8) = 1 - \sum_{x = 0}^8 \binom{n}{x} p^10 \approx 0.0107
	$$
	$$
	P(x \le 2) = \sum_{x = 0}^2 \binom{n}{x} p^10 \approx 0.0547
	$$
	$$
	P(X=5) = \binom{n}{5} p^10 \approx 0.2461
	$$
	$\Rightarrow$ Chọn C

17. Let the random variable X have a discrete uniform distribution on the integer 0 < x < 100. Find the mean and variance of X.
	- A. None of the others
	- B. 50 and 861.6667
	- C. 50 and 816.6667
	- D. 50 and 850
	- E. 49.5 and 850

	**Solution**\
	$$
	X \sim U\{ 1, 99 \}
	$$
	$$
	\mu = \frac{a+b}{2} = 50
	$$
	$$
	\sigma^2 = \frac{(b - a + 1)^2 - 1}{12} \approx 816.6667
	$$
	$\Rightarrow$ Chọn C

18. A batch contains 52 bacteria cells. Assume that 13 of cells are not good. Five cells are selected at random, without replacement. What is the probability that all five cells of selected cells are not good?
	- A. None of the other choices is correct
	- B. $4.952 \cdot 10^{-4}$
	- C. 0.495
	- D. 0.221
	- E. 0.221

	**Solution**\

	$X$ is the number of not good cells in the sample
	$$
	X \sim HG(N = 52, K = 13, n = 5)
	$$
	$$
	P(X=5) = \frac{\binom{K}{5} \cdot \binom{N - K}{0}}{\binom{N}{n}} \approx 4.952 \cdot 10^{-4}
	$$
	$\Rightarrow$ Chọn B

19. Messages arrive at a switchboard in a Poisson manner at an average rate of five per hour. Find the probability for each of the following event: "No message arrives within one hour"
	- A. 0.4046
	- B. 0.0067
	- C. 0.4460
	- D. None of the other choices is correct
	- E. 0.4406

	**Solution**\
	$X$ is the number of message arrived per hour
	$$
	X \sim P(\lambda = 5)
	$$
	$$
	P(X=0) = \frac{e^{-\lambda} \lambda^0}{0!} \approx 0.0067
	$$
	$\Rightarrow$ Chọn B

20. Suppose the probability that item produced by a certain machine will be defective is 0.2. Find the probability that 10 items will contain at most one defective item. Assume that the quality of successive items is independent.
	- A. 0.27
	- B. None of these
	- C. 0.73
	- D. 0.38
	- E. 0.63

	**Solution**\
	$X$ is the number of defective item
	$$
	X \sim B(n = 10, p = 0.2)
	$$
	$$
	P(X \le 1) = \sum_{x=0}^1 \binom{n}{x} p^x (1-p)^{n - x} \approx 0.38
	$$
	$\Rightarrow$ Chọn D

21. Let the random variable X have a discrete uniform distribution on the integers $1 \le x \le 35$. Determine the mean and variance of X.
	- A. 17.5 and 102
	- B. None of the others
	- C. 17 and 102
	- D. 18 and 102

	**Solution**\
	$$
	X \sim U\{ 1, 35 \}
	$$
	$$
	\mu = \frac{a + b}{2} = 18
	$$
	$$
	\sigma^2 = \frac{(b-a+1)^2 - 1}{12} = 102
	$$
	$\Rightarrow$ Chọn D

22. Let X be a binomial random variable with p = 0.1 and n = 10. Calculate the following probability: $P(X \gt 2)$ and $P(X \le 8)$
	- A. 0.702 and 0.999
	- B. None of others.
	- C. 0.9892 and 1
	- D. 0.702 and 1
	- E. 0.0702 and 0

	**Solution**\
	$$
	X \sim B(n = 10, p = 0.1)
	$$
	$$
	P(X > 2) = 1 - P(X \le 2) = 1 - \sum_{x=0}^2 \binom{n}{x} p^x (1-p)^{n-x} \approx 0.0702
	$$
	$$
	P(X \le 8) = \sum_{x=0}^8 \binom{n}{x} p^x (1-p)^{n-x} \approx 1
	$$

23. Let the random variable X be as Poisson distribution with mean of 0.604. Find the probability that X = 1.
	- A. 0.41270
	- B. 0.33016
	- C. 1.10497
	- D. None of the other choices is correct
	- E. 0.05503

	**Solution**\
	$$
	X \sim P(\lambda = 0.604)
	$$
	$$
	P(X=1) = \frac{e^{-\lambda} \lambda}{1!} \approx 0.33016
	$$
	$\Rightarrow$ Chọn B

24. Let the discrete uniform random variable X has the values 0, 1.3, 5, 6. What is P(X=4)
	- A. 0.25
	- B. 0.33
	- C. No determined
	- D. 0.2
	- E. None of the other choices is correct

	**Solution**\
	$$
	P(X=5) = 0.25
	$$
	$\Rightarrow$ Chọn A

25. Given that the probability the target of a a sniper 0.7. What is the expected number of until the first hit?
	- A. 7
	- B. 3.33
	- C. 1.43
	- D. 3
	- E. None of the other choices is correct

	**Solution**\
	$X$ is the number of hit until hitting the target
	$$
	X \sim G(p=0.7)
	$$
	$$
	\mu = \frac{1}{p} = 7
	$$
	$\Rightarrow$ Chọn A

26. Of 800 students who took the MAS291 course last semester, exactly 75% has passed. Random group of 10 from these 800 students. What is the probability that only one of them has failed?
	- A. 0.187
	- B. 0.222
	- C. 0.145
	- D. 0.25
	- E. None of the other choices is correct

	**Solution**\
	$X$ is the number of failed students in the sample
	$$
	X \sim HG(N=800,K=200,n=10)
	$$
	$$
	P(X=1) = \frac{\binom{K}{1}\binom{N-K}{n - 1}}{\binom{N}{n}} \approx 0.187
	$$
	$\Rightarrow$ Chọn A
