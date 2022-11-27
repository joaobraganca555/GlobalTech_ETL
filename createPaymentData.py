import csv, json
import random
from datetime import date, datetime, timedelta
from random import randrange
from helpers import read_orders, random_date, get_atributes_order

payment_method = ['Credit Card', 'Cash', 'Check', 'Bank Transfer']


# noinspection SqlNoDataSourceInspection
def generate_payment_order(amount, credit_limit, customer_id, date_order, limit_payment_date, order_id, status, payments_id_itr, mode):
    payments = []
    current_payment_id = payments_id_itr
    n_needed_payments = random.randint(1, 4)
    value_payment = amount / n_needed_payments
    start = date_order
    end = limit_payment_date
    n_payments = n_needed_payments

    if status == 'Canceled':
        print(f'CANCELED')

    if mode == 'random':
        if amount > credit_limit:
            print(f'CUSTOMER {customer_id} NO CREDIT ({credit_limit}/{amount})')
            return payments, current_payment_id
        n_payments = random.randint(0, n_needed_payments)
        print(f'RANDOM {order_id} ({n_payments}/{n_needed_payments}) realizados PS: é referente ao payment da linha abaixo')

    for _ in range(1, n_payments + 1):
        date_payment = random_date(start, end)
        method = random.randint(0, len(payment_method) - 1)
        payments.append(
            f'INSERT INTO TRANSACTIONS (TRANSACTION_ID,ORDER_ID,PAYMENT_ID,METHOD_ID,DATE,VALUE) VALUES ({current_payment_id},{order_id},{method},convert(DATETIME,{date_payment},101),{value_payment})')
        current_payment_id = current_payment_id + 1
        start = date_payment

    print(f'NORMAL {order_id},{date_order} AMOUNT_TOTAL {amount}')
    print('\n'.join(payments))
    return payments, current_payment_id


def generatePayment():
    payments = []
    payment_id_itr = 1

    for customer_id, date_dict in read_orders().items():
        for date in list(date_dict.keys())[:-1]:
            date_order, order_id, status, amount, credit_limit, limit_payment_date = get_atributes_order(date_dict, date)
            # print(customer_id, order_id, date_order, limit_payment_date, amount, credit_limit)
            new_payments, payment_id_itr = generate_payment_order(amount, credit_limit, customer_id, date_order, limit_payment_date, order_id, status, payment_id_itr, 'complete')
            payments = payments + new_payments

        # The last customer order
        date_order, order_id, status, amount, credit_limit, limit_payment_date = get_atributes_order(date_dict, list(date_dict.keys())[-1])
        # print(customer_id, order_id, date_order, limit_payment_date, amount, credit_limit)
        new_payments, payment_id_itr = generate_payment_order(amount, credit_limit, customer_id, date_order, limit_payment_date, order_id, status, payment_id_itr, 'random')
        payments = payments + new_payments

    return payments


payments = generatePayment()
# print('\n'.join(payments))
