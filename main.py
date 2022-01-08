import json


def get_user_data():
    name = input("Input your name: ")
    surname = input("Input your surname: ")
    address = input("Input your address: ")
    age = input("Input your age: ")

    while not age.isdigit():
        age = input("Input correct value(age): ")

    age = int(age)

    return {
        "name": name,
        "surname": surname,
        "address": address,
        "age": age
    }


with open("data.json", "w", encoding="utf-8") as f:
    for i in range(2):
        f.write(json.dumps(get_user_data(), indent=4))
        f.write("\n")


# l1 = [3, 1, 7, 2, 5, 8, 4, 9, 6]
# l2 = [10, 15, 11, 14, 13]
#
#
# res = []
# temp = []
#
# for el in l1:
#     if el % 2 == 0:
#         res.append(el)
#
# for el in l2:
#     if el % 2 == 0:
#         temp.append(el)
#
# res.sort()
# temp.sort(reverse=True)
#
# res += temp
# print(res)


