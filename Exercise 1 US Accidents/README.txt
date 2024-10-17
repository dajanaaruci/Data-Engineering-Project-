US Accidents Analysis Using Medallion Architecture

Introduction
Each year, 1.35 million people lose their lives on roadways worldwide, making road crashes the eighth leading cause of death globally and the leading cause for individuals aged 5–29. More people now die in road crashes than from HIV/AIDS.

Accidents have a big impact on individuals, families, and communities, particularly in the United States. Understanding the causes, patterns, and consequences of accidents is essential for public safety, transportation planning, and policy-making. In this project, we explore accidents in the U.S., leveraging the US Accidents Dataset to identify trends, patterns, and critical factors.

Dataset
The dataset used in this project is the [US Accidents Dataset](https://www.kaggle.com/datasets/sobhanmoosavi/us-accidents) available on Kaggle. This dataset covers traffic accidents across 49 U.S. states from February 2016 to March 2023, comprising 7.7 million records. The data was collected via multiple traffic APIs that stream data from transportation departments, law enforcement, cameras, and road sensors.

Project Objectives
The key objectives of this project are:

1. **Public Safety**: Analyzing accident causes helps reduce fatalities and injuries.
2. **Transportation Efficiency**: Minimizing accidents improves traffic flow and reduces costs.
3. **Business Solutions**: Companies can optimize logistics and reduce operational risks.
4. **Resource Allocation**: Predicting severity helps deploy emergency resources effectively.
5. **Infrastructure Planning**: Accident data guides the design of safer roads.
6. **Insurance and Risk Assessment**: Insurers can estimate potential claims based on accident severity.
7. **Autonomous Vehicles**: Data-driven insights help improve the safety features of self-driving cars.

## Medallion Data Architecture
We implemented a Medallion Data Architecture to structure our data processing pipeline:

1. **Bronze Layer**: Raw accident data is ingested.
2. **Silver Layer**: Data is cleaned, transformed, and filtered for meaningful insights.
3. **Gold Layer**: Finalized, enriched data ready for advanced analysis, such as predicting accident severity and regional trends.

This architecture ensures that the data processing pipeline is scalable and efficient, enabling detailed analysis of large datasets.

Data Exploration and Visualizations
We focus on uncovering patterns and generating visual insights to inform public safety initiatives. This includes:

1. Correlation between Merged Data**: Analyzing how various factors like weather, location, and time correlate with accident severity.
2. Proportion Levels of Accidents**: Understanding the distribution of accidents across different severity levels.
3. Accident Trends (2019–2021)**: Visualizing the number of accidents over all months, identifying peaks, and analyzing accident frequency during this period.

Dataset Overview
The dataset consists of 46 columns and 7,728,394 rows. Key columns include:

- ID: Unique identifier for each accident.
- Severity: A score from 1 (low impact) to 4 (high impact) based on traffic disruption.
- Start_Time / End_Time: Time of the accident in the local time zone.
- Location (Lat, Lng): Geographic coordinates of the accident.
- Weather_Condition, Temperature, Visibility**: Environmental conditions during the accident.
