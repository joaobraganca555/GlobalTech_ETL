import random
import csv
# 1 a 319

header = ['customer_email', 'customer_phone', 'status', 'corporate_id']
data = ['Afghanistan', 652090, 'AF', 'AFG']


with open('data.csv', 'w', encoding='UTF8', newline='') as f:
    writer = csv.writer(f)

    # write the header
    writer.writerow(header)

    i = 0

    while i < 207:
        # write the data
        writer.writerow([random.randint(1,107), 'REFUNDED'])
        # print(i + ',' + random.randint(1, 319))
        i += 1