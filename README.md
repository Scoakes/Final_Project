# Final_Project

## Project Overview - Predicting Incidence of Heart Disease Using Health Data
Heart disease is the leading cause of death for men and women in the United States. Using data gathered from Kaggle.com we will create a Random Forest that will trained on health data to predict wether people represented in a test data set are at risk of heart disease. 

### Data Overview 
The dataset for this project includes 31796 rows of 18 health/demographic features. These catagories include the following: 

-HeartDisease (Boolean)
-BMI (Float)	
-Smoking (Boolean)	
-AlcoholDrinking (Boolean)	
-Stroke (Boolean)	
-PhysicalHealth (Float)          
-MentalHealth (Float)	
-DiffWalking (Boolean)
-Sex (Obj)	
-AgeCategory (Int) 	
-Race (Obj) 	
-Diabetic (Boolean) 	                     
-PhysicalActivity (Boolean)	
-GenHealth (Obj)  
-SleepTime (Float)	
-Asthma (Boolean)	
-KidneyDisease (Boolean)	
-SkinCancer (Boolean)



### Machine Learning Model 
-Random Forest

We chose a random forest model to predict our target variable of "Heart Disease". In our dataset, Heart Disease meassures the respondents that have ever reported having coronary heart disease (CHD) or myocardial infarction (MI). The choice to use a random forset model was due to its comparable predictive performance to a deep learning model but with reduced code and training time. Random forests are also robust to skewed data, while the main data set was balanced and reduced in size for the model, it still contained some skewed features. 


### Questions We hope to answer.
1. What age group experiences the most heart disease?
2. Is heart disease more prominent in males or females?
3. Does increased sleep help decrease heart disease?
4. How much does physical activity improve heart disease?
5. Does one sex have overall better general health than the other in this sample group?


### Data Exploration Phase 


### Model Analysis 

Accuracy Score : 0.75
Classification Report
              precision    recall  f1-score   support

           0       0.78      0.91      0.84       445
           1       0.61      0.35      0.44       179

    accuracy                           0.75       624
   macro avg       0.70      0.63      0.64       624
weighted avg       0.73      0.75      0.73       624





Top 5 Highest Weighted Features:

BMI - 13.34%
SleepTime - 7.28%
PhysicalHealth - 6.37%
MentalHealth - 5.10%
Race_White 4.74%


### Technologies, Languages, Tools, and Algorithms 


### Results of Analysis



### Recommendation for Future Analysis



### Potential Changes that Could've Been Made 
