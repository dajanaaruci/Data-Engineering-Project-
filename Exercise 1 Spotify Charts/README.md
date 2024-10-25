# Spotify Charts Data Analysis

This project explores the Spotify Charts dataset available on Kaggle, analyzing the data to uncover insights and trends.

# Dataset

The dataset used in this project is the [Spotify Charts](https://www.kaggle.com/datasets/dhruvildave/spotify-charts) dataset from Kaggle. This dataset contains information on the daily top 200 songs for various countries, including song rankings, metadata, streaming numbers, and date information. It contains 26,173,514 data points separated into 9 columns; title, rank, date, artist, url, region, chart, trend, streams.

# Data Preprocessing and Analysis

For this part of the project, we have:

1. Imputed Missing Values: We trained two machine learning algorithms to learn the patterns and relationships between different features in the data, such as streams, time periods, trends, and charts. This allowed us to accurately fill in any missing values in the dataset, streams and charts. 

2. Performed Time Series Analysis: We built a time series model to analyze the trends and patterns in the data over time. This helped us identify any seasonal or cyclical fluctuations that could provide additional insights.

3. Created Geospatial Visualizations: We generated various visualizations, including maps, to analyze song performance and trends by geographic region. This provided a better understanding of the global nature of the Spotify music streaming market.

# Findings and Insights

Our analysis of the Spotify Charts dataset has uncovered several interesting insights, including:

- Trends in global song popularity and streaming over time
- Differences in music consumption patterns across different countries and regions
- Relationships between song features ( trend, artist, release date) and streaming performance

These findings are detailed in the project repository, along with the code and visualizations used to uncover them.

# Next Steps

Going forward, we plan to use the cleaned and enriched Spotify Charts dataset to build predictive models that can forecast future song performance in charts. This could be useful for music industry professionals, record labels, and artists to better understand and plan their marketing and release strategies.
