%База знаний об игре Overwatch


/*Факты*/

/*Свойства*/
%Факты о том, какие команды в игре (свойство команды)
team_in_game(red).
team_in_game(blue).

%Факты о том, какие статусы есть у ульты персонажа (свойство ульты)
status_ulta(ready).
status_ulta(not_ready).

%Факты о том, какие классы есть в игре (свойство класса)

class(tank).
class(damage).
class(heal).

%Факты о том, какие персонажи есть в игре (свойство персонажа)

hero(dva).
hero(orisa).
hero(reinhardt).
hero(roadhog).
hero(sigma).
hero(winston).
hero(wrecking_ball).
hero(zarya).

hero(ash).
hero(bastion).
hero(doomfist).
hero(genji).
hero(hanzo).
hero(junkrat).
hero(mccree).
hero(mei).
hero(pharah).
hero(reaper).
hero(soldier76).
hero(sombra).
hero(symmetra).
hero(torbjorn).
hero(tracer).
hero(widowmaker).

hero(ana).
hero(baptiste).
hero(brigite).
hero(lucio).
hero(mercy).
hero(moira).
hero(zenyata).

%Факты о том, какие режимы карт есть в игре (свойство режима)
type(escort).
type(hybrid).
type(control).
type(push).
type(flashpoint).
type(deathmatch).
type(elimintation).
type(capture_the_flag).
type(assault).

%Факты о том, какие карты есть в игре (свойство карты)

map(circuit_royal).
map(dorado).
map(route66).
map(junkertown).
map(rialto).
map(havana).
map(watchpoint_gibraltar).
map(shambali_monastery).

map(blizzard_world).
map(numbani).
map(hollywood).
map(eichenwalde).
map(kings_row).
map(midtown).
map(paraiso).

map(busan).
map(nepal).
map(ilios).
map(oasis).
map(lijiang_tower).
map(antarctic_peninsula).

map(colosseo).
map(esperanca).
map(new_queen_street).

map(new_junk_city).
map(suravasa).

map(chateau_guillard).
map(kanezaka).
map(malevento).
map(petra).
map(talantis).

map(black_forest).
map(castillo).
map(ecopoint_antarctica).
map(necropolis).

map(ayutthaya).

map(hanamura).
map(horizon_lunar_colony).
map(paris).
map(temple_of_anubis).
map(volskaya_industries).

%Факт о том, что игрок сейчас в игре (свойство игрока)

player_in_game(freiz).
player_in_game(leydan).
player_in_game(draw_apelsin).
player_in_game(vasilisa_stone).
player_in_game(devochka_a).
player_in_game(doctor_strange).
player_in_game(who_am_i).
player_in_game(kriper2004).

/*Отношения*/
%Факты о том, какой режим игры у карты (отношение карты и типа)

type_map(circuit_royal, escort).
type_map(dorado, escort).
type_map(route66, escort).
type_map(junkertown, escort).
type_map(rialto, escort).
type_map(havana, escort).
type_map(watchpoint_gibraltar, escort).
type_map(shambali_monastery, escort).

type_map(blizzard_world, hybrid).
type_map(numbani, hybrid).
type_map(hollywood, hybrid).
type_map(eichenwalde, hybrid).
type_map(kings_row, hybrid).
type_map(midtown, hybrid).
type_map(paraiso, hybrid).

type_map(busan, control).
type_map(nepal, control).
type_map(ilios, control).
type_map(oasis, control).
type_map(lijiang_tower, control).
type_map(antarctic_peninsula, control).
type_map(talantis, control).

type_map(colosseo, push).
type_map(esperanca, push).
type_map(new_queen_street, push).

type_map(new_junk_city, flashpoint).
type_map(suravasa, flashpoint).

type_map(chateau_guillard, deathmatch).
type_map(kanezaka, deathmatch).
type_map(malevento, deathmatch).
type_map(petra, deathmatch).

