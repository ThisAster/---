from swiplserver import PrologThread


class MainQuery:
    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def __init__(self, nickname: str, hero_class: str):
        if hero_class == "лидером":
            hero_class = 'tank'
        elif hero_class == "динамичным":
            hero_class = 'damage'
        else:
            hero_class = 'поддержкой для команды'
        self.nickname = nickname
        self.hero_class = hero_class

    def query(self):
        query = f'hero_class(X, {self.hero_class})'
        return query

    def success(self, res):
        print(f'{self.nickname}, для вас подойдут данные герои:')
        for index, line in enumerate(res, 1):
            print(f'{index}.', line['X'])

    def failure(self, res):
        print(f'{self.nickname} для вас не найдено героев.')
