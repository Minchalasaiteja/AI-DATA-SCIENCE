**math → function → how-to-use** map.
Think of it as upgrading from a map to a GPS with turn-by-turn directions 🧭✨

---

# 1. Linear Algebra → NumPy / SciPy (with Syntax & Examples)

| Math Concept          | Module         | Function      | Syntax                      | Example                         |
| --------------------- | -------------- | ------------- | --------------------------- | ------------------------------- |
| Create Matrix         | `numpy`        | `array`       | `np.array(list)`            | `A = np.array([[1,2],[3,4]])`   |
| Zero Matrix           | `numpy`        | `zeros`       | `np.zeros(shape)`           | `Z = np.zeros((3,3))`           |
| Identity Matrix       | `numpy`        | `eye`         | `np.eye(n)`                 | `I = np.eye(4)`                 |
| Matrix Addition       | `numpy`        | `add`         | `np.add(A,B)`               | `C = np.add(A,B)`               |
| Matrix Multiplication | `numpy`        | `matmul`      | `np.matmul(A,B)` or `A @ B` | `C = A @ B`                     |
| Transpose             | `numpy`        | `T`           | `A.T`                       | `AT = A.T`                      |
| Determinant           | `numpy.linalg` | `det`         | `np.linalg.det(A)`          | `d = np.linalg.det(A)`          |
| Inverse               | `numpy.linalg` | `inv`         | `np.linalg.inv(A)`          | `A_inv = np.linalg.inv(A)`      |
| Rank                  | `numpy.linalg` | `matrix_rank` | `np.linalg.matrix_rank(A)`  | `r = np.linalg.matrix_rank(A)`  |
| Eigenvalues           | `numpy.linalg` | `eig`         | `np.linalg.eig(A)`          | `vals, vecs = np.linalg.eig(A)` |
| SVD                   | `numpy.linalg` | `svd`         | `np.linalg.svd(A)`          | `U,S,V = np.linalg.svd(A)`      |
| Norm                  | `numpy.linalg` | `norm`        | `np.linalg.norm(A)`         | `n = np.linalg.norm(A)`         |
| Solve Ax=b            | `numpy.linalg` | `solve`       | `np.linalg.solve(A,b)`      | `x = np.linalg.solve(A,b)`      |
| Pseudoinverse         | `numpy.linalg` | `pinv`        | `np.linalg.pinv(A)`         | `A_p = np.linalg.pinv(A)`       |
| Cholesky              | `scipy.linalg` | `cholesky`    | `cholesky(A)`               | `L = cholesky(A)`               |

---

# 2. Calculus → NumPy / SciPy

| Math Concept         | Module            | Function        | Syntax                     | Example                       |
| -------------------- | ----------------- | --------------- | -------------------------- | ----------------------------- |
| Numerical Derivative | `scipy.misc`      | `derivative`    | `derivative(f, x)`         | `d = derivative(f, 2.0)`      |
| Gradient             | `numpy`           | `gradient`      | `np.gradient(f)`           | `g = np.gradient(arr)`        |
| Definite Integral    | `scipy.integrate` | `quad`          | `quad(f, a, b)`            | `area, _ = quad(f, 0, 1)`     |
| Double Integral      | `scipy.integrate` | `dblquad`       | `dblquad(f, a, b, g, h)`   | `dblquad(f,0,1,0,1)`          |
| Trapezoidal Rule     | `numpy`           | `trapz`         | `np.trapz(y, x)`           | `area = np.trapz(y,x)`        |
| Simpson Rule         | `scipy.integrate` | `simps`         | `simps(y, x)`              | `area = simps(y,x)`           |
| Jacobian Approx      | `scipy.optimize`  | `approx_fprime` | `approx_fprime(x, f, eps)` | `J = approx_fprime(x,f,1e-6)` |

---

# 3. Probability → NumPy / SciPy

| Concept        | Module         | Function        | Syntax               | Example                    |
| -------------- | -------------- | --------------- | -------------------- | -------------------------- |
| Random Uniform | `numpy.random` | `rand`          | `np.random.rand(n)`  | `x = np.random.rand(5)`    |
| Normal Dist    | `numpy.random` | `randn`         | `np.random.randn(n)` | `x = np.random.randn(100)` |
| Normal PDF     | `scipy.stats`  | `norm.pdf`      | `norm.pdf(x, μ, σ)`  | `p = norm.pdf(0,0,1)`      |
| Normal CDF     | `scipy.stats`  | `norm.cdf`      | `norm.cdf(x)`        | `c = norm.cdf(1.96)`       |
| Bernoulli      | `scipy.stats`  | `bernoulli.rvs` | `bernoulli.rvs(p)`   | `b = bernoulli.rvs(0.3)`   |
| Binomial       | `scipy.stats`  | `binom.pmf`     | `binom.pmf(k,n,p)`   | `binom.pmf(3,10,0.5)`      |
| Poisson        | `scipy.stats`  | `poisson.pmf`   | `poisson.pmf(k,λ)`   | `poisson.pmf(2,4)`         |
| Sampling       | `scipy.stats`  | `rvs`           | `dist.rvs(size=n)`   | `norm.rvs(size=100)`       |

