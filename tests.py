import csv
import random
from datetime import date, datetime, timedelta
from random import randrange

orders = {}
with open('csv/order_amounts.csv') as fp:
    itr = fp.__iter__()
    for order in itr:
        order = order.strip().split(',')
        order_id = order[0]
        date = datetime.strptime(order[1], '%Y-%m-%d %H:%M:%S.%f')
        status = order[2]
        amount = float(order[3])
        customer_id = order[4]
        credit_limit = float(order[5])

        orders[order_id]= 1

print('\n'.join(orders))
print('\n'.join(orders))