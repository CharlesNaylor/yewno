# Yewno Quantitative Finance Assignment

I'll be looking at three questions as assigned in a PDF given to me. I plan to do some exploratory analysis in either RStudio or Jupyter notebooks which I'll compile to html and include in this repository. Throughout the assignment I'm going to avoid using for-pay data, which may limit the practical usefulness of the results.

I'll be using Python 3.6, R 3.4.3, and Stan 2.17.

# Questions

1. Use freely available data from the web to predict/explain macroeconomic indicators. Financial/Economic/Fundamentals data are not allowed.

I chose to explore Google Trends on searchs for Job-related websites against Initial Claims data from FRED. The premise was that people who are newly out of work will be more likely to search for the names of job sites, instead of following links directly to them. The results were not promising, but there is plenty of room for further study. I did the analysis in an RStudio notebook, the compiled version of which is [here](doc/Q1.html). My rationale for different choices accompanies the code in the notebook. I've also output the final validation data as CSVs in the data directory.

2. Implement one Smart Beta strategy and discuss pros and cons compared to a chosen benchmark.

3. FX
	1. Suggest one data source that might be useful to explain or predict the FX market.
	2. Derive and discuss relevant analytics from this data source.
	3. Determine whether your proposed analytics are co-integrated with currency pairs.
	4. Describe and implement a pairs trading strategy exploiting your analytics.
