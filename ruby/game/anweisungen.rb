# In das Spiel soll nun ein Zufallsprinzip eingebaut werden.
# Es soll testorientiert programmiert werden; d.h. zuerst werden die Tests geschrieben, dann der Code implementiert.
# Der Test sagt, wie der Code sich am Ende verhalten soll.

# Player-Class
# In der player_spec muss also zuerst ein Kontext geschaffen werden, in der die Methode strong? abgefragt wird.
# Ist die eigenschaft health > 100, dann ist der Spieler strong, andernfalls wimpy.






require_relative 'game'
require_relative 'players'


player1 = Player.new('Moe',5)
player2 = Player.new('Larry',200,1)
player3= Player.new('Curly',100,2)




pl = Game.new("zack mc cracken")
pl.add_player(player1)
pl.add_player(player2)
pl.add_player(player3)


pl.play