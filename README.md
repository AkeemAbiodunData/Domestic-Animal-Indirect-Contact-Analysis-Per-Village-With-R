# Domestic-Animal-Indirect-Contact-Analysis-Per-Village-With-R

Project Overview
This project analyzes the frequency and types of indirect contact with domestic animals across various villages. The aim is to understand exposure patterns to animal vectors—through means such as feces and secretions—that may be relevant for public health or zoonotic disease transmission studies.

The analysis was conducted using R and the ggplot2 package to visualize respondent data by contact type and village location.

📊 Dataset
The dataset contains variables on:

Village – Name of the respondent's village

Description – Type of indirect contact (e.g., F_Faeces, S_Secretion)

Frequency – Number of reported indirect contact incidents

contact_lookup – Lookup table for merging contact descriptors

Additional tables for descriptive and long-format transformations

Format
Rows: 792 observations

Variables: 81 (contact dataset), 90 (village dataset), others vary

🔍 Analysis Workflow
1. Data Preparation
Joined contact type descriptions using left_join

Transformed dataset into long format for plotting

Verified data structure via the environment pane in RStudio

2. Visualization
Created a stacked bar chart using ggplot2

Plotted frequency of contact types per village

Used geom_bar(stat = "identity") for accurate scaling

Customized visuals:

Removed background and grid lines

Angled x-axis text for readability

Color-coded by Contact Type (e.g., F_Faeces, S_Secretion)

Key Insights
Highest frequencies of indirect contact observed in Singo, Thigiri, and Kithunthi

Both contact types are present in most villages

Some villages show a stronger skew toward one type (e.g., feces vs. secretion)

🛠️ Tools Used
R (v4.4.1)

RStudio

ggplot2 – Data visualization

dplyr – Data manipulation

tidyr – Data reshaping

![Image](https://github.com/user-attachments/assets/d96649a5-d807-447b-be5b-8fece9993e7a)

![Image](https://github.com/user-attachments/assets/d7aab248-ed9b-4732-a7f1-6551fe818881)

![Image](https://github.com/user-attachments/assets/0c7446dd-d75f-4e3b-8238-1625ce1c1971)

![Image](https://github.com/user-attachments/assets/ff5e9eef-1793-4f50-b1e6-4790743f16a5)

📂 File Structure
contact.csv – Primary dataset

contact_lookup.csv – Lookup table for contact descriptions

village_analysis.R – Main analysis and plotting script


## Conclusion
This project highlights the patterns of indirect contact with domestic animals across rural villages, offering useful insights for health interventions, epidemiological research, and environmental safety planning. The use of R and ggplot2 ensures that the data is both reproducible and visually interpretable.
