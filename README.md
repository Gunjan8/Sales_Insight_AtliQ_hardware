# Sales Insight (AtliQ Hardware)- Analysis using SQL & Tableau 
## Problem statement :-
AtliQ Hardware is a company which supplies computer hardware and peripherals to many of clients such as surge stores, Nomad stores etc. across India. AtliQ Hardware head office is situated in Delhi, India and they have many regional office through out the India.

Sales director for this company is facing a lot of challenges is this the market is growing dynamically and sales director is facing issue in terms of tracking the sales in this dynamical growth market and he is having issues with growth of this bussiness, as overall sales was declining. He has regional manager for North India, South and Central India. Whenever he wants to get insights of thses region he would call these people and on the phone regional manager give some insights to him that this was the sales last quarter and we are going to grow by this much in the next quarter.

The problem was that all thses thing happening is verbal and these was mo proof with facts that how his business is affected and which made him frustraed as he can see that overall sales is declining but when he can ask regional manager, he is not getting complete picture of this bussiness and when he and this AtliQ hardware is big business. so to see insights clearly. and he will get proper insights anbd can take data driven decision to increase sales of hos company. All he wants is a simple data visualization tool which he can access on daily basis. By using such tools and technology one can make data driven decisiions which helps to increase the sales of the company. So, In this projects we will help a company make its own sales related dashboard using power BI.

## Project planning using AIMS grid :-
* **Purpose**  :-To unlock sale insights that are not visible before for sales team for decision support & automate them to reduced 
                       manual time spent in data gathering

* **Stakeholders**:-
  * Sales Director
  * Marketing Team
  * Customer Service Team
  * Data and Analytics Team
  * IT

* **End result** :- An automated dashboard providing quick and latest insights in order to support data driven decision making.

* **Success Criteria** :-
    * Dashboard(s) uncovering sales order insights with latest data available.
    * Sales team able to take better decisions and prove 10% cost saving of total spend.
    * Sales analysis stop data gathering manually in order to save 20% business time and reinvest it value added activity.

## Data Analysis using MySQL:-
1. Import file [db_dump.sql](https://github.com/Gunjan8/Sales_Insight_AtliQ_hardware/blob/main/db_dump.sql)  and [db_dump_2](https://github.com/Gunjan8/Sales_Insight_AtliQ_hardware/blob/main/db_dump_version_2%20(1).sql) in MySQL.
2. Analysis of data in MySQl by running several queries like I have done in this file [Sales_Insight](https://github.com/Gunjan8/Sales_Insight_AtliQ_hardware/blob/main/SalesInsight.sql) .

## Tableau [dashboard](https://public.tableau.com/app/profile/gunjan.chandak/viz/Sales_Insight_AtliQ_hardware/Dashboard-Profitanalysis):-
1. Connect the MySQL database with the Tableau desktop.
2. Organize  databse in star schema data model so it is easy to understand and analyze. ![Alt text](https://github.com/Gunjan8/Sales_Insight_AtliQ_hardware/blob/main/images/Screenshot%20(26).png)
3. Filter the negative and 0 values in sales amount column in transaction table by giving the column range above 0.
4. Convert USD into INR in the transaction’s table because the AtliQ Hardware only works in India so the USD values are not required. To convert those USD values use calculated field option to create a column Normalized amount and write a formula to rectify this issue. `IF [Currency] =='USD' THEN [Sales Amount]*74 ELSE [Sales Amount] END`
5. Make individual sheets to visualize and analyse data and then compile them to make dashboard .
6. 



      
    
   
              
