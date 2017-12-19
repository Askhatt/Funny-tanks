amountOfPlayers = argument[0];
var players=0;
while(players<amountOfPlayers){
    var i = labirintX+(irandom_range(1, amountWidthCells)-1)*stick_width+stick_width/2;
    var j = labirintY+(irandom_range(1, amountHeightCells)-1)*stick_width+stick_width/2;
    if (instance_exists(o_player)){
        var inst = instance_nearest(i, j, o_player)
        if point_distance(i, j, inst.x, inst.y) > stick_width-1
            instance_create(i, j, o_player);
    } else {
        instance_create(i, j, o_player);
    }
    players ++;
}
