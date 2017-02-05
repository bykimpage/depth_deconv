clear all
close all
clc
%% load image for deconvolution

load observed observed

%% load depth-variant PSFs

f = DV_GEM(observed, 12, 0.001, 3);

%% imshow (xy)
figure,imshow(observed(:,:,round(size(bead,3)/2)), []);
figure,imshow(f(:,:,round(size(bead,3)/2)), []);

%% imshow (xz)
profile_esti = zeros(size(observed,1), size(observed,3));
for i = 1:size(observed,3)
    profile_esti(:,i) = observed(:,round(size(observed,2)/2),i);
end
figure,imshow(profile_esti,[])

profile_esti = zeros(size(f,1), size(f,3));
for i = 1:size(f,3)
    profile_esti(:,i) = f(:,round(size(f,2)/2),i);
end
figure,imshow(profile_esti,[])