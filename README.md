# My Data Science Portfolio 
Student at IIT Jodhpur (BS in Data Science & Applications)

Hi, I am Sajid Rajawat! Here are my Machine Learning projects using Python.

## Projects

### 1. Iris Flower Classification 
* **Goal:** To predict the species of a flower (Setosa, Versicolor, Virginica) based on petal and sepal measurements.
* **Techniques:** Data Visualization (Seaborn Pairplot), K-Nearest Neighbors (KNN).
* **Result:** Achieved **100% Accuracy** (Score: 1.0).
* **Key Insight:** Found that *Petal Length* and *Petal Width* are the most important features to identify the flower.

### 2. Titanic Survival Prediction 
* **Goal:** To predict whether a passenger survived or not based on age, class, and gender.
* **Techniques:** Data Cleaning, Decision Tree, Random Forest Classifier.
* **Result:** Achieved **~76% Accuracy**.
* **Key Insight:** Solved the overfitting problem using Random Forest.

### 3. Housing Price Prediction 
* **Goal:** To predict the price of a house based on area and amenities.
* **Techniques:** Data Preprocessing (Converting Text to Numbers), Linear Regression.
* **Result:** Achieved **R2 Score of 0.65**.
* **Key Insight:** Discovered that *Bathrooms* and *Air Conditioning* increase the house price more than just Area.
---
### 4. Mall Customer Segmentation (Clustering) 
* **Goal:** Grouped mall customers based on Income and Spending Score to find target audiences.
* **Techniques:** K-Means Clustering, Elbow Method, Silhouette Score.
* **Key Insight:** Identified that "Young Customers (25-30)" are the highest spenders, not just the wealthy ones.
* **File:** [View Project](Project_4_Mall_Customer_Segmentation.ipynb)
---
### 5. Handwritten Digit Recognition (Deep Learning - CNN) 
* **Goal:** Built an AI model to recognize handwritten digits (0-9) from images.
* **Techniques:** Convolutional Neural Networks (CNN), TensorFlow/Keras, Image Processing (OpenCV).
* **Performance:** Achieved **99% Accuracy** on MNIST dataset.
* **Real World Test:** Successfully predicted custom handwritten digits by using dilation (thickening) techniques to match training data.
* **File:** [View Project](Project_5_Handwritten_Digit_Recognition.ipynb)
---
### 6. Spam SMS Detector (NLP) 
* **Goal:** To classify SMS messages as "Spam" or "Ham" (Legitimate) to filter out junk.
* **Techniques:** Natural Language Processing (NLP), CountVectorizer (Bag of Words), Naive Bayes Classifier.
* **Performance:** Achieved **99.19% Accuracy**.
* **Key Insight:** The model successfully filters out scams containing words like "Free", "Win", "Urgent" while preserving legitimate messages.
* **File:** [View Project](Project_6_Spam_Detector_NLP.ipynb)
---
### 7. Zomato Restaurant Data Analysis (EDA) 🍽️
* **Goal:** To analyze restaurant data to understand customer preferences, voting trends, and rating distributions.
* **Techniques:** Exploratory Data Analysis (EDA), Data Cleaning (Pandas), Data Visualization (Seaborn/Matplotlib).
* **Key Insight:** Visualized the relationship between **Restaurant Types** and **Votes**, identifying which dining categories receive the highest customer engagement.
* **File:** [View Project](zomato_project.ipynb)
* 🛒 Zepto Product Data Analysis (SQL)
* **Goal:** To clean, transform, and analyze Zepto's product dataset to uncover business insights regarding inventory health, pricing strategies, and revenue potential.
* **Techniques:** Data Cleaning (NULL handling), Data Transformation (Currency conversion), Categorical Aggregation, Conditional Logic (CASE statements), and Multi-level Sorting.
* **Data Cleaning:** Identified and removed invalid records with zero MRP and handled missing values in critical columns like weight and quantity.
* **Data Transformation:** Standardized financial metrics by converting pricing data from paise to rupees for accurate reporting.
* **Inventory Management:** Segmented products into 'Low', 'Medium', and 'Bulk' categories based on weight to optimize logistics and stock tracking.
* **Revenue Estimation:** Calculated the total estimated revenue per category by analyzing the relationship between discounted selling price and available quantity.
* **Stock Gap Analysis:** Isolated high-value items (MRP > 300) that are currently out of stock to identify potential sales loss.
* **Unit Economics:** Derived the 'Price per Gram' for products over 100g to identify the best value-for-money options for customers.
* **Key Insight:** Discovered the top 10 best-value products based on discount percentages and identified which categories offer the highest average discounts.
* **File:** [View Project]( zepto-data-analysis-sql.sql)
### Tools Used 🛠️
* **Languages:** Python
* **Libraries:** Pandas, NumPy, Scikit-Learn, Seaborn, Matplotlib
* **Platform:** Google Colab,sql,postgresql
