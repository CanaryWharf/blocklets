#!/bin/python
from datetime import datetime
from dateutil import relativedelta
start = datetime(2021, 11, 10)
today = datetime.now()
months= relativedelta.relativedelta(today, start).months
days = (today - start).days
print(f" ⚲ {days}|{months}")
