🎵 Spotify Data Warehouse Project — Exercise 2: Analysis of Spotify Data

A deep-dive analysis exercise leveraging the Spotify data warehouse, specifically designed to extract valuable insights into music trends, artist evolution, and listener preferences.

Dataset
Link to dataset: https://www.kaggle.com/datasets/yamaerenay/spotify-dataset-19212020-600k-tracks

Project Overview
Exercise 2 utilizes the robust Spotify data warehouse developed for comprehensive data analysis across a century of music.
The warehouse includes a multi-layered architecture, supporting historical analysis and high data integrity,
with temporal tracking using Slowly Changing Dimensions (Type 2 SCD).

Key Objectives

Artist Evolution: Track changes in artist popularity and genre over time.
Genre Trend Analysis: Identify trends in genre popularity and distribution.
Music Characteristics: Examine track features such as tempo, key, and energy over different periods.
Listener Preferences: Analyze engagement data to understand shifts in listener tastes.
Core Features

Historical Data Maintenance: Temporal integrity is preserved through SCD Type 2, enabling analysis of data changes over time.
Automated Data Processing: Data transfer pipelines handle artist and track information, maintaining historical records for point-in-time and trend analysis.
Analysis Framework: Includes analytical views for popular artists, genre trends, explicit content tracking, and recommendations.
Data Model

Dimension Tables

Artist Dimension: Stores artist metadata, including popularity metrics, genre, and collaboration patterns.
Track Dimension: Captures track-specific details such as audio features and performance metrics.
Fact Tables

Artist Recommendations: Contains recommendation scores, genre-based correlations, and listener preference tracking.
Technical Architecture

Stage Layer: Initial landing and validation zone for incoming data.
Historical Layer: Stores changes over time with automated versioning and point-in-time analysis.
Advanced Analysis Layer: Supports complex aggregation and temporal analysis for artist, track, and genre evolution.
Analytical Capabilities

Artist Popularity and Genre Evolution: Track artist growth, collaboration patterns, and genre shifts.
Music Feature Analysis: Detailed examination of tempo, energy, and mood categorization.
Recommendation Tracking: Advanced collaborative filtering for insight into music relationships and listener patterns.
