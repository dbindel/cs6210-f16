% p2image(V, height, width)
%
% Display the image represented by the matrix V.  V has height*width rows
% (one per pixel) and three columns (for RGB) containing floating point
% values between 0 and 255 representing color intensities.  Any values that
% fall out of the range 0 to 255 will be bumped back into range.

function p2image(V, height, width)

  image( reshape(min(max(V,0),255),height,width,3)/255 );
