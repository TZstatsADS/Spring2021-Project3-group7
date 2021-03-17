# Project: Can you recognize the emotion from an image of a face? 
<img src="figs/CE.jpg" alt="Compound Emotions" width="500"/>
(Image source: https://www.pnas.org/content/111/15/E1454)

### [Full Project Description](doc/project3_desc.md)

Term: Spring 2021

+ Team 7
+ Team members
	+ Daizy Lam
	+ Daryl Kow
	+ Ellen Chen
	+ Peter Kwauk
	+ Qizhen Yang

+ Project summary: 
+ In this project, we created a binary classification engine for facial emotion recognition. Our model uses fiducial points extracted from each image as input and outputs a binary label indicating whether the given facial emotion is complex or not. We used Gradient Boosting Machines as our baseline model and we ran a total of 6 models to compare their performance in terms of accuracy, AUC, training time and testing time. The models we used include XGBoost, Neural Network, Random Forest, SVM and PCA+LDA. Cross validation was used for parameter and hyperparameter-tuning purposes. In some cases, dimensionality reduction techniques were applied as part of further data preprocessing on top of the extracted fiducial points. The improved model XGBoost is our final choice with Accuracy of 82.17% and AUC of 0.803 which hass better accuracy and faster running time than the baseline GBM model.

Contribution statement: All team members contributed equally in all stages of this project. All team members approve our work presented in this GitHub repository including this contributions statement.

+ Daizy Lam implemented the GBM model and did the cross validation on the weighted GBM model to get the best tuning parameters. She also helped finalize the main submission code, create the GBM presentation slides and update the GitHub README.
+ Daryl Kow implemented the neural network model and performed hyper-parameter tuning on batch size and learning rate. Implemented training callbacks to reduce training time. Helped with version control via Github. Created slide on neural network model with accompanying script. 
+ Ellen Chen implemented the SVM model and cross validation to find the best tuning parameter for cost, created the SVM presentation slide.
+ Peter Kwauk implemented the Random Forest and XGBoost models, with cross validation for best tuning the XGBoost and Out-of-the-Box metric for tuning the Random Forest. Created slides on Random Forest and XGBoost on the accompanying script. 
+ Qizhen Yang implemented the PCA to reduce dimension and choose the important principle components that can explain most of the total variance. Then, run the LDA model on the PC scores chosen by PCA  and test the final result. Help and combine the final code. Create the slides on PCA+LDA, and write the introduction on main.rmd and also represent the group for the class presentation. 


Following [suggestions](http://nicercode.github.io/blog/2013-04-05-projects/) by [RICH FITZJOHN](http://nicercode.github.io/about/#Team) (@richfitz). This folder is orgarnized as follows.

```
proj/
├── lib/
├── data/
├── doc/
├── figs/
└── output/
```

Please see each subfolder for a README file.
