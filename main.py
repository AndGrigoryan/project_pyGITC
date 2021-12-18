from random import randrange


def get_random_word():
    language = ["Python", "Go", "JavaScript", "PHP", "Perl", "Swift", "Flask"]

    return language[randrange(0, len(language))].lower()


def run_game(count=3):
    name = input("մուտքագրեք ձեր անունը ")
    word = get_random_word()
    print(word)

    while count > 0:
        user_word = input(f"{name} մուտքագրեք գուշակվող բառը կամ տառը  ")
        user_word = user_word.lower()
        if user_word in word:
            if user_word == word:
                print("Դուք հախթեցիք")
                break
            print(f"Տառը ճիշտ է, Դուք ունեք գուշակելու {count} հնարավորություն")
        else:
            count -= 1
            print(f"Մուտքագրված տառը կամ բառը սխալ է, Դուք ունեք գուշակելու {count} հնարավորություն ")

    if count == 0:
        print("Դուք պարտվեցիք ")


cnt = 3

run_game(cnt)
