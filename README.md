# Final_Project

##Project Overview - Predicting Incidence of Heart Disease Using Health Data
Heart disease is the leading cause of death for men and women in the United States. Using data gathered from Kaggle.com we will create a **Neural Network/**Random Forest that will trained on health data to predict wether people represented in a test data set are at risk of heart disease. 

###Data Overview 
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

The dataset for this project includes 299 rows of 13 health features. These catagories include the following: 
-age
-anaemia
-creatinine_phosphokinase
-diabetes
-ejection_fraction
-high_blood_pressure
-platelets
-serum_creatinine
-serum_sodium
-sex
-smoking
-time
-Death Event (Obj)


###Machine Learning Model 
-Neural Net or Random Forest?
  "Although their predictive performance was comparable, their implementation and training times were not—the random forest classifier was able to train on the large dataset and predict values in seconds, while the deep learning model required a couple minutes to train on the tens of thousands of data points. In other words, the random forest model is able to achieve comparable predictive accuracy on large tabular data with less code and faster performance. The ultimate decision of whether to use a random forest versus a neural network comes down to preference. However, if your dataset is tabular, random forest is a great place to start."
