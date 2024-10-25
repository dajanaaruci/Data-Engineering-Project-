🎵 Spotify Data Warehouse Project
A sophisticated MySQL data warehouse implementation designed for comprehensive analysis of Spotify music data, featuring enterprise-grade architecture and advanced temporal tracking capabilities. 
Link to dataset: https://www.kaggle.com/datasets/yamaerenay/spotify-dataset-19212020-600k-tracks
Project Overview
This enterprise-scale data warehouse project transforms raw Spotify music data into actionable insights through a robust multi-layered architecture. The system implements industry-standard slowly changing dimensions (Type 2 SCD) to maintain historical accuracy and provide temporal analysis capabilities.
The warehouse processes the comprehensive Spotify Dataset 1921-2020, which contains detailed track metadata from over 600,000 songs. This extensive dataset encompasses comprehensive artist information, advanced audio feature analytics, historical popularity metrics, genre classifications, and listener engagement data. The resulting warehouse enables deep analysis of music trends, artist performance, and listener preferences across a century of recorded music.
Core Features
Multi-Layer Architecture
The Stage Layer serves as the initial data landing zone, where incoming data undergoes rigorous validation and quality checks. This layer implements preliminary transformation and cleaning processes, with comprehensive error handling and logging mechanisms to ensure data integrity from the outset.
The Historical Layer maintains temporal accuracy through Type 2 Slowly Changing Dimensions. This sophisticated approach enables tracking of all changes over time, with automated versioning and current record flagging. The system maintains complete data lineage, allowing for point-in-time analysis and historical trend examination.
Automated Data Processing
The warehouse features sophisticated data transfer systems that handle artist data processing, track information synchronization, and recommendation data integration. Each process includes built-in data quality validation to maintain the highest standards of data integrity.
Advanced change tracking mechanisms automatically maintain historical records, detect and log changes, and manage data lineage. This comprehensive approach ensures that no historical information is lost while maintaining efficient access to current data.
Analysis Framework
The system provides sophisticated analytical views for tracking popular artists, monitoring explicit content, and analyzing recent recommendations. These views enable deep trend identification and genre distribution analysis across the entire dataset.
Powerful aggregation systems calculate and maintain artist popularity metrics, track distribution analysis, and recommendation tracking. These systems enable both point-in-time and temporal trend analysis, providing valuable insights into the evolution of music preferences and artist success.
Technical Architecture
Stage Layer Design
The Stage Layer serves as the foundation of data quality, implementing comprehensive validation frameworks and normalization processes. Sophisticated cleaning procedures handle data inconsistencies, while robust error handling systems and logging mechanisms ensure complete visibility into the data processing pipeline.
Historical Layer Design
The Historical Layer maintains the temporal integrity of all data through sophisticated tracking systems and change history maintenance. Current record management and version control mechanisms ensure accurate point-in-time reporting, while comprehensive data lineage tracking enables full visibility into how data changes over time.
Data Model
Dimension Tables
The Artist Dimension encompasses comprehensive artist metadata, temporal tracking fields, genre classifications, and popularity metrics. This rich data structure enables sophisticated analysis of artist evolution and success over time.
The Track Dimension contains detailed track information, including audio features, performance metrics, and content flags. This structure enables deep analysis of musical trends and characteristics across different eras and genres.
Fact Tables
The Artist Recommendations fact table maintains recommendation scores, temporal validity periods, relationship strengths, and genre correlations. This sophisticated structure enables complex analysis of music relationships and listener preferences over time.
Analysis Capabilities
Artist Analysis
The system enables detailed historical popularity tracking, monitoring of genre evolution, and analysis of follower growth patterns. Sophisticated algorithms identify collaboration patterns and artistic evolution over time.
Track Analysis
Advanced track analysis capabilities include mood categorization, popularity trend analysis, and detailed audio feature examination. The system provides comprehensive content classification capabilities for understanding music characteristics and trends.
Recommendation Analysis
The recommendation engine performs sophisticated similarity scoring, genre-based recommendations, and temporal preference tracking. Advanced collaborative filtering provides deep insights into music relationships and listener preferences.
