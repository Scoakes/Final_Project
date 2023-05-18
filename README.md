# Final_Project
https://docs.google.com/presentation/d/1uIaCPF-SFLRl51NfYNTgopQiG-NdYPAtic4XwnFjEoU/edit?usp=sharing
## Project Overview - Predicting Incidence of Heart Disease Using Health Data
Heart disease is a type of disease that affects the heart or blood vessels. The risk of certain heart diseases may be increased by smoking, high blood pressure, high cholesterol, unhealthy diet, lack of exercise, and obesity. ![image](https://github.com/Scoakes/Final_Project/assets/120346301/7f633347-fe05-4353-b963-38e39687f150)
Heart disease is the leading cause of death for men and women in the United States. Using data gathered from Kaggle.com we will create a Random Forest that will be trained on health data to predict whether people represented in a test data set are at risk of heart disease. 

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

-Pre-Processing 

Before feeding the model data to predict, we began with balancing the dataset by creating a new dataframe that was subsetted from the orginal with boosted features that were skewed in the original. For example "Heart Disease" was highly skewed in the original data at 9% "Yes" and 91% "No". In the balanced dataset this was more balanced at 27% "Yes" and 73% "No". Additionally there were multiple catagorical columns that had to be encoded to "1" and "0" values such as: 'HeartDisease','Sex','AgeCategory','Smoking', 'Stroke','Diabetic','PhysicalActivity', 'AlcoholDrinking','DiffWalking','Race','GenHealth', 'Asthma','KidneyDisease',and 'SkinCancer'. These columns were split into several different columns during encoding. For example 'HeartDisease' was split into 'HeartDisease_Yes' and 'HeartDisease_No'. Finally we performed an StandardScaler Transformation on the data before running it through the random forest.

-Splitting the Data

The transformed data was split with train_test_split method imported from sklearn.model_selection.


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
