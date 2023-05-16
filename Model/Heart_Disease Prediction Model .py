#!/usr/bin/env python
# coding: utf-8

# In[1]:


import pandas as pd


# In[2]:


Final_heart = pd.read_excel('/Users/christopheroakes/Documents/Coding Bootcamp/Final Project/Heart_clean.xlsx')


# In[3]:


import pandas as pd
from sklearn.ensemble import RandomForestClassifier
from sklearn.preprocessing import StandardScaler
from sklearn.model_selection import train_test_split
from sklearn.metrics import confusion_matrix, accuracy_score, classification_report


# In[7]:


# Define the features set.
X = Final_heart.copy()
X = X.drop(["HeartDisease_Yes"], axis=1)
X = X.drop(["HeartDisease_No"], axis=1)
X.head()


# In[8]:


# Define the target set.
y = Final_heart["HeartDisease_Yes"].ravel()
y[:5]


# In[9]:


# Splitting into Train and Test sets.
X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=42)


# In[19]:


print(len(X_train))
print(len(X_test))
print(len(y_train))
print(len(y_test))


# In[10]:


# Creating a StandardScaler instance.
scaler = StandardScaler()
# Fitting the Standard Scaler with the training data.
X_scaler = scaler.fit(X_train)

# Scaling the data.
X_train_scaled = X_scaler.transform(X_train)
X_test_scaled = X_scaler.transform(X_test)


# In[11]:


# Create a random forest classifier.
rf_model = RandomForestClassifier(n_estimators=128, random_state=42) 


# In[12]:


# Fitting the model
rf_model = rf_model.fit(X_train_scaled, y_train)


# In[13]:


# Making predictions using the testing data.
predictions = rf_model.predict(X_test_scaled)


# In[14]:


# Calculating the confusion matrix.
cm = confusion_matrix(y_test, predictions)

# Create a DataFrame from the confusion matrix.
cm_df = pd.DataFrame(
    cm, index=["Actual 0", "Actual 1"], columns=["Predicted 0", "Predicted 1"])

cm_df


# In[15]:


# Calculating the accuracy score.
acc_score = accuracy_score(y_test, predictions)


# In[16]:


# Displaying results
print("Confusion Matrix")
display(cm_df)
print(f"Accuracy Score : {acc_score}")
print("Classification Report")
print(classification_report(y_test, predictions))


# In[17]:


# Calculate feature importance in the Random Forest model.
importances = rf_model.feature_importances_
importances


# In[18]:


# We can sort the features by their importance.
sorted(zip(rf_model.feature_importances_, X.columns), reverse=True)

