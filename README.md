# Final_Project
Dashboard: https://public.tableau.com/authoring/HeartDiseaseData_16847900000030/Dashboard1#1
Google Slides Presentation: https://docs.google.com/presentation/d/1uIaCPF-SFLRl51NfYNTgopQiG-NdYPAtic4XwnFjEoU/edit?usp=sharing

## Project Overview - Predicting Incidence of Heart Disease Using Health Data
Heart disease is a disease that affects the heart or blood vessles. The risk of certain heart dieases may be increased by smoking, high blood pressure, high cholesterol, unhealthy diet, lack of excerise, and obesity. Heart disease is the leading cause of death for men and women in the United States. Using data gathered from Kaggle.com we will create a Random Forest that will be trained on health data to predict whether people represented in a test data set are at risk of heart disease. 

Common heart disease are coronary artery disease, high blood pressure, cardiac arrest, congestive heart failure, arrhythmia, stroke, congenital heart disease, and peripheral.

### Data Overview 
The dataset originates from an annual telephone survey conducted by the CDC in which more than 400,000 adult interviews were conducted where respondents were asked various questions about themselves and their health habits

The “Heart Disease” metric represents respondents who reported either being diagnosed with Coronary Heart Disease or having had a Myocardial Infarction (heart attack)

The dataset for this project includes 319796 rows of 18 health/demographic features. These catagories include the following: 

#### Demographics
- Sex (Obj)
- AgeCategory (Obj)
- Race (Obj) 

#### Morbidity
- HeartDisease (Boolean)
- Stroke (Boolean)
- DifficultyWalking (Boolean)
- Diabetes (Obj)
- Asthma (Boolean)	
- KidneyDisease (Boolean)	
- SkinCancer (Boolean)

#### Health Metrics
- BMI (Float)	
- Smoking (Boolean)	
- AlcoholDrinking (Boolean)	
- HealthyPhysicalDays (Int)          
- HealthyMentalDays (Int)	                
- PhysicalActivity (Boolean)	
- GeneralHealth (Obj)  
- SleepHours (Int)	

### Machine Learning Model 
-Random Forest

We chose a random forest model to predict our target variable of "Heart Disease". In our dataset, Heart Disease meassures the respondents that have ever reported having coronary heart disease (CHD) or myocardial infarction (MI). The choice to use a random forset model was due to its comparable predictive performance to a deep learning model but with reduced code and training time. Random forests are also robust to skewed data, while the main data set was balanced and reduced in size for the model, it still contained some skewed features. 

-Pre-Processing 
Before feeding the model data to predict, we began with balancing the dataset by creating a new dataframe that was subsetted from the orginal with boosted features that were skewed in the original. For example "Heart Disease" was highly skewed in the original data at 9% "Yes" and 91% "No". In the balanced dataset this was more balanced at 27% "Yes" and 73% "No". Additionally there were multiple catagorical columns that had to be encoded to "1" and "0" values such as: 'HeartDisease','Sex','AgeCategory','Smoking', 'Stroke','Diabetic','PhysicalActivity', 'AlcoholDrinking','DiffWalking','Race','GenHealth', 'Asthma','KidneyDisease',and 'SkinCancer'. These columns were split into several different columns during encoding. For example 'HeartDisease' was split into 'HeartDisease_Yes' and 'HeartDisease_No'. Finally we performed an StandardScaler Transformation on the data before running it through the random forest.

-Splitting the Data
The transformed data was split with train_test_split method imported from sklearn.model_selection.


### Questions We hope to answer
1. What health features are useful in predicting risk of Heart Disease?
2. Is heart Disease more prominent in males or females?
3. Does increased sleep help decrease incidence of heart disease?
4. Do other underlying diseases lead to increased heart disease?
5. How does BMI differ in people with and without heart disease?

### Data Exploration Phase 
After the model was created we attained some prelimenary information about the features in our dataset. The 5 highest weighted features were explored more through visualizations.

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

1. BMI - 13.34%
2. SleepTime - 7.28%
3. PhysicalHealth - 6.37%
4. MentalHealth - 5.10%
5. Race_White 4.74%

### Technologies, Languages, Tools, and Algorithms 
- Python to transform dataset
- QuickDBD to create ERD
- PostgreSQL to create database
- AWS to share database 
- Random Forest Classifier from Scikit-Learn to create Machine Learning  Model
- Tableau Public to Visualize Data

### Results of Analysis
The final accuracy of the model topped out at 75%. Attempts were made to increasea accuracy by dropping features that weren't weighted highly in the first iteration model to reduce noise. However, these attempts did not raise the model's overall accuracy.

### Recommendation for Future Analysis
Boosting might be a method that could be used to increase the prediction accuracy of the model.

### Potential Changes that Could've Been Made 
Further tweaks could've been made for deminsionality reduction and balancing of the input data for our model. 
