import csv
import random
from datetime import date, datetime, timedelta
from random import randrange

payment_method = ['Credit Card', 'Cash', 'Check', 'Bank Transfer']
contacts = []

with open('csv/contacts.csv') as f:
    for line in f:
        line = line.strip().split(',')
        contacts.append((line[3], line[4]))


def gerarTransacoes(amount, dataEnc, last_transaction_id, payment_id, date_limit_payment):
    results = []
    current_transaction_id = last_transaction_id
    prestacoes = random.randint(1, 4)
    # dataEnc = datetime.strptime(dataEnc, '%m-%d-%Y')
    valor_prestacao = amount / prestacoes
    start = dataEnc
    end = date_limit_payment
    for _ in range(prestacoes):
        randomDate = random_date(start, end)
        method = random.randint(0, len(payment_method) - 1)
        results.append(
            f'INSERT INTO TRANSACTIONS (TRANSACTION_ID,PAYMENT_ID,METHOD_ID,DATE,VALUE) VALUES ({current_transaction_id},{payment_id},{method},convert(DATETIME,{randomDate},101),{valor_prestacao})')
        current_transaction_id = current_transaction_id + 1
        start = randomDate
    return (results, current_transaction_id)


def random_date(start, end):
    delta = end - start
    int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = randrange(int_delta)
    return start + timedelta(seconds=random_second)


def generatePayments():
    payments = []
    orders = []
    transacoes = []
    transactions_ids = 1
    with open('csv/order_amounts.csv') as fp:
        itr = fp.__iter__()
        for line in itr:
            orders.append(line.strip())
    for index, order in enumerate(orders):
        order = order.split(',')
        local_payment = []
        local_transaction = []
        order_id = order[0]
        date = datetime.strptime(order[1], '%Y-%m-%d %H:%M:%S.%f')
        status = order[2]
        amount = float(order[3])
        customer_id = order[4]
        credit_limit = float(order[5])
        limit_payment_date = date + timedelta(weeks=random.randint(1, 4))

        if (status == 'Canceled'):
            local_payment.append(
                f'INSERT INTO payments (PAYMENT_ID, [STATUS], LIMIT_PAYMENT_DATE) VALUES (null, \'Canceled\', {limit_payment_date})')
        else:
            local_payment.append(
                f'INSERT INTO payments (PAYMENT_ID, [STATUS], LIMIT_PAYMENT_DATE) VALUES ({order_id}, \'Pending\', {limit_payment_date})')
            trans, last_id = gerarTransacoes(amount, date, transactions_ids, order_id, limit_payment_date)
            local_transaction = trans
            transactions_ids = last_id

        print('\n'.join(local_payment))
        print('\n'.join(local_transaction))
        transacoes = transacoes + local_transaction
        payments = payments + local_payment

    return (payments, transacoes)


payment, transaction = generatePayments()
# print('\n'.join(payment))
# print('\n'.join(transaction))