type_map(black_forest, elimintation).
type_map(castillo, elimintation).
type_map(ecopoint_antarctica, elimintation).
type_map(necropolis, elimintation).

type_map(ayutthaya, capture_the_flag).

type_map(hanamura, assault).
type_map(horizon_lunar_colony, assault).
type_map(paris, assault).
type_map(temple_of_anubis, assault).
type_map(volskaya_industries, assault).

%Факты о классе героя в игре (отношение героя и класса)

hero_class(dva, tank).
hero_class(orisa, tank).
hero_class(reinhardt, tank).
hero_class(roadhog, tank).
hero_class(sigma, tank).
hero_class(winston, tank).
hero_class(wrecking_ball, tank).
hero_class(zarya, tank).

hero_class(ash, damage).
hero_class(bastion, damage).
hero_class(doomfist, damage).
hero_class(genji, damage).
hero_class(hanzo, damage).
hero_class(junkrat, damage).
hero_class(mccree, damage).
hero_class(mei, damage).
hero_class(pharah, damage).
hero_class(reaper, damage).
hero_class(soldier76, damage).
hero_class(sombra, damage).
hero_class(symmetra, damage).
hero_class(torbjorn, damage).
hero_class(tracer, damage).
hero_class(widowmaker, damage).

hero_class(ana, heal).
hero_class(baptiste, heal).
hero_class(brigite, heal).
hero_class(lucio, heal).
hero_class(mercy, heal).
hero_class(moira, heal).
hero_class(zenyata, heal).

%Факты о том, заряжена ли ульта у игрока (отношение игрок и статус ульты)

player_status_ulta(freiz, ready).
player_status_ulta(leydan, not_ready).

%Факты о том, какой герой у игрока (отношение игрока и персонажа)

player_hero(freiz, soldier76).
player_hero(leydan, genji).

%Факты убийства игроков во время игры (отношение двух игроков)

kill(vasilisa_stone, kriper2004).
kill(leydan, devochka_a).
kill(freiz, who_am_i).
kill(doctor_strange, draw_apelsin).

%Факты о командах игроков (отношение игрока и команды)

player_team(freiz, blue).
player_team(leydan, blue).
player_team(draw_apelsin, red).
player_team(vasilisa_stone, blue).
player_team(devochka_a, red).
player_team(doctor_strange, blue).
player_team(who_am_i, red).
player_team(kriper2004, red).

/*Правила*/
%Правило о принадлежности к команде "красные"

is_red(Name_Player):-
    player_in_game(Name_Player),
    player_team(Name_Player, red).

%Правило о принадлежности к команде "синие"

is_blue(Name_Player):-
    player_in_game(Name_Player),
    player_team(Name_Player, blue).

%Правило, проверяющее, что персонаж, которого взял игрок относится к классу "танк"

is_character_player_tank(Name_Player):-
    player_in_game(Name_Player),
        player_hero(Name_Player, Hero),
    hero_class(Hero, tank).

%Правило, проверяющее, что персонаж относится к классу "саппорт"

is_character_heal(Hero):-
    hero_class(Hero, heal).

%Правило, проверяющее, что карта относится к режиму "control"

is_map_type_control(Map):-
    map(Map),
        type_map(Map, control).

%Правило, проверяющее, возможность использования ульты

ability_player_ulta(Name_Player, Status_Ulta):-
    player_in_game(Name_Player),
    player_status_ulta(Name_Player, Status_Ulta).

%Правило, проверяющее, есть ли в команде персонаж genji

has_team_genji(Team):-
    team_in_game(Team),
    player_in_game(Name_Player),
    player_team(Name_Player, Team),
    player_hero(Name_Player, genji).

%Правило, проверяющее, кем был убит игрок "kriper2004"
is_player_kill_kriper2004(Name_Player):-
    player_in_game(Name_Player),
    kill(Name_Player, kriper2004).

%Правило, проверяющее, играет ли игрок за genji
is_player_genji(Name_Player):-
    player_in_game(Name_Player),
    player_hero(Name_Player, genji).

















