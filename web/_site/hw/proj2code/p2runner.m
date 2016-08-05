% Timing and testing harness for CS 3220 project 2

% Load blurred image and blurring matrix
[imblurd,h,w,H] = p2setup();

% Reconstruct image naively, with Tikhonov, and with Landweber
tic; im1 = p2naive(imblurd,H);            t1 = toc;
tic; im2 = p2tikhonov(imblurd,H,1e-2);    t2 = toc;
tic; im3 = p2landweber(imblurd,H,100,2);  t3 = toc;
tic; im4 = p2lsqr(imblurd,H,30);          t4 = toc;
tic; im5 = p2lsqr(imblurd,H,100);         t5 = toc;

% Show the reconstructed images
figure(1); p2image(im1,h,w);
figure(2); p2image(im2,h,w);
figure(3); p2image(im3,h,w);
figure(4); p2image(im4,h,w);
figure(5); p2image(im5,h,w);

% Print the results (in case we want them)
print -f1 -dpng imnaive.png
print -f2 -dpng imtikhonov.png
print -f3 -dpng imlandweber.png
print -f4 -dpng imlsqr30.png
print -f5 -dpng imlsqr100.png

% Display timings
fprintf('Naive:     %g s\n', t1);
fprintf('Tikhonov:  %g s\n', t2);
fprintf('Landweber: %g s\n', t3);
fprintf('LSQR (30):  %g s\n', t4);
fprintf('LSQR (100): %g s\n', t5);