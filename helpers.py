import csv, json
import random
from datetime import date, datetime, timedelta
from random import randrange


def read_orders():
    orders = {}
    with open('csv/order_amounts.csv') as fp:
        for order in fp:
            order = order.strip().split(',')
            order_id = order[0]
            date = datetime.strptime(order[1][:10], '%Y-%m-%d').timestamp()
            status = order[2]
            amount = float(order[3])
            customer_id = order[4]
            credit_limit = float(order[5])

            if customer_id in orders.keys():
                orders[customer_id][date] = [order_id, status, amount, credit_limit]
            else:
                orders[customer_id] = {date: [order_id, status, amount, credit_limit]}
    return {key: dict(sorted(orders[key].items())) for key in sorted(orders)}

