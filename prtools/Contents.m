% Pattern Recognition Tools
% Version 4.2.0 26-Aug-2011
%
%Datasets and Mappings (just most important routines)
%---------------------
%dataset     Define dataset from datamatrix and labels
%datasets    List information on datasets (just help, no command)
%datafile    Define dataset from directory of object files 
%datafiles   List information on datafiles (just help, no command)
%classsizes  Retrieve sizes of classes
%gencirc     Generation of a one-class circular dataset
%genclass    Generate class frequency distribution
%genlab      Generate dataset labels
%getlab      Retrieve object labels from datasets and mappings
%getnlab     Retrieve nummeric object labels from dataset
%getfeat     Retrieve feature labels from datasets and mappings
%get         Get fields from datasets or mappings
%setdata     Change data in dataset
%setlabels   Change labels of dataset or mapping
%addlabels   Add additional labelling
%changelablist  Change current active labeling
%multi_labeling List information on multi-labeling (help only)
%mapping     Define and retrieve mapping and classifier from data
%mappings    List information on mappings (just help, no command)
%renumlab    Convert labels to numbers
%matchlab    Match different labelings
%primport    Convert old datasets to present PRTools definition
%remclass    Remove a class from a dataset
%seldat      Retrieve part of a dataset
%
%Data Generation (more in prdatasets)
%---------------
%circles3d   Create a dataset containing 2 circles in 3 dimensions
%lines5d     Create a dataset containing 3 lines in 5 dimensions
%gauss       Generation of multivariate Gaussian distributed data
%gendat      Generation of classes from given data set
%gendatb     Generation of banana shaped classes
%gendatc     Generation of circular classes
%gendatd     Generation of two difficult classes
%gendath     Generation of Highleyman classes
%gendatk     Nearest neighbour data generation
%gendatl     Generation of Lithuanian classes
%gendatm     Generation of 8 2d classes
%gendatp     Parzen density data generation
%gendats     Generation of two Gaussian distributed classes
%prdata      Read data from file
%seldat      Select classes / features / objects from dataset
%prdataset   Read existing dataset from file
%prdatasets  Overview of all datasets and data generators
%
%Datafiles
%---------
%datafile    Define datafile from set of files in directory
%savedatafile Save datafile, store intermediate result
%filtm       Mapping for arbitrary processing of datafile
%
%Linear and Quadratic Classifiers (*operate on datasets and datafiles)
%--------------------------------
%fisherc     Minimum least square linear classifier
%ldc         Normal densities based linear (muli-class) classifier
%loglc       Logistic linear classifier
%nmc         Nearest mean linear classifier
%nmsc        Scaled nearest mean linear classifier
%quadrc      Quadratic classifier
%qdc         Normal densities based quadratic (multi-class) classifier
%udc         Uncorrelated normal densities based quadratic classifier
%klldc       Linear classifier based on KL expansion of common cov matrix
%pcldc       Linear classifier based on PCA expansion on the joint data
%polyc       Add polynomial features and run arbitrary classifier
%subsc       Subspace classifier
%
%classc      Converts a mapping into a classifier
%labeld      Find labels of objects by classification
%logdens     Convert density estimates to log-densities for more accuracy
%testc       General error estimation routine for trained classifiers
%
%Other Classifiers 
%-----------------
%knnc        k-nearest neighbour classifier (find k, build classifier)
%knn_map     Map a dataset on a K-NN classifier, back end routine
%testk       Error estimation for k-nearest neighbour rule
%edicon      Edit and condense training sets
%
%parzenc     Parzen classifier
%parzendc    Parzen density based classifier
%parzen_map  Map a dataset on a Parzen classfier, back end routine
%testp       Error estimation for Parzen classifier
%
%treec       Construct binary decision tree classifier
%tree_map    Map a dataset on a decision tree, back end routine
%naivebc     Naive Bayes classifier
%bpxnc       Feed forward neural network classifier by backpropagation
%lmnc        Feed forward neural network by Levenberg-Marquardt rule
%neurc       Automatic neural network classifier
%perlc       Linear perceptron 
%rbnc        Radial basis neural network classifier
%rnnc        Random neural network classifier
%ffnc        Feed-forward neural net classifier back-end routine
%
%fdsc        Feature based dissimilarity space classifier
%
%svc         Support vector classifier
%svo         Support vector optimizer
%svc_nu      Support vector classifier
%svo_nu      Support vector optimizer
%rbsvc       Radial basis SV classifier with optimized parameters
%
%Normal Density Based Classification
%-----------------------------------
%distmaha    Mahalanobis distance
%meancov     Estimation of means and covariance matrices from multiclass data
%nbayesc     Bayes classifier for given normal densities
%normal_map  Back-end routine for computing normal densities
%ldc         Normal densities based linear (muli-class) classifier
%qdc         Normal densities based quadratic (multi-class) classifier
%udc         Uncorrelated normal densities based quadratic classifier
%mogc        Mixture of gaussians classification
%testn       Error estimate of discriminant on normal distributions
%
%Feature Selection
%-----------------
%feateval    Evaluation of a feature set
%featrank    Ranking of individual feature permormances
%featsel     Feature Selection
%featselb    Backward feature selection
%featself    Forward feature selection
%featsellr   Plus-l-takeaway-r feature selection
%featseli    Feature selection on individual performance
%featselm    Feature selection map, general routine for feature selection
%featselo    Branch and bound feature selection
%featselp    Floating forward feature selection
%
%Classifiers and tests (general)
%-------------------------------
%bayesc      Bayes classifier by combining density estimates
%classim     Classify image using a given classifier
%classc      Convert mapping to classifier
%labeld      Find labels of objects by classification
%cleval      Classifier evaluation (learning curve)
%clevalb     Classifier evaluation (learning curve), bootstrap version
%clevalf     Classifier evaluation (feature size curve)
%clevals     Classifier evaluation (feature /learning curve), bootstrap
%confmat     Computation of confusion matrix
%costm       Cost mapping, classification using costs
%crossval    Crossvalidation 
%cnormc      Normalisation of classifiers
%disperror   Display error matrix with information on classifiers and datasets
%labelim     Construct image of labeled pixels
%logdens     Convert density estimates to log-densities for more accuracy
%mclassc     Computation of multi-class classifier from 2-class discriminants
%reject      Compute error-reject trade-off curve
%roc         Receiver-operator curve (ROC)
%testc       General error estimation routine for trained classifiers
%testauc     Estimate error as area under the ROC
%
%Mappings
%--------
%affine      Construct affine (linear) mapping from parameters
%bhatm       Two-class Bhattacharryya mapping
%cmapm       Compute some special maps
%featselm    Feature selection map, general routine for feature selection
%fisherm     Fisher mapping
%invsigm     Inverse sigmoid map
%gaussm      Mixture of Gaussians density estimation
%kernelm     PCA based kernel mapping
%klm         Decorrelation and Karhunen Loeve mapping (PCA)
%klms        Scaled version of klm, useful for prewhitening
%knnm        k-Nearest neighbor density estimation
%mclassm     Computation of mapping from multi-class dataset
%map         General routine for computing and executing mappings
%nlfisherm   Nonlinear Fisher mapping
%normm       Object normalization map
%parzenm     Parzen density estimation
%parzenml    Optimization of smoothing parameter in Parzen density estimation.
%pca         Principal Component Analysis
%pcaklm      Back en routine for PC and KL mappings
%proxm       Proximity mapping and kernel construction
%reducm      Reduce to minimal space mapping
%remoutl     Remove outliers
%scalem      Compute scaling data
%sigm        Simoid mapping
%spatm       Augment image dataset with spatial label information
%
%gtm         Fit a Generative Topographic Mapping (GTM) by EM
%plotgtm     Plot a Generative Topographic Mapping in 2D
%som         Simple routine computing a Self-Organizing Map (SOM)
%plotsom     Plot a Self-Organizing Map in 2D
%
%Classifier combiners
%--------------------
%averagec    Combining linear classifiers by averaging coefficients
%baggingc    Bootstrapping and aggregation of classifiers
%votec       Voting classifier combiner (Voting)
%maxc        Maximum classifier combiner
%minc        Minimum classifier combiner
%meanc       Mean classifier combiner
%medianc     Median classifier combiner
%prodc       Product classifier combiner
%traincc     Train combining classifier
%fixedcc     Fixed combiner construction, back end
%parsc       Parse classifier or map
%parallel    Parallel combining of classifiers
%stacked     Stacked combining of classifiers
%sequential  Sequential combining of classifiers
%
%Image operations
%----------------
%classim     Classify image using a given classifier
%col2gray    Convert color images into gray
%dataim      Image operation on dataset images
%filtm       Image operation on objects in datasets
%data2im     Convert dataset to image
%getobjsize  Retrieve image size of feature images in datasets
%getfeatsize Retrieve image size of object images in datasets
%histm       Convert images to histograms
%datfilt     Filter dataset image
%datgauss    Filter dataset image by Gaussian filter
%datunif     Filter dataset image by uniform filter
%im2obj      Convert image to object in dataset
%im2feat     Convert image to feature in dataset
%immoments   Computes moments as features from object images
%resizem     Resize objects
%spatm       Augment image dataset with spatial label information
%show        Display objects in datasets, datafiles and mappings
%
%Clustering and distances
%------------------------
%distm       Distance matrix between two data sets.
%emclust     Expectation - maximization clustering
%proxm       Proximity mapping and kernel construction
%hclust      Hierarchical clustering
%kcentres    k-centres clustering
%kmeans      k-means clustering
%modeseek    Clustering by modeseeking
%
%mds         Non-linear mapping by multi-dimensional scaling (Sammon)
%mds_cs      Linear mapping by classical scaling
%mds_init    Initialisation of multi-dimensional scaling
%mds_stress  Dissimilarity of distance matrices
%
%Plotting
%--------
%gridsize    Set gridsize used in the PRTools plot commands
%plotc       Plot discriminant function for two features
%plote       Plot error curves
%plotf       Plot feature distribution
%plotm       Plot mapping
%ploto       Plot object functions
%plotdg      Plot dendrgram (see hclust)
%scatterd    Scatterplot
%scatterdui  Scatterplot scatterplot with feature selection
%
%Various tests and support routines
%----------------------------------
%cdats       Support routine for checking datasets
%iscolumn    Test on column array
%iscomdset   Test on compatible datasets
%isdataim    Test on image dataset
%isdataset   Test on dataset
%isfeatim    Test on feature image dataset
%ismapping   Test on mapping
%isobjim     Test on object image dataset
%isparallel  Test on parallel mapping
%isstacked   Test on stacked mapping
%issym.m     Test on symmetric matrix
%isvaldset   Test on valid dataset
%isvaldfile  Test on valid datafile
%matchlablist Match entries of label lists
%newfig      Control of figures on the screen
%newline     Generate a new line in the command window
%labcmp      Compare two label lists and find the differences
%nlabcmp     Compare two label lists and count the differences
%testdatasize Check datasize and convert datafile to dataset
%
%Examples
%--------
%prex_cleval     learning curves
%prex_combining  classifier combining
%prex_confmat    confusion matrix, scatterplot and gridsize
%prex_datasets   standard datasets
%prex_density    Various density plots
%prex_eigenfaces Use of images and eigenfaces
%prex_matchlab   K-means clustering and matching labels
%prex_mcplot     Multi-class classifier plot
%prex_plotc      Dataset scatter and classifier plot
%prex_som        Training a SelfOrganizing Maps
%prex_spatm      Spatial smoothing of image classification
%prex_cost       Cost matrices and rejection
%prex_logdens    Density based classifier improvement
%
%prversion   returns version information on PRTools
%prprogress  report progress control
%prwarning   control PRTools warning level
%prmemory    controol PRTools large dataset handling
%prtver      prtools version back end
%typp        list prtools routine nicely

% Copyright: R.P.W. Duin, duin@ph.tn.tudelft.nl
% Faculty of Applied Sciences, Delft University of Technology
% P.O. Box 5046, 2600 GA Delft, The Netherlands
