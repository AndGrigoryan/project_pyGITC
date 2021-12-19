# import csv
#
# with open("data.csv", "r", encoding="utf-8") as f:
#     reader = csv.reader(f, delimiter=',')
#
#     for row in reader:
#         print(row)

import csv

with open("data.csv", "a", encoding="utf-8") as f:
    w = csv.writer(f, delimiter=',')

    w.writerow([])
    w.writerow(['vladimir', 'Putin', 99])
