import random
import csv
# 1 a 319

header = ['customer_email', 'customer_phone', 'status', 'corporate_id']

with open('data.csv', 'w', encoding='UTF8', newline='') as f:
    writer = csv.writer(f)

    # write the header
    writer.writerow(header)

    i = 0

    while i < 207:
        # write the data
        customerInfo = random.randint(1,3)
        if customerInfo == 1:
            writer.writerow(['REFUNDED', random.randint(1,107)])
        elif customerInfo == 2:
            writer.writerow(['REFUNDED', random.randint(1,107)])
        else:
            writer.writerow(['REFUNDED', random.randint(1,107)])
        i += 1