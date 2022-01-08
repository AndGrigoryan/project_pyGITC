# import json
#
#
# def get_user_data():
#     name = input("Input your name: ")
#     surname = input("Input your surname: ")
#     address = input("Input your address: ")
#     age = input("Input your age: ")
#
#     while not age.isdigit():
#         age = input("Input correct value(age): ")
#
#     age = int(age)
#
#     return {
#         "name": name,
#         "surname": surname,
#         "address": address,
#         "age": age
#     }
#
#
# with open("data.json", "w", encoding="utf-8") as f:
#     for i in range(2):
#         f.write(json.dumps(get_user_data(), indent=4))
#         f.write("\n")


data = ["helloo", "test", "hi", "ola", "esim", 23, 5, "ola", "helloo"]

data = list(set(data))

for el in data:
    if type(el) == 'int':
        print('+')

# data.sort(key=len)

# print(data)
