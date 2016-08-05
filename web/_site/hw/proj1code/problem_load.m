% Run this script from the same directory as roadNet-CA.mat
% to form the matrices used in the project.

load('roadNet-CA.mat');

eta   = 0.9;   % Default damping parameter
sigma = 1;     % Default 
tau   = 180;

% Form the adjacency matrix and trim dummy nodes
%
A = Problem.A;
n = length(A);
d = full(sum(A))';
I = find(d);
n = length(I);
d = d(I);
A = A(I,I);

% Form the H matrix from the project
%
D = spdiags(d, 0, n, n);
H = D-eta*A;
