# Customer Shopping Analysis

A full end-to-end data analysis project where I explored customer shopping behaviour
using Python for data cleaning, MySQL for data analysis, and Tableau for visualisation.

\---

## Tools Used

* **Python** (Pandas) — data cleaning \& feature engineering
* **MySQL** — data storage \& SQL-based analysis
* **Tableau** — interactive dashboards \& visual insights

\---

Project Structure
customer-shopping-analysis/
├── data/                        ← raw dataset (CSV)
├── notebooks/                   ← Jupyter notebook (Python)
├── sql/                         ← SQL query files
├── tableau/                     ← Tableau screenshots
└── README.md
```

\---

## What I Did

1. **Cleaned the data** in Python — handled missing values, renamed columns, created new features like `age\_group` and `purchase\_frequency\_days`
2. **Loaded data into MySQL** using SQLAlchemy and ran analysis queries
3. **Created SQL Views** for reusable insights
4. **Built a Tableau dashboard** connected to MySQL views

\---

## Tableau Dashboard

|Chart|Insight|
|-|-|
|Revenue by Category|Clothing generates the highest revenue|
|Revenue by Season|Fall and Winter show the strongest sales|
|Spending by Gender|Female customers slightly outspend male customers|
|Discount Impact|Discounts show minimal effect on average spending|

Dashboard screenshots are available in the `/tableau/screenshots/` folder.

\---

## How to Run

1. Run `notebooks/customer\_shopping\_behaviour.ipynb` to clean data and load it into MySQL
2. Open MySQL Workbench → run `sql/01\_setup.sql`
3. Run `sql/02\_queries.sql`
4. Run `sql/03\_views.sql`
5. View Tableau dashboard screenshots in `tableau/screenshots/`

