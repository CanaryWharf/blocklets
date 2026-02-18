#!/bin/python
from datetime import date
start = date(2021, 11, 10)
today = date.today()
days = (today - start).days
years = days // 365
months = days // 30
print(f" ⚲ {months}|{years}")
