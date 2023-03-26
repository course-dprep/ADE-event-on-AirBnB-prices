# The effect of Amsterdam Dance Event (ADE) on the prices of different types of Airbnb accommodations.

Welcome to our Research Project!

![image](https://user-images.githubusercontent.com/112580804/223731496-5207056b-fed3-40cf-b741-02b7546c5136.png)

### Project description

According to the site of Amsterdam Dance Event (ADE), ADE is the most upfront, influential and educational gathering for electronic music and its industry. In 2022 it attracted around 450.000 unique visitors (NL Times, 2022). These people are not only from Amsterdam and therefore there will be a huge demand for different types of housing option, e.g. appartements, villa, etc.

With this huge temporary increase in demand but a relatively stable supply, we could amagine that the price would skyrocket during the event. Therefore, we wanted to research whether there was actually a relationship between ADE and the prices of Airbnb accomodations. In addition to this, we also wanted to investigate whether this relationship would be the same for different types of accomodations; private rooms, shared rooms, entire places, and hotel rooms. Based on this, we proposed the following research question: What is the relationship between Amsterdam Dance Event (ADE) and the prices of different types of Airbnb accommodations (private room, shared rooms, hotel rooms, and entire palces) in Amsterdam? 

![image](https://user-images.githubusercontent.com/112580804/223733341-4aed6d72-9322-4a68-b0a4-713277790d94.png)

### Variables

Dependent variable= Price, continuous variable: the listing price of an Airbnb per night in euros

Independent variable= ADE, a dummy variable: whether there is the Amsterdam Event on that day(1) or not (0).

moderating variable= Accommodation type, categorical variable: The type of an Airbnb accommodation.


### Our Hypotheses

H1: The prices of accommodations in Amsterdam during the ADE event will be higher than the prices of accommodations during a comparable time period without the ADE event.

H2: The type of accommodation will moderate the relationship between ADE and accommodation prices. For example, the prices of villas during the ADE event will increase more than the prices of apartments or private rooms.

### Type of Analysis

For this research project, multiple regression analysis would be a useful statistical method to investigate the relationship between the independent variable (ADE) and the dependent variable (price) while controlling for the moderating variable (accommodation type). By fitting a regression model, we can examine the impact of ADE on the prices of different types of Airbnb accommodations in Amsterdam during the event. We can also test our hypotheses using the regression coefficients and statistical significance levels to determine the strength and direction of the relationships.

# Conclusion of the study

This study aimed to investigate the effects of the Amsterdam Dance Event (ADE) and the type of Airbnb accommodation on the prices of Airbnb accommodations in Amsterdam during the event. The results showed that while the presence of ADE is associated with a decrease in the predicted price of an Airbnb accommodation per night in euros, this effect was not statistically significant. On the other hand, the type of accommodation was a more significant predictor of price, with Hotel rooms, Private rooms, and Shared rooms being associated with lower predicted prices than Entire places. Hosts who want to increase the prices of their Airbnb accommodations during the ADE event may want to consider advertising their properties as Entire places. The study also showed that the independent variables in the model explained a large proportion of the variability in the response variable, with the model being a good fit for the data. However, these findings are based on a specific dataset and may not generalize to other samples or populations. Further research is needed to confirm these findings and explore other factors that may affect the prices of Airbnb accommodations during the Amsterdam Dance Event.

# Structure of the repository
```
├── data
├── gen
   ├── analysis
   ├── data-preparation
   └── paper
└── src
   ├── analysis
   ├── data-preparation
   └── paper
├── .gitignore
├── README.md
├── makefile
```

# Example of reproducible research workflow

The main aim of this to have a basic structure, which can be easily adjusted to use in an actual project. In this example project, the following is done:

-Download and prepare data from insideairbnb.com (Calender and listings data from Amsterdam)
-Run some analysis on the cleaned and filtered data 
-Analyse the results (see if the prices are influenced by the ADE.)

# Dependencies

- R 
   - R Markdown, R script
   - R packages: Tidyverse, Dplyr, lubridate, lmtests, car, ggplot2, stats
- Gnu Make
   - Makefile
- Git Bash
- GitHub

# How to run the project 

To run the entire project, type "make" in the command prompt and run. type make -n beforehand to check what changes will be made.

Sidenotes: 
- make has to be installed in order for it to work.
- It can take some time fo the whole project to run.

# sources

- Insideairbnb (http://insideairbnb.com/get-the-data/)
- NL Times. (2022, October 24). Amsterdam Dance Event Sets New Visitor Record, Announces Next Year's Dates. Retrieved from https://nltimes.nl/2022/10/24/amsterdam-dance-event-sets-new-visitor-record-announces-next-years-dates.

# Notes

- `make clean` removes all unncessary temporary files. 
- Tested under Linux Ubuntu (should work in any linux distro, as well as on Windows and Mac) 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- Many possible improvements remain. Comments and contributions are welcome!

# Authors

This repository is produced for the course Data Preperation and Workflow Management taught by Hannes Datta, at the Tilburg University. The repository is collabarted on by a team consisting of:

-Jordy van de Vorle
-Boaz Haveman
-Wiebe Weijs
-Nohemi Cosster
