Yelp Big Data Sentiment Analysis Project

This project was developed as part of a university assignment focused on large-scale data processing and sentiment classification using the Yelp Open Dataset. It demonstrates how distributed systems and machine learning can be integrated to analyze millions of customer reviews.
---

🔧 Technologies & Tools

- Apache Spark 3.5.3 (via PySpark)
- Apache Hive 3.1.3
- Google Cloud Dataproc
- Google Cloud Storage (GCS)
- Python 3.x
- Libraries: Pandas, Scikit-learn, Matplotlib, Seaborn

--
📁 Project Structure

	•	yelp_sentiment_pipline.ipynb: Complete and reproducible code in Google Colab (Spark + Python)
	•	yelp_analysis_hive.sql: Hive queries used for analytical tasks
	•	screenshots/: Selected output screenshots and visualizations
---

📌 Key Tasks Performed

🧹 1. Data Ingestion & Cleaning
	•	Loaded business.json and review.json from GCS using PySpark
	•	Filtered for restaurant-related data and joined on business IDs
	•	Cleaned and saved the final dataset in Parquet format (42 files, ~5M reviews)

📊 2. Data Analysis with Spark & Hive
	•	Performed three analytical queries using both SparkSQL and Hive:
	•	Sentiment distribution based on labeled reviews
	•	Average review stars by city
	•	Distribution of businesses by review count
	•	Compared execution time and output consistency between Spark and Hive

🤖 3. Sentiment Classification (Machine Learning)
	•	Labeled sentiments based on star ratings:
	•	≥ 4 stars → Positive
	•	= 3 stars → Neutral
	•	≤ 2 stars → Negative
	•	Used TF-IDF to vectorize review texts
	•	Trained a Random Forest Classifier using Spark MLlib
	•	Evaluated model performance with F1, accuracy, precision, and recall
	•	Visualized results using a confusion matrix

---

📂 Screenshots

A collection of output screenshots is included in the screenshots/ folder for reference.

---

📊 Dataset

- Source: [Yelp Open Dataset](https://www.yelp.com/dataset)
- Files used: `business.json`, `review.json`
- Data Size: ~5M reviews; cleaned subset stored as 42 Parquet files on GCS

---

📌 Notes

	•	The project was implemented entirely in Google Colab, using Apache Spark and Hive deployed on Google Cloud Dataproc
	•	All processing, analysis, and model training were performed in the cloud
	•	Outputs were exported to GCS for visualization and reporting
