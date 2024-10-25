US Accidents Analysis Using Medallion Architecture — Exercise 1
Introduction
Each year, 1.35 million people lose their lives on roadways worldwide, making road crashes the eighth leading cause of death globally and the leading cause for individuals aged 5–29. More people now die in road crashes than from HIV/AIDS.

Accidents significantly impact individuals, families, and communities, particularly in the United States. Understanding the causes, patterns, and consequences of accidents is essential for public safety, transportation planning, and policy-making. This project explores accidents in the U.S., leveraging the US Accidents Dataset to identify trends, patterns, and critical factors.

Dataset
The dataset used in this project is the US Accidents Dataset, available on Kaggle.

This dataset covers traffic accidents across 49 U.S. states from February 2016 to March 2023, comprising 7.7 million records. The data was collected from multiple traffic APIs that stream information from transportation departments, law enforcement, cameras, and road sensors.

Project Objectives
The primary objectives of this project are as follows:

Public Safety: Analyze accident causes to reduce fatalities and injuries.
Transportation Efficiency: Minimize accidents to improve traffic flow and reduce costs.
Business Solutions: Enable companies to optimize logistics and reduce operational risks.
Resource Allocation: Predict accident severity to help deploy emergency resources effectively.
Infrastructure Planning: Use accident data to guide the design of safer roads.
Insurance and Risk Assessment: Help insurers estimate potential claims based on accident severity.
Autonomous Vehicles: Provide data-driven insights to improve the safety features of self-driving cars.
Medallion Data Architecture
This project employs a Medallion Data Architecture to structure the data processing pipeline, which includes the following layers:

Bronze Layer: Raw accident data ingestion.
Silver Layer: Data cleaning, transformation, and filtering to extract meaningful insights.
Gold Layer: Finalized, enriched data prepared for advanced analysis, such as predicting accident severity and identifying regional trends.
This architecture ensures the data processing pipeline is both scalable and efficient, facilitating detailed analysis of large datasets.

Data Exploration and Visualizations
The focus of data exploration is to uncover patterns and generate visual insights to support public safety initiatives. This includes:

Correlation Analysis: Examining relationships between factors like weather, location, and time with accident severity.
Severity Levels: Understanding the distribution of accidents across different severity levels.
Trend Analysis (2019–2021): Visualizing accident occurrences over time to identify peaks and patterns during this period.
Dataset Overview
The dataset consists of 46 columns and 7,728,394 rows. Key columns include:

ID: Unique identifier for each accident.
Severity: Score from 1 (low impact) to 4 (high impact), indicating the accident’s disruption level.
Start_Time / End_Time: Time of the accident in the local timezone.
Location (Lat, Lng): Geographic coordinates of the accident.
Weather_Condition, Temperature, Visibility: Environmental conditions present during the accident.
