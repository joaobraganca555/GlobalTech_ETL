from pandas.core.interchange import dataframe

import csv, json
import random
import pandas as pd
from datetime import date, datetime, timedelta
from random import randrange
from helpers import read_orders, random_date, get_atributes_order

payment_method = ['Credit Card', 'Cash', 'Check', 'Bank Transfer']


# noinspection SqlNoDataSourceInspection
def generate_payment_order(date_dict, date, customer_id, payments_id_itr, mode):
    date_order, order_id, status, total_amount, credit_limit, limit_payment_date, canceled_date, shipped_date = get_atributes_order(date_dict, date)
    # print(customer_id, order_id, date_order, limit_payment_date, total_amount, credit_limit)

    payments = []
    current_payment_id = payments_id_itr
    n_needed_payments = random.randint(1, 4)
    n_payments = n_needed_payments
    value_each_payment = total_amount / n_needed_payments
    start = date_order
    end = limit_payment_date

    if status == 'Canceled':
        end = canceled_date
        print(f'CANCELED')

    if mode == 'random':
        if total_amount > credit_limit:
            print(f'CUST NC {{{customer_id}}} ORD_ID {{{order_id}}} ({credit_limit}/{total_amount})')
            return payments, current_payment_id
        n_payments = random.randint(0, n_needed_payments)
        print(f'RANDOM {order_id} ({n_payments}/{n_needed_payments}) realizados PS: é referente ao payment da linha abaixo')

    for _ in range(1, n_payments + 1):
        date_payment = random_date(start, end)
        method = random.randint(1, len(payment_method))
        payments.append(
            f'INSERT INTO PAYMENTS (PAYMENT_ID,ORDER_ID,METHOD_ID,PAYMENT_DATE,VALUE) VALUES ({current_payment_id},{order_id},{method},convert(DATETIME,\'{date_payment}\',101),{value_each_payment})')
        current_payment_id = current_payment_id + 1
        start = date_payment
    print(f'CUST {{{customer_id}}} ORD_ID {{{order_id}}}, {{{str(date_order)[:10]}}} AMOUNT_TOTAL {{{total_amount}}}')
    print('\n'.join(payments))
    return payments, current_payment_id


def generatePayment():
    payments = []
    payment_id_itr = 1

    for customer_id, date_dict in read_orders().items():
        for date_order in list(date_dict.keys())[:-1]:
            new_payments, payment_id_itr = generate_payment_order(date_dict, date_order, customer_id, payment_id_itr, 'complete')
            payments = payments + new_payments

        # The last customer order
        new_payments, payment_id_itr = generate_payment_order(date_dict, list(date_dict.keys())[-1], customer_id, payment_id_itr, 'random')
        payments = payments + new_payments

    return payments


payments = generatePayment()

with open('payments.txt', 'w') as f:
    f.write('\n'.join(payments))

# print('\n'.join(payments))
