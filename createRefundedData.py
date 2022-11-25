import random
from random import randrange
import csv
import time
from datetime import timedelta
from datetime import datetime

def random_date(start, end):
    delta = end - start
    int_delta = (delta.days * 24 * 60 * 60) + delta.seconds
    random_second = randrange(int_delta)
    return start + timedelta(seconds=random_second)

d1 = datetime.strptime('06/21/2013', '%m/%d/%Y')
d2 = datetime.strptime('11/01/2017', '%m/%d/%Y')

random_date(d1, d2)

header = ['customer_email', 'customer_phone', 'status', 'order_date', 'employee_corporate_id', 'product_id', 'quantity', 'unit_price', 'payment_method']
contacts = []
payment_method = ['Credit Card', 'Cash', 'Check', 'Bank Transfer']

with open('csv/contacts.csv') as f:
    for line in f:
        line = line.strip().split(',')
        contacts.append((line[3], line[4]))

with open('csv/refundedSheet.csv', 'w', encoding='UTF8', newline='') as f:
    writer = csv.writer(f)

    # write the header
    writer.writerow(header)

    i = 0

    while i < 12:
        # write the data
        indexPayment = random.randint(0, len(payment_method)-1)
        randomCustomer = random.randint(1, len(contacts))
        customerInfo = random.randint(1,3)
        if customerInfo == 1:
            writer.writerow([contacts[randomCustomer][0], '','REFUNDED', random_date(d1, d2),random.randint(1,107), random.randint(1,288), random.randint(20,180), random.randint(35,7000), payment_method[indexPayment]])
        elif customerInfo == 2:
            writer.writerow(['', contacts[randomCustomer][1],'REFUNDED', random_date(d1, d2),random.randint(1,107), random.randint(1,288), random.randint(20,180), random.randint(35,7000), payment_method[indexPayment]])
        else:
            writer.writerow([contacts[randomCustomer][0], contacts[randomCustomer][1], 'REFUNDED', random_date(d1, d2),random.randint(1,107), random.randint(1,288), random.randint(20,180), random.randint(35,7000), payment_method[indexPayment]])
        i += 1

        # VOU BUSCAR FONES