---

# 4. Statistics → NumPy / SciPy

| Concept     | Module        | Function           | Syntax                  | Example                            |
| ----------- | ------------- | ------------------ | ----------------------- | ---------------------------------- |
| Mean        | `numpy`       | `mean`             | `np.mean(x)`            | `m = np.mean(x)`                   |
| Median      | `numpy`       | `median`           | `np.median(x)`          | `med = np.median(x)`               |
| Variance    | `numpy`       | `var`              | `np.var(x)`             | `v = np.var(x)`                    |
| Std Dev     | `numpy`       | `std`              | `np.std(x)`             | `s = np.std(x)`                    |
| Covariance  | `numpy`       | `cov`              | `np.cov(x,y)`           | `c = np.cov(x,y)`                  |
| Correlation | `numpy`       | `corrcoef`         | `np.corrcoef(x,y)`      | `r = np.corrcoef(x,y)`             |
| Z-score     | `scipy.stats` | `zscore`           | `zscore(x)`             | `z = zscore(x)`                    |
| T-test      | `scipy.stats` | `ttest_ind`        | `ttest_ind(a,b)`        | `t,p = ttest_ind(a,b)`             |
| Chi-square  | `scipy.stats` | `chi2_contingency` | `chi2_contingency(tbl)` | `chi2,p,_,_ = chi2_contingency(t)` |

---

# 5. Optimization → SciPy

| Concept           | Function                 | Syntax                             | Example                                  |
| ----------------- | ------------------------ | ---------------------------------- | ---------------------------------------- |
| Unconstrained Min | `minimize`               | `minimize(f, x0)`                  | `res = minimize(f, [1,1])`               |
| Constrained Min   | `minimize`               | `minimize(f,x0,constraints=...)`   | `minimize(f,x0,constraints=cons)`        |
| Root Finding      | `fsolve`                 | `fsolve(f, x0)`                    | `root = fsolve(f,1)`                     |
| Least Squares     | `least_squares`          | `least_squares(f, x0)`             | `res = least_squares(f,x0)`              |
| Linear Prog       | `linprog`                | `linprog(c,A,b)`                   | `res = linprog(c,A,b)`                   |
| Global Opt        | `differential_evolution` | `differential_evolution(f,bounds)` | `res = differential_evolution(f,bounds)` |

---

# 6. Information Theory → SciPy

| Concept       | Function  | Syntax         | Example                  |
| ------------- | --------- | -------------- | ------------------------ |
| Entropy       | `entropy` | `entropy(p)`   | `H = entropy([0.2,0.8])` |
| KL Divergence | `entropy` | `entropy(p,q)` | `KL = entropy(p,q)`      |

---

# 7. Discrete Math → SciPy

| Concept             | Function                | Syntax             | Example                |
| ------------------- | ----------------------- | ------------------ | ---------------------- |
| Combination         | `comb`                  | `comb(n,k)`        | `c = comb(5,2)`        |
| Permutation         | `perm`                  | `perm(n,k)`        | `p = perm(5,2)`        |
| Graph Shortest Path | `csgraph.shortest_path` | `shortest_path(G)` | `d = shortest_path(G)` |

---

# 8. Signal Processing → NumPy / SciPy

| Concept       | Function    | Syntax                  | Example               |
| ------------- | ----------- | ----------------------- | --------------------- |
| FFT           | `fft`       | `np.fft.fft(x)`         | `X = np.fft.fft(x)`   |
| Inverse FFT   | `ifft`      | `np.fft.ifft(X)`        | `x = np.fft.ifft(X)`  |
| Convolution   | `convolve`  | `signal.convolve(a,b)`  | `y = convolve(a,b)`   |
| Correlation   | `correlate` | `signal.correlate(a,b)` | `c = correlate(a,b)`  |
| Butter Filter | `butter`    | `butter(n, Wn)`         | `b,a = butter(4,0.2)` |

---

# 9. How This Maps to ML / DL / GenAI (quick intuition layer)

| Math               | Where It Appears                         |
| ------------------ | ---------------------------------------- |
| Linear Algebra     | Embeddings, attention, dense layers      |
| Calculus           | Backpropagation, gradient descent        |
| Probability        | Sampling, uncertainty, generative models |
| Statistics         | Normalization, evaluation, data analysis |
| Optimization       | Training neural networks                 |
| Information Theory | Cross-entropy loss, KL loss              |
| Signal Processing  | Audio models, CNNs                       |
| Discrete Math      | Graph neural networks, search            |

---

