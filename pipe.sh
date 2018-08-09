python counter.py books/mobydick.txt books/mobydick.csv
python counter.py books/walden.txt books/walden.csv
python counter.py books/senseandsensibility.txt books/senseandsensibility.csv
python counter.py books/theidiot.txt books/theidiot.csv

python plot.py books/mobydick.csv books/mobydick.png
python plot.py books/walden.csv books/walden.png
python plot.py books/senseandsensibility.csv books/senseandsensibility.png
python plot.py books/theidiot.csv books/theidiot.png

python plotter.py books/mobydick.csv books/walden.csv books/senseandsensibility.csv books/theidiot.csv
