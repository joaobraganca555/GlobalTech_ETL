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
    canceled_date = dictionary[key][4]
    shipped_date = dictionary[key][5]
    limit_payment_date = dictionary[key][6]

    return date_order, order_id, status, amount, credit_limit, limit_payment_date, canceled_date, shipped_date


def read_orders():
    orders = {}
    with open('csv/order_amounts_2.csv') as fp:
        for order in fp:
            order = order.strip().split(',')
            order_id = order[0]
            date = datetime.strptime(order[1][:10], '%Y-%m-%d').timestamp()
            status = order[2]
            amount = float(order[3])
            customer_id = order[4]
            credit_limit = float(order[5])
            canceled_date_string = order[6]
            shipped_date_string = order[7]
            limit_payment_date = datetime.strptime(order[8][:10], '%Y-%m-%d')

            shipped_date = 'NULL' if shipped_date_string == 'NULL' else datetime.strptime(shipped_date_string[:10], '%Y-%m-%d')
            canceled_date = 'NULL' if canceled_date_string == 'NULL' else datetime.strptime(canceled_date_string[:10], '%Y-%m-%d')

            if customer_id in orders.keys():
                orders[customer_id][date] = [order_id, status, amount, credit_limit, canceled_date, shipped_date, limit_payment_date]
            else:
                orders[customer_id] = {date: [order_id, status, amount, credit_limit, canceled_date, shipped_date, limit_payment_date]}
    return {key: dict(sorted(orders[key].items())) for key in sorted(orders)}
