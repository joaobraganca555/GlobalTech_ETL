import random
import csv
# 1 a 319

header = ['customer_email', 'customer_phone', 'status', 'employee_corporate_id', 'product_id']
contacts = []

with open('contacts.csv') as f:
    for line in f:
        line = line.strip().split(',')
        contacts.append((line[3], line[4]))

with open('sheet.csv', 'w', encoding='UTF8', newline='') as f:
    writer = csv.writer(f)

    # write the header
    writer.writerow(header)

    i = 0

    while i < 5:
        # write the data
        randomCustomer = random.randint(1, len(contacts))
        customerInfo = random.randint(1,3)
        if customerInfo == 1:
            writer.writerow([contacts[randomCustomer][0], '','REFUNDED', random.randint(1,107), random.randint(1,107)])
        elif customerInfo == 2:
            writer.writerow(['', contacts[randomCustomer][1],'REFUNDED', random.randint(1,107), random.randint(1,107)])
        else:
            writer.writerow([contacts[randomCustomer][0], contacts[randomCustomer][1], 'REFUNDED', random.randint(1,107), random.randint(1,107)])
        i += 1

        # VOU BUSCAR FONES