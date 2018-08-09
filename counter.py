import pandas as pd
from collections import Counter
import sys

#open the file - file in the first arg to the script
file = open(sys.argv[1], "r")

#create a counter of each word in the doc
#this is dumb - it doesnt know about caps and punctuation
#but, we are lazy
wordcount = Counter(file.read().split())

#pivots the counter into a dataframe based on keys being the index on rows
dat = pd.DataFrame.from_dict(wordcount, orient = 'index')

#gives us the index as a row, as well as sorting the values by counts
dat = dat.reset_index().sort_values(0,ascending = False)

#renames the columns
dat.columns = ['word', 'count']

#outputs to the second arg at command line
dat.to_csv(sys.argv[2], index = False)
