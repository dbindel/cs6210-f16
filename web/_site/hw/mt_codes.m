% CS 4220 S16 Midterm exam
%
% Complete the implementation of each of the following MATLAB
% functions.  Please do *not* change the function interfaces.  In
% addition to the codes, you should include a write-up that describes
% your derivation.  You are allowed to use texts, papers, or other
% references (with citation).  You should not ask help from any other
% person, whether inside or outside the class.  Do not worry if you do
% not get all the answers; if everyone got everything, it would not be
% much of a test!  We reserve the right to ask follow-up questions in
% person (ie.g. to determine whether it makes sense to assign partial
% credit).  You may ask us to clarify ambiguities or perceived errors
% in the prompt, but please do not ask for hints.


function mt_codes()
%
% Run correctness checks on problems 1-8.  Please *do* fill in
% this function, and make sure your codes are correct!  You are
% more likely to get partial credit for a code that you know and
% acknowledge is not quite right than for a code that you do not
% realize is wrong.


function [x] = problem1(Q, R, b)
%
% Given a QR decomposition of A, solve Ax = b


function [x] = problem2(Q, R, b, lambda)
%
% Given an economy QR decomposition of A where m >> n,
% minimize norm(Ax-b)^2 + lambda^2 * norm(x)^2
% in at most O(mn) + O(n^3) additional work.


function [R] = problem3(L,U)
%
% Given a factorization A = LU where A is symmetric positive definite,
% compute an upper triangular Cholesky factor R in O(n^2) time.


function [fx] = problem4(x)
%
% Write a function to compute sqrt(x+1)-sqrt(x-1) for x > 1.
% You should retain accuracy in floating point for x >> 1.


function [x] = problem5(u, v, b)
%
% Write a function to compute x = triu(u*v')\b in O(n) time


function [x] = problem6(U, i, j, alpha, b)
%
% Assume U is n-by-n upper triangular and 1 <= j < i <= n.
% Accomplish the following in O(n^2) time.
%
%   U(i,j) = alpha
%   x = U\b


function [x] = problem7(W, p, b);
%
% Suppose W is size k-by-n and p is a length m index vector,
% with m > k > n.  Rewrite the following computation to run
% in O(m) + O(kn^2) time:
%     x = W(p,:)\b;


function [R] = problem8(A)
%
% Write an O(n^2) routine to compute the R factor in the QR decomposition
% of A which is nonzero only in the diagonal and the last row:
%
%    A = diag(alpha);
%    A(end,1:end-1) = beta';
