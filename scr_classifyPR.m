%
% This script classify the textures of the dataset. 
% The first loop is used to extract the features of:
%  - the training set (first two images of each class)
%  - the testing set (rest of images of each class)
%
% Afterwards, it converts the training and testing sets to "weka sets",
% uses the training set to train a random forest classifier, and 
% classifies the testing set.
% It returns the confusion matrix (for a perfect classifier, numbers  
% should only be in the diagonal), and the % of correct classification.

dataDir = 'P2_class/';
d = dir([dataDir 't*']);

%computing features from training and testing sets
for i=1:length(d),
	namedir = d(i).name;
	d1 = dir([dataDir namedir '/*.tif']);
	for j=1:2,
		name = [dataDir namedir '/' d1(j).name];
		A = imread(name);
		vecTrain((i-1)*2+j,:) = computeFeatureVector(A); %training vector
		labTrain((i-1)*2+j) = i+48; %training labels
	end
	for j=3:length(d1),
		name = [dataDir namedir '/' d1(j).name];
		A = imread(name);
		vecTest((i-1)*4+j-2,:) = computeFeatureVector(A); %testing vector
		labTest((i-1)*4+j-2) = i+48; %testing labels
	end
end

%converting data to PRTools
% Atrain training dataset; Atest testing dataset
Atrain = dataset(vecTrain,labTrain');
Atrain = setprior(Atrain,getprior(Atrain));
Atest = dataset(vecTest,labTest');
Atest = setprior(Atest,getprior(Atest));

% defining classifier and final confusion matrix
W = classc(knnc(Atrain));
cl = Atest*W;
cm = confmat(cl)
sum(diag(cm))/sum(cm(:))


