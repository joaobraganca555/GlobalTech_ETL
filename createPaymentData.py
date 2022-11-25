import csv
import random

payment_method = ['Credit Card', 'Cash', 'Check', 'Bank Transfer']


with open('csv/contacts.csv') as f:
    for line in f:
        line = line.strip().split(',')
        contacts.append((line[3], line[4]))


def random_date(start, end):
    delta = end - start
    int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = randrange(int_delta)
    return start + timedelta(seconds=random_second)

def gerarTransacoes(amount, dataEnc):
    dataEnc = datetime.strptime(dataEnc, '%m-%d-%Y')
    prestacoes = random.randint(1, 3)
    valorPrestacao = amount / prestacoes
    method = random.randint(0, len(payment_method))
    results = []

    start = dataEnc
    end = dataEnc + timedelta(weeks=2)
    for transacao in prestacoes:
        randomDate = random_date(start, end)
        start = randomDate
        results.append(f'Insert into transactions ()')
    return
