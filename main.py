def solved():
    cnt = int(input())
    while cnt > 0:
        cnt -= 1
        try:
            data = input()

            if data:
                if data.isdigit():
                    nums.append(int(data))
                elif data.replace('.', '', 1).isdigit():
                    nums.append(float(data))
                else:
                    text.append(data)

        except KeyboardInterrupt as e:
            print("\nKeyboard input error")
        except ValueError as e:
            print(e)
        except:
            print("Hello 2")


text = []
nums = []

solved()

print(f"TEXT LIST {text}")
print(f"NUMS LIST {nums}")
