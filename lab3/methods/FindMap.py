from swiplserver import PrologThread


class FindMap:
    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def __init__(self, type_map: str):
        self.type_map = type_map

    def query(self):
        return f'type_map(X, {self.type_map})'
    
    def success(self, res):
        print(f'Найдено {len(res)} карт, которые относятся к {self.type_map}:')
        for index, line in enumerate(res, 1):
            print(f'{index}', line['X'])

    def failure(self, res):
        print(f'Нет карт, относящихся к {self.type_map}.')
