import csv, json
import random
from datetime import date, datetime, timedelta
from random import randrange
from helpers import read_orders

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


# noinspection SqlNoDataSourceInspection
def gerarTransacoes(amount, dataEnc, last_transaction_id, payment_id, date_limit_payment, mode):
    results = []
    current_transaction_id = last_transaction_id
    prestacoes = random.randint(1, 4)
    # dataEnc = datetime.strptime(dataEnc, '%m-%d-%Y')
    valor_prestacao = amount / prestacoes
    start = dataEnc
    end = date_limit_payment
    n_prestacoes = prestacoes

    if mode == 'random':
        n_prestacoes = random.randint(1, prestacoes)
        print(f'RANDOM  FALTAM {prestacoes - n_prestacoes} PS: é referente ao payment da linha abaixo')

    for _ in range(1, n_prestacoes + 1):
        randomDate = random_date(start, end)
        method = random.randint(0, len(payment_method) - 1)
        results.append(
            f'INSERT INTO TRANSACTIONS (TRANSACTION_ID,PAYMENT_ID,METHOD_ID,DATE,VALUE) VALUES ({current_transaction_id},{payment_id},{method},convert(DATETIME,{randomDate},101),{valor_prestacao})')
        current_transaction_id = current_transaction_id + 1
        start = randomDate
    return results, current_transaction_id


# noinspection SqlNoDataSourceInspection
def generate_single_payment(amount, credit_limit, customer_id, date_order, limit_payment_date, order_id, status, transactions_id_itr, mode):
    transactions = []

    if status == 'Canceled':
        payment = f'INSERT INTO payments (PAYMENT_ID, [STATUS], LIMIT_PAYMENT_DATE) VALUES (null, \'Canceled\', {limit_payment_date})'
        print(f'CANCELED {payment} AMOUNT_TOTAL {amount}')
        return payment, transactions, transactions_id_itr

    payment = f'INSERT INTO payments (PAYMENT_ID, [STATUS], LIMIT_PAYMENT_DATE) VALUES ({order_id}, \'Pending\', {limit_payment_date})'
    trans, last_id = gerarTransacoes(amount, date_order, transactions_id_itr, order_id, limit_payment_date, mode)
    transactions = trans
    transactions_id_itr = last_id

    print(f'NORMAL {payment} AMOUNT_TOTAL {amount}')
    print('\n'.join(transactions))
    return payment, transactions, transactions_id_itr


def generatePayment():
    payments = []
    transactions = []
    transactions_id_itr = 1

    for customer_id, date_dict in read_orders().items():
        for date in list(date_dict.keys())[:-1]:
            date_order, order_id, status, amount, credit_limit, limit_payment_date = get_atributes_order(date_dict, date)

            new_payment, new_transactions, transactions_id_itr = \
                generate_single_payment(amount, credit_limit, customer_id, date_order, limit_payment_date, order_id, status, transactions_id_itr, 'complete')

            payments.append(new_payment)
            transactions = transactions + new_transactions

        # The last customer order
        date_order, order_id, status, amount, credit_limit, limit_payment_date = get_atributes_order(date_dict, list(date_dict.keys())[-1])
        new_payment, new_transactions, transactions_id_itr = \
            generate_single_payment(amount, credit_limit, customer_id, date_order, limit_payment_date, order_id, status, transactions_id_itr, 'random')
        payments.append(new_payment)
        transactions = transactions + new_transactions

    return transactions, payments


transactions, payments = generatePayment()
# print('\n'.join(payments))
# print('\n'.join(transactions))
