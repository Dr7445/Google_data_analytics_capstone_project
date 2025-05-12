# Google Data Analytics Capstone Project

## Project Resources

- [Case study document](https://www.coursera.org/learn/google-data-analytics-capstone/supplement/7PGIT/case-study-1-how-does-a-bike-share-navigate-speedy-success)

## Key Questions

1. **How do annual members and casual riders use Cyclistic bikes differently?**
2. **Why would casual riders buy Cyclistic annual memberships?**
3. **How can Cyclistic use digital media to influence casual riders to become members?**

## Project Summary

- I am a junior data analyst at **Cyclistic**, working for the **marketing analytics team**.
- The **director of marketing** believes that future success is dependent on maximizing the number of annual memberships.
- Our team has been tasked with understanding the differences between how **casual members** and **annual members** use Cyclistic bikes.
- Using these insights, we are to engineer a new **marketing strategy** to convert casual riders into annual members.
- These recommendations must be backed up by **data** and **visualizations** to make a compelling case for the executives to approve the recommendations.

## ASK

In this phase of the data analysis process, we are focused on understanding the problem at hand by asking the right questions. The key question we are tackling here is:

- **How do annual members and casual riders use Cyclistic bikes differently?**

This is the first phase of the project where the goal is to define the problem clearly, ensuring we align with the expectations of stakeholders and frame the analysis accordingly.

## Business Task

**Cyclistic** is a bike-share company in **Chicago**. The executive director believes that annual memberships will help drive future growth. At present, **casual riders** (who use single-ride or full-day passes) make up a large portion of Cyclistic's customer base. However, **annual memberships** are more profitable.

The **marketing team**, led by **Lily Moreno**, wants to implement a campaign to convert casual riders into annual members. To achieve this, our task as the **data analytics team** for the project is to:

1. Analyze the difference between how **annual members** and **casual riders** use Cyclistic bikes.
2. Identify the key reasons that might attract casual riders to purchase an **annual membership**.
3. Explore ways in which **social media** can influence casual riders to become members.

Moreno has assigned me with answering the first question: *How do annual members and casual riders use Cyclistic bikes differently?*

To achieve this objective, we will be using **historical bike trip data** to provide meaningful insights into these areas and engineer data-driven recommendations for the marketing team. These insights will be used to put the case forward to the executive team for approval of the new marketing strategies.

I am to produce a report with the following deliverables:

1. A clear statement of the **business task**.
2. A description of all **data sources** used.
3. Documentation of any **cleaning or manipulation of data**.
4. A summary of your **analysis**.
5. Supporting **visualizations** and **key findings**.
6. Your **top three recommendations** based on your analysis.

The following case study roadmap can be used as a guide:

![Case Study Roadmap](https://github.com/user-attachments/assets/ad8a6050-4840-41bb-a41b-d48d84fcc7b6)

## Key Stakeholders

- **Lily Moreno** – Director of marketing and my manager.
- **The Cyclistic executive team** – Who have the final say in approving the recommendations.


#🚴‍♀️ Cyclistic Capstone Project – Google Data Analytics

##📌 Business Task
The goal of this analysis is to help Cyclistic, a fictional bike-share company in Chicago, understand how casual riders and annual members use the service differently. The insights will support a marketing strategy to convert more casual riders into paying members.

##📂 Data Description
The dataset includes bike trip data from Divvy, Chicago’s bike-share system, for all four quarters of 2019.
Each CSV file contains details such as:

Start/end time and station

Trip duration

User type (member or casual)

Rider demographics (where available)

Note: The data was provided by Motivate International Inc. under the open data license.




# Data cleaning, manipulation and transformation

Below is an overveiw of the combined datasets in to a single dataframe, coloumn names are consistant across q1,q3 and q4
however q2 uses different column names for the same data (see 2nd pic) so I will use blended data techniques to merge the q2
data in to the correct columns to streamline the dataframe.

<img width="1009" alt="image" src="https://github.com/user-attachments/assets/5b7f759f-7d50-42fa-b3f7-07259117221e" />

<img width="1018" alt="image" src="https://github.com/user-attachments/assets/9f6ed0b9-7c33-4488-a6e0-ef91b4944c7a" />






Blended Q2 data ready for further cleaning, manipulation and transformation.



<img width="1026" alt="image" src="https://github.com/user-attachments/assets/382b6023-5858-4d9a-9a65-0a91bcc9f47a" />


## Changing the format of tripduration

Here I have changed the format of trip duration in to a medioum that is easier to digest.

code snippet can be found in the cleaning_and_transformation.R file


<img width="76" alt="image" src="https://github.com/user-attachments/assets/3bdb21fe-f33d-4093-9730-4f3e91aefcb2" />    <img width="88" alt="image" src="https://github.com/user-attachments/assets/2b6fadc7-9c66-4706-996c-029fdf837c66" />


# Replacing missiing values

A quick check for missing or null values showed that gender and birthyear both had a substantial amout of missing values.

 colSums(is.na(all_trips_2019_clean))
          trip_id        start_time          end_time      tripduration from_station_name   to_station_name          usertype            gender         birthyear 
                0                 0                 0                 0                 0                 0                 0            559206            538751 
          quarter trip_duration_fmt 
                0                 0 

In the gender column I replaced all missing values with "unspecified" for consistency. The code snipet for this is contained in the cleaning_and_transformation.R file

In the birthrate column I caluclated the mode of the birthyears because I fell that it would be the most beneficial for further age analysis, I then populated all missing
values with the Mode of the birthyeas which was 1992. The code snippet for this is contained in the mean_age_column.R file.


![image](https://github.com/user-attachments/assets/65896701-7688-44b9-b9c9-3a55d9531ae9)



![image](https://github.com/user-attachments/assets/0d9c28f2-92c3-4f8c-98d9-a474147475f5)



![image](https://github.com/user-attachments/assets/db424127-a9a0-4cc9-b384-1845da8d9b8e)



📱 Cyclistic’s Social Media Presence: A Missed Opportunity

In the search to uncover what differentiates subscribers from casual members, the available structured data was limited in scope — it offered only a surface-level understanding and few actionable insights.

Driven by curiosity and a desire to go further, I expanded the investigation into semi-structured data: social media platforms and online engagement. Although this approach didn’t yield clean, categorical data suitable for analysis, it revealed something more powerful — a clear gap in Cyclistic’s customer connection strategy.

Through manual review of social media posts (from the real-world company Cyclistic is based on), a striking pattern emerged:

Twitter followers: ~13,000

Instagram followers: ~6,000

Average post engagement: Fewer than 10 likes per post

For a mobile app-based company facilitating over 3 million rides annually, this is a significant mismatch between usage and engagement. The numbers suggest that many customers see Cyclistic purely as a means to an end — a utility, not a community.

And therein lies the insight.

🤝 The Hidden Differentiator

A positive, emotionally resonant relationship with a brand is a powerful motivator. It encourages casual riders to become loyal subscribers — not just because of cost or convenience, but because they identify with the service.

This disconnect on social media may point to a missed opportunity. By investing in a stronger digital engagement strategy — storytelling, user-generated content, community features — Cyclistic could cultivate a sense of belonging, turning riders into advocates.
