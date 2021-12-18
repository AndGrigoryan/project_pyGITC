name = input()
age = input()

with open("names.txt", "a+", encoding="utf-8") as f:
    f.write(f"Name: {name}\n")
    f.write(f"Age: {age}\n")
