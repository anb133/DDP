Number of Telephones by World Regions
========================================================
author: Anna Barbayeva
date: 2/2/2017
autosize: true

Overview
========================================================
The presentation was created as the second part of the Course Project for the **Developing Data Products**, 
part of the **Coursera Data Science Specialization**. 

The application developed for the first part of the Course Project is available at <https://anb133.shinyapps.io/My_App/>.

The source code for the application (ui.R and server.R) is available at my GitHub repository <https://github.com/anb133/DDP>.

Dataset 
========================================================
I have used dataset 'WorldPhones', a dataset from pre-installed package "datasets". The dataset shows the number of telephones in various regions of the world (in thousands). The only change that was brought is changing the column names to the full ones. 

Here are the first 3 rows of the dataset: 

|     | North America| Europe| Asia| South America| Oceania| Africa| Middle America|
|:----|-------------:|------:|----:|-------------:|-------:|------:|--------------:|
|1951 |         45939|  21574| 2876|          1815|    1646|     89|            555|
|1956 |         60423|  29990| 4708|          2568|    2366|   1411|            733|
|1957 |         64721|  32510| 5230|          2695|    2526|   1546|            773|
Application Functionality
========================================================
The application is visualizing historical data for the region of your choice. Also, there is an option of calculating the average number of telephones in the given region over the given period (1951-1961). In dataset the numbers of telephones are in thousands, while the average number for the region is in single units.
User Interface
========================================================
The applicetion has 2 tabs: the first one is the application per se, while the second tab "Documentation" has a short description for users. 
![Tab 1](4.jpg)
