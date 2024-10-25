US Accidents Analysis Using Medallion Architecture — Exercise 1
Introduction
Each year, 1.35 million people lose their lives on roadways worldwide, making road crashes the eighth leading cause of death globally and the leading cause for individuals aged 5–29. More people now die in road crashes than from HIV/AIDS.

Accidents have a significant impact on individuals, families, and communities, particularly in the United States. Understanding the causes, patterns, and consequences of accidents is essential for public safety, transportation planning, and policy-making. This project explores accidents in the U.S., leveraging the US Accidents Dataset to identify trends, patterns, and critical factors.

Dataset
The dataset used in this project is the US Accidents Dataset, available on Kaggle at the following link:
https://www.kaggle.com/datasets/sobhanmoosavi/us-accidents

This dataset covers traffic accidents across 49 U.S. states from February 2016 to March 2023, comprising 7.7 million records. The data was collected via multiple traffic APIs that stream data from transportation departments, law enforcement, cameras, and road sensors.

Project Objectives
The primary objectives of this project are:

Public Safety: Analyzing accident causes helps reduce fatalities and injuries.

Transportation Efficiency: Minimizing accidents improves traffic flow and reduces costs.

Business Solutions: Companies can optimize logistics and reduce operational risks.

Resource Allocation: Predicting severity helps deploy emergency resources effectively.

Infrastructure Planning: Accident data guides the design of safer roads.

Insurance and Risk Assessment: Insurers can estimate potential claims based on accident severity.

Autonomous Vehicles: Data-driven insights help improve the safety features of self-driving cars.

Medallion Data Architecture
This project utilizes a Medallion Data Architecture to structure the data processing pipeline:

Bronze Layer: Raw accident data is ingested.

Silver Layer: Data is cleaned, transformed, and filtered to extract meaningful insights.

Gold Layer: Finalized and enriched data is prepared for advanced analysis, such as predicting accident severity and identifying regional trends.

This architecture ensures that the data processing pipeline is both scalable and efficient, allowing for detailed analysis of large datasets.

Data Exploration and Visualizations
The focus of data exploration is to uncover patterns and generate visual insights to inform public safety initiatives. This includes:

Correlation Analysis: Examining relationships between factors such as weather, location, and time with accident severity.

Severity Levels: Understanding the distribution of accidents across different levels of severity.

Trend Analysis (2019–2021): Visualizing accident occurrences over time to identify peaks and patterns during this period.

Dataset Overview
The dataset consists of 46 columns and 7,728,394 rows. Key columns include:

ID: Unique identifier for each accident.

Severity: A score ranging from 1 (low impact) to 4 (high impact), indicating the accident's disruption level.

Start_Time / End_Time: The time of the accident in the local timezone.

Location (Lat, Lng): Geographic coordinates of the accident.

Weather_Condition, Temperature, Visibility: Environmental factors present during the accident.
