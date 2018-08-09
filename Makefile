finalout.png : plotter.py theidiot.csv mobydick.csv walden.csv senseandsensibility.csv
	python $^

# Count words.
%.csv : counter.py books/%.txt
	python $^ $*.csv

.PHONY : clean
clean:
	rm -rf *.csv
