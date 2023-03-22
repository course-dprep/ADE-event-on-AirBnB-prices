#*The effect of Amsterdam Dance Event (ADE) on the prices of different types of Airbnb accommodations.*

welcome to our Research Project!

![ADE Image](file:///home/emi/Downloads/ade-foto.jpegimage)

###prject description

According to the site of Amsterdam Dance Event (ADE), ADE is the most upfront, influential and educational gathering for electronic music and its industry. In 2022 it attracted around 450.000 unique visitors (NL Times, 2022). These people are not only from Amsterdam and therefore there will be a huge demand for different types of housing option, e.g. appartements, villa, etc.

With this huge temporary increase in demand but a relatively stable supply, we could imagine that the price would skyrocket during the event. Therefore, we wanted to research whether there was actually a relationship between ADE and the prices of Airbnb accomodations. In addition to this, we also wanted to investigate whether this relationship would be the same for different types of accomodations, e.g. appartements, villas and hotels. Based on this, we proposed the following research question: What is the relationship between Amsterdam Dance Event (ADE) and the prices of different types of Airbnb accommodations (e.g. private room, apartment, villa) in Amsterdam during the event?



####Variables

![My_image](https://user-images.githubusercontent.com/112580804/223733341-4aed6d72-9322-4a68-b0a4-713277790d94.png)


Dependent variable= Price, continuous variable: the listing price of an Airbnb per night in euros

Independent variable= ADE, a dummy variable: whether there is the Amsterdam Event on that day(1) or not (0).

moderating variable= Accommodation type, categorical variable: The type of an Airbnb accommodation.

####Our Hypotheses

H1: The prices of accommodations in Amsterdam during the ADE event will be higher than the prices of accommodations during a comparable time period without the ADE event.

H2: The type of accommodation will moderate the relationship between ADE and accommodation prices. For example, the prices of hotel rooms during the ADE event will increase more than the prices of entire places/apartments or private rooms.


#### type of Analysis

For this research project, multiple regression analysis would be a useful statistical method to investigate the relationship between the independent variable (ADE) and the dependent variable (price) while controlling for the moderating variable (accommodation type). By fitting a regression model, we can examine the impact of ADE on the prices of different types of Airbnb accommodations in Amsterdam during the event. We can also test our hypotheses using the regression coefficients and statistical significance levels to determine the strength and direction of the relationships.

## Conclusion of the Analysis

This study aimed to investigate the effects of the Amsterdam Dance Event (ADE) and the type of Airbnb accommodation on the prices of Airbnb accommodations in Amsterdam during the event. The results showed that while the presence of ADE is associated with a decrease in the predicted price of an Airbnb accommodation per night in euros, this effect was not statistically significant. On the other hand, the type of accommodation was a more significant predictor of price, with Hotel rooms, Private rooms, and Shared rooms being associated with lower predicted prices than Entire places. Hosts who want to increase the prices of their Airbnb accommodations during the ADE event may want to consider advertising their properties as Entire places. The study also showed that the independent variables in the model explained a large proportion of the variability in the response variable, with the model being a good fit for the data. However, these findings are based on a specific dataset and may not generalize to other samples or populations. Further research is needed to confirm these findings and explore other factors that may affect the prices of Airbnb accommodations during the Amsterdam Dance Event.


## Structure of the repository

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

## Example of reproducible research workflow

The main aim of this project is to investigate the effect of Amsterdam Dance Event (ADE) on the prices of different types of Airbnb accommodations in Amsterdam. The following steps will be taken:

   - Download and prepare data from insideairbnb.com (Calendar and Listings data from Amsterdam)
   - Clean and filter the data, removing unnecessary columns and merging the datasets into final datasets.
   - Analyze the relationship between the types of Airbnb accommodations (such as private rooms, apartments, and villas) and their prices in Amsterdam during the occurrence of Amsterdam Dance
     Event (ADE)
   - Investigate if the relationship between Amsterdam Dance Event (ADE) and prices of Airbnb accommodations is moderated by the type of accommodations.
   
## Dependencies


    R
        R Markdown, R script
        R packages: Tidyverse, Modelsummary, Fixest, Funx, Webshot
    Gnu Make
        Makefile
    Git Bash
    GitHub

## How to run the project 


To run the entire project, type "make" in the command prompt and run. type make -n beforehand to check what changes will be made.

Sidenotes:

   - make has to be installed in order for it to work.
   - It can take some time fo the whole project to run.

## Sources


Insideairbnb (http://insideairbnb.com/get-the-data/)

## Notes 


- `make clean` removes all unncessary temporary files. 
- Tested under Linux Mint (should work in any linux distro, as well as on Windows and Mac) 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- Many possible improvements remain. Comments and contributions are welcome!


## Authors


This repository is produced for the course Data Preperation and Workflow Management taught by Hannes Datta, at Tilburg University.
The repository is collabarted on by team consisting of:

  Jordy van de Vorle
  Boaz Haveman
  Wiebe Weijs
  Nohemi Cosster

