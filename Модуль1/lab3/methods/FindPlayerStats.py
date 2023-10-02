from swiplserver import PrologThread


class FindPlayerStats:
    def run(self, prolog: PrologThread):
        res = prolog.query(self.query())
        if not res or len(res) == 0:
            self.failure(res)
        else:
            self.success(res)

    def __init__(self, player_hero: str, player_status_ulta: str):
        self.player_hero = player_hero
        self.player_status_ulta = player_status_ulta

    def query(self):
        return f'player_hero(X, {self.player_hero}), player_status_ulta(X, {self.player_status_ulta})'
    
    def success(self, res):
        print(f'Найден(-о) {len(res)} игрок(-ов) с такими данными:')
        for index, line in enumerate(res, 1):
            print(f'{index}.', line['X'])
        
    def failure(self, res):
        print(f'Нет игроков, которые играют за героя {self.player_hero} и у которых статус ульты {self.player_status_ulta}. Попробуйте другие параметры.')