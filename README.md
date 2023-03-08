# The effect of Amsterdam Dance Event (ADE) on the prices of different types of Airbnb accommodations.

welcome to our Research project!

file:///home/emi/Downloads/ade-foto.jpeg![image](https://user-images.githubusercontent.com/112580804/223731496-5207056b-fed3-40cf-b741-02b7546c5136.png)

##prject description

According to the site of Amsterdam Dance Event (ADE), ADE is the most upfront, influential and educational gathering for electronic music and its industry. In 2022 it attracted around 450.000 unique visitors (NL Times, 2022). These people are not only from Amsterdam and therefore there will be a huge demand for different types of housing option, e.g. appartements, villa, etc.

With this huge temporary increase in demand but a relatively stable supply, we could amagine that the price would skyrocket during the event. Therefore, we wanted to research whether there was actually a relationship between ADE and the prices of Airbnb accomodations. In addition to this, we also wanted to investigate whether this relationship would be the same for different types of accomodations, e.g. appartements, villas and hotels. Based on this, we proposed the following research question: What is the relationship between Amsterdam Dance Event (ADE) and the prices of different types of Airbnb accommodations (e.g. private room, apartment, villa) in Amsterdam during the event? 

![image](https://user-images.githubusercontent.com/112580804/223733341-4aed6d72-9322-4a68-b0a4-713277790d94.png)

#Variables

Dependent variable= Price, continuous variable: the listing price of an Airbnb per night in euros

Independent variable= ADE, a dummy variable: whether there is the Amsterdam Event on that day(1) or not (0).

moderating variable= Accommodation type, categorical variable: The type of an Airbnb accommodation.


#Our Hypotheses

H1: The prices of accommodations in Amsterdam during the ADE event will be higher than the prices of accommodations during a comparable time period without the ADE event.

H2: The type of accommodation will moderate the relationship between ADE and accommodation prices. For example, the prices of villas during the ADE event will increase more than the prices of apartments or private rooms.

H3: The interaction between ADE and accommodation type will have a significant impact on accommodation prices. For example, the prices of villas during the ADE event will be higher than the prices of apartments or private rooms, and this difference will be greater than during a comparable time period without the ADE event.




## Dependencies
- R 
- R packages: `install.packages("stargazer")`
- [Gnu Make](https://tilburgsciencehub.com/get/make) 
- [TeX distribution](https://tilburgsciencehub.com/get/latex/?utm_campaign=referral-short)
- For the `makefile` to work, R, Gnu make and the TeX distribution (specifically `pdflatex`) need to be made available in the system path 
- Detailed installation instructions can be found here: [tilburgsciencehub.com](http://tilburgsciencehub.com/)

##sources
- NL Times. (2022, October 24). Amsterdam Dance Event Sets New Visitor Record, Announces Next Year's Dates. Retrieved from https://nltimes.nl/2022/10/24/amsterdam-dance-event-sets-new-visitor-record-announces-next-years-dates.

## Notes
- `make clean` removes all unncessary temporary files. 
- Tested under Linux Mint (should work in any linux distro, as well as on Windows and Mac) 
- IMPORTANT: In `makefile`, when using `\` to split code into multiple lines, no space should follow `\`. Otherwise Gnu make aborts with error 193. 
- Many possible improvements remain. Comments and contributions are welcome!

