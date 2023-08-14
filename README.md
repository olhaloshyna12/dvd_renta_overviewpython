# 💿 DVD-rental database overview using PostgreSQL nad Python 💿
## 📑 Context
Create a time-series plot showing daily total revenue for three different countries with three countries in one plot using matplotlib;

Carry out a sentiment analysis on movie descriptions adding another column to the data frame that provides a sentiment classificatio;

Create a visual in the notebook that shows how much revenue is coming from different countries to the DVD store using  matplotlib;

Do an analysis to show which actors are bringing in the most revenue (top 10 ranked);

 Create a new data-frame where you classify some different countries into some categories that make sense to you for 15 countries in this df there will be two columns, one column will give the country name, the other column will give the classification category;
 
Use an appropriate merge to merge that new data-frame from the last step with a dataframe from the dvd db, that gives the countries, so now countries are connected with their classification.
## 🖇️ DVD Rental Database Tables
There are 15 tables in the DVD Rental database:

- actor – stores actors data including first name and last name.
- film – stores film data such as title, release year, length, rating, etc.
- film_actor – stores the relationships between films and actors.
- category – stores film’s categories data.
- film_category- stores the relationships between films and categories.
- store – contains the store data including manager staff and address.
- inventory – stores inventory data.
- rental – stores rental data.
- payment – stores customer’s payments.
- staff – stores staff data.
- customer – stores customer data.
- address – stores address data for staff and customers
- city – stores city names.
- country – stores country names.

## 🌐 Dataset
- [Link](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/) ; or
- [Download Here](https://github.com/gordonkwokkwok/DVD-Rental-PostgreSQL-Project/tree/main/dataset)

