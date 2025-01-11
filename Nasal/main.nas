print("");
print("");
print("██     ██ ███████ ██       ██████  ██████  ███    ███ ███████     ████████  ██████ "); 
print("██     ██ ██      ██      ██      ██    ██ ████  ████ ██             ██    ██    ██"); 
print("██  █  ██ █████   ██      ██      ██    ██ ██ ████ ██ █████          ██    ██    ██"); 
print("██ ███ ██ ██      ██      ██      ██    ██ ██  ██  ██ ██             ██    ██    ██"); 
print(" ███ ███  ███████ ███████  ██████  ██████  ██      ██ ███████        ██     ██████ "); 
print("");
print("");
print(" ██████  █████  ███████ ███████ ██    ██ ████████     ████ ████ ████"); 
print("██      ██   ██ ██      ██      ██    ██    ██         ██   ██   ██ ");
print("██      ███████ ███████ ███████ ██    ██    ██         ██   ██   ██ ");
print("██      ██   ██      ██      ██ ██    ██    ██         ██   ██   ██ ");
print(" ██████ ██   ██ ███████ ███████  ██████     ██        ████ ████ ████"); 
print("");
print("");


var leader = func(){

}


# ai/models/callsigns -> gives a number
# ai/models/mulitplayer[number]/sim/multiplay/generic/int[blah]

var path = "";
var startoverride = func(){
    var callsign = getprop("texter/callsign");
    var number = getprop("ai/models/callsigns/" ~ callsign);
    var iam = getprop("texter/selection");
    path = "ai/models/multiplayer[" ~ number ~ "]/sim/multiplay/generic/int[" ~ iam ~ "]";
    print(path);
    thread.newthread(override);
}

var override = func(){
    while(getprop("texter/smokeoverride") == 1){
        setprop("sim/multiplay/generic/int[0]", getprop(path));
    }
    setprop("sim/multiplay/generic/int[0]", 0);
}