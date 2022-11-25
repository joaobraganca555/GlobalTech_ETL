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


def random_date(start, end):
    delta = end - start
    int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = randrange(int_delta)
    return start + timedelta(seconds=random_second)

def gerarTransacoes(amount, dataEnc, last_transaction_id, payment_id):
    results = []
    current_transaction_id = last_transaction_id + 1
    prestacoes = random.randint(1, 4)
    # dataEnc = datetime.strptime(dataEnc, '%m-%d-%Y')
    valor_prestacao = amount / prestacoes
    start = dataEnc
    end = dataEnc + timedelta(weeks=4)
    for _ in range(prestacoes):
        randomDate = random_date(start, end)
        method = random.randint(0, len(payment_method) - 1)
        results.append(
            f'INSERT INTO TRANSACTIONS (TRANSACTION_ID,PAYMENT_ID,METHOD_ID,DATE,VALUE) VALUES ({current_transaction_id},{payment_id},{method},convert(DATETIME,{randomDate},101),{valor_prestacao})')
        current_transaction_id = current_transaction_id + 1
        start = randomDate
    return results


print('\n'.join(gerarTransacoes(1000, date.today(), 0, 1)))
