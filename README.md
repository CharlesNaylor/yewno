# Yewno Quantitative Finance Assignment

I'll be looking at three questions as assigned in a PDF given to me. I plan to do some exploratory analysis in either RStudio or Jupyter notebooks which I'll compile to html and include in this repository. Throughout the assignment I'm going to avoid using for-pay data, which may limit the practical usefulness of the results.

I'll be using R 3.4.3, and Stan 2.17. I also code in Python with pandas, but I prefer to do initial work in R, as the graphics library is still easier to use.

The only standalone code in the 'yewno' directory is the stan model I implemented in question 1. All other code can be found alongside annotations in the Rstudio notebooks in the 'doc' directory. 

I've output some data as csvs, but I'm also including the full serialized R environments for each question. So you should, if you so desired, be able to reproduce all of the output without needing to retrieve the data yourself from the web.

# Questions

1. Use freely available data from the web to predict/explain macroeconomic indicators. Financial/Economic/Fundamentals data are not allowed.

I chose to explore Google Trends on searchs for Job-related websites against Initial Claims data from FRED. The premise was that people who are newly out of work will be more likely to search for the names of job sites, instead of following links directly to them. The results were not promising, but there is plenty of room for further study. I did the analysis in an RStudio notebook, the compiled version of which is [here](https://rawgit.com/CharlesNaylor/yewno/master/doc/Q1.html). My rationale for different choices accompanies the code in the notebook. I've also output the final validation data as CSVs in the data directory.

2. Implement one Smart Beta strategy and discuss pros and cons compared to a chosen benchmark.

I implemented a forward-curve commodity smart beta strategy, which successfully outperforms an equally-weighted basket of the same commodities. In short, I estimate the price forward curve using chained commodity indexes, then overweight commodities on the basis of how far they are in backwardation. This is a strategy that could be turned into a viable product with some more work to ensure accurate backtesting assumptions. Again, the full analysis is available in an RStudio notebook in the doc directory. The compiled version is [here](https://rawgit.com/CharlesNaylor/yewno/master/doc/Q2.html). It took some time to clean up the data I sourced from Quandl, so the actual estimation of the curve and backtesting happen a bit more than halfway down the page. CSVs of relevant data are in the data directory.

3. FX
	1. Suggest one data source that might be useful to explain or predict the FX market.
	2. Derive and discuss relevant analytics from this data source.
	3. Determine whether your proposed analytics are co-integrated with currency pairs.
	4. Describe and implement a pairs trading strategy exploiting your analytics.

I tried using an indicator of energy commodity price momentum to help predict daily returns in some specific countries with high exposure to the oil and natural gas markets. The variant of the indicator I used was not a success. I would guess that an intraday version might work better, but it's difficult to get an intraday history for free. As with the other questions, a compiled version of my R notebook is available [here](https://rawgit.com/CharlesNaylor/yewno/master/doc/Q3.html).
