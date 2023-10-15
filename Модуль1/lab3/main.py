from swiplserver import PrologMQI, create_posix_path
from methods import FindHero, FindKills, FindMap, FindPlayerStats, GetTeamMembers, MainQuery
import re

#путь к файлу с базой знаний
KNOWLEDGE_BASE_PATH = r'C:\Users\freiz\OneDrive\Рабочий стол\СИИ\Модуль1\lab1\lab1.pl'

incorrect_request = 'Неправильный запрос'

requests = [
    f'Какой игрок играет за героя soldier76 и имеет статус ульты ready?',
    f'Кого убил freiz?',
    f'Какие герои относятся к классу damage?',
    f'Какие карты относятся к режиму control?',
    f'Вывести игроков за команду blue',
    "Я игрок - freiz, люблю быть лидером/динамичным/поддержкой для команды"
]

patterns = {
    r'Какой игрок играет за героя (.+) и имеет статус ульты (.+)\?': FindPlayerStats.FindPlayerStats,
    r'Кого убил (.+)\?': FindKills.FindKills,
    r'Какие герои относятся к классу (.+)\?': FindHero.FindHero,
    r'Какие карты относятся к режиму (.+)\?': FindMap.FindMap,
    r'Вывести игроков за команду (.+)': GetTeamMembers.GetTeamMembers,
    "Я игрок - (.+), люблю быть (.+) для команды": MainQuery.MainQuery
}

with PrologMQI() as mqi:
    with mqi.create_thread() as prolog:
        path = create_posix_path(KNOWLEDGE_BASE_PATH)
        prolog.query(f'consult("{path}")')
        print("Успешно загружена база знаний Prolog!")
        print("\nПримеры запросов, которые вам доступны:", "\n * ".join(requests))
        print("\nДля завершения введите - exit.")
        while True:
            query = input('$ ')
            if query.lower() == 'exit':
                break

            for pattern in patterns:
                match = re.match(pattern, query, re.IGNORECASE)
                if match is None:
                    continue
                processor = patterns[pattern](*match.groups())
                processor.run(prolog)
                break
            else:
                print(incorrect_request)

# Определяем зависимую переменную (целевую) и признаки
X = data.drop(columns=['Performance Index'])
y = data['Performance Index']

# Разделение на обучающий и тестовый наборы
def train_test_split_custom(X, y, test_size=0.2):
    # Вычисляем количество элементов, которые нужно выделить на тестовый набор
    test_samples = int(len(X) * test_size)
    # Получаем случайные индексы для тестового набора
    test_indices = np.random.choice(len(X), test_samples, replace=False)
    # Создаем маску для индексов, которые будут использоваться в тренировочном наборе
    train_indices = np.ones(len(X), dtype=bool)
    train_indices[test_indices] = False
    # Разделяем данные на тренировочный и тестовый наборы
    X_train = X.iloc[train_indices]
    X_test = X.iloc[test_indices]
    y_train = y.iloc[train_indices]
    y_test = y.iloc[test_indices]
    
    return X_train, X_test, y_train, y_test

X_train, X_test, y_train, y_test = train_test_split_custom(X, y, test_size=0.2)

print(X_train)