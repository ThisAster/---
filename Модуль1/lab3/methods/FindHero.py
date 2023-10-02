from swiplserver import PrologThread


class FindHero:
    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def __init__(self, hero_class: str):
        self.hero_class = hero_class

    def query(self):
        return f'hero_class(X, {self.hero_class})'
    
    def success(self, res):
        print(f'Найдено {len(res)} героев, которые относятся к классу {self.hero_class}:')
        for index, line in enumerate(res, 1):
            print(f'{index}', line['X'])

    def failure(self, res):
        print(f'Нет героев, относящихся к классу {self.hero_class}.')
