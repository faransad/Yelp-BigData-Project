# Yelp Big Data Sentiment Analysis Project

This project is part of a university assignment focused on large-scale data processing and machine learning using the **Yelp Open Dataset.

---

🔧 Technologies & Tools

- Apache Spark 3.5.3 (via PySpark)
- Apache Hive 3.1.3
- Google Cloud Dataproc
- Google Cloud Storage (GCS)
- Python 3.x
- Pandas, Scikit-learn, Matplotlib, Seaborn

---

📁 Project Structure
---

📌 Key Tasks Performed

1. Data Ingestion & Cleaning
- Loaded `business.json` and `review.json` from GCS using PySpark
- Joined and cleaned data, filtered for restaurants
- Saved the cleaned dataset as **Parquet**

2. Data Analysis with Spark & Hive
- Performed three key analytical queries using both engines:
  - Sentiment distribution
  - Average stars per city
  - Business review count distribution
- Compared performance and results between Spark and Hive

3. Sentiment Classification (ML)
- Labeled reviews into: positive (≥4 stars), neutral (=3 stars), negative (≤2 stars)
- Vectorized text using TF-IDF
- Trained a Random Forest Classifier using Spark MLlib
- Evaluated the model using F1, accuracy, precision, recall
- Generated and visualized a confusion matrix

---

📝 Screenshots

All major outputs and visual results are included in the `/screenshots` folder.

---

📊 Dataset

- Source: [Yelp Open Dataset](https://www.yelp.com/dataset)
- Files used: `business.json`, `review.json`
- Data Size: ~5M reviews; cleaned subset stored as 41 Parquet files on GCS

---

## 📌 Notes

This project was developed entirely in Google Colab, using Spark and Hive deployed via GCP Dataproc. The `.ipynb` file contains the complete, reproducible code.

---

👤 Author

Student project for academic purposes.
Feel free to explore or fork the repository if you find it useful.
