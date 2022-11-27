import csv, json
import random
from datetime import date, datetime, timedelta
from random import randrange

payment_method = ['Credit Card', 'Cash', 'Check', 'Bank Transfer']
contacts = []


def random_date(start, end):
    delta = end - start
    int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = randrange(int_delta)
    return start + timedelta(seconds=random_second)


with open('csv/contacts.csv') as f:
    for line in f:
        line = line.strip().split(',')
        contacts.append((line[3], line[4]))

def get_atributes_order(dictionary, key):
    date_order = datetime.fromtimestamp(key)
    order_id = dictionary[key][0]
    status = dictionary[key][1]
    amount = float(dictionary[key][2])
    credit_limit = dictionary[key][3]
    limit_payment_date = date_order + timedelta(weeks=random.randint(1, 4))
    return date_order, order_id, status, amount, credit_limit, limit_payment_date

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
