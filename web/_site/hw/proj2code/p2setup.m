% [imblurd, height, width, H] = p2setup()
%
% Set up the image and blurring kernel used in project 2.
% Outputs:
%   imblurd - height*width-by-3 matrix.  The columns corresponds to
%             the RGB components of the pixel colors.
%   height  - height of the image
%   width   - width of the image
%   H       - blurring matrix (imblurd = H*imtrue + noise).
%
function [imblurd, height, width, H] = p2setup()

  % NB: Since some students use Octave (which does not have fspecial),
  %     I provide the blurring kernel matrix in a .mat file.
  %     The default behavior of this script is to load from that file.
  %
  imblur = imread('blurry.png');
  height = size(imblur,1);
  width  = size(imblur,2);
  %K     = fspecial('motion', 30, 25);
  K      = load('K.mat', '-ascii');
  H      = formH(K, height, width);  
  imblurd = reshape(double(imblur),height*width,3);

% ===
% H = formH(h, height, width)
%
% Form a matrix corresponding to blurring with the kernel
% specified by h.
%
function H = formH(h, height, width)

  % Construct filter matrix (the slow way)
  [i,j,hij] = find(h);
  i = i-(size(h,1)+1)/2;
  j = j-(size(h,2)+1)/2;

  % Image dimensions
  N      = height*width;

  % Array of pixel coordinates
  pixi = (1:height)'*ones(1,width);
  pixj = ones(height,1)*(1:width);
  pixk = reshape(1:(height*width), height, width);

  % Construct filter matrix
  H = sparse(N,N);
  for l = 1:length(hij)
    hpixi = pixi+i(l);
    hpixj = pixj+j(l);
    hpixk = (hpixj-1)*height+hpixi;
    Iact = find(hpixi > 0 & hpixi <= height & hpixj > 0 & hpixj <= width);
    HH = sparse(pixk(Iact), hpixk(Iact), hij(l)*ones(length(Iact),1), N, N);
    H = H+HH;
  end
