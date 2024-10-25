# Spotify Songs Dataset Analysis

This project looks at a dataset of songs, analyzing their features to gain insights and understand trends. The dataset includes information about various song attributes like danceability, energy, loudness, and lyrics. Through cleaning, transforming, and visualizing the data, we aim to extract meaningful insights for further analysis.

## Data Card

You can find the dataset on Kaggle: https://www.kaggle.com/datasets/bwandowando/spotify-songs-with-attributes-and-lyrics.

We refer to the raw dataset as the Bronze Layer, representing the initial unprocessed data before any cleaning or transformation.

The dataset contains the following details about songs:

Title: Name of the song
Artists: The artist(s) performing the song
Danceability: How suitable the song is for dancing
Energy: The intensity and activity level of the song
Loudness: The overall loudness of the song in decibels
Valence: Positivity of the song (e.g., happy, sad)
Lyrics: The words in the song
There are also other attributes such as tempo, speech, acousticness, and duration (in milliseconds).

## Data Processing and Analysis

Steps Taken:

Filling Missing Values: For missing values in key columns like song titles and lyrics, placeholder values were added to make sure no data was left out.
Cleaning Text: We cleaned the song titles, artists, and lyrics by removing unnecessary characters like brackets and extra spaces to make the data more consistent.
Outlier Handling and Transformation: We detected and handled outliers in features like loudness and speechiness. For skewed data, we applied transformations like logarithmic scaling to smooth out the data.
## Feature Engineering:

Mood Category: Songs were categorized as Sad, Neutral, or Happy based on the valence (positivity) score of each song.
Party Track Label: We created a new feature to identify high-energy, danceable songs as “party tracks.”

## Data Scaling:

Log Transformations: Applied to features like loudness and speech to reduce skewness.
Min-Max Scaling: Used to scale features like danceability, energy, and tempo between 0 and 1 for better comparison.
Insights from the Data

## Key findings from the analysis include:

Mood Distribution: The majority of songs fall into the Neutral or Happy categories, with fewer songs being categorized as Sad.
Party Track Potential: Many songs show high energy and danceability, making them suitable for upbeat playlists or parties.
