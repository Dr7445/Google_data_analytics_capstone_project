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

