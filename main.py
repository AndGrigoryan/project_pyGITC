with open("data.txt", "r", encoding="utf-8") as f:
    ls = f.readlines()
    for el in ls:
        print(ls.index(el) + 1, el.replace('\n', ''))
