
SinOsc s => dac;


Std.atoi(me.arg(0)) => int time_multiplier;
Std.atoi(me.arg(1)) => int freq_multiplier; 

while (true) {
    for(2 => int i; i < me.args(); i++ )
    {
        Std.atoi(me.arg(i)) => int value;
        (1::ms  * time_multiplier) / value => now;
        value * freq_multiplier => s.freq;
    }
    //for( me.args() => int i; i >= 2; i-- )
    //{
    //    Std.atoi(me.arg(i)) => int value;
    //    (1000::ms / value) => now;
    //    value * freq_multiplier => s.freq;
    //}
}

//while(true) {
//  50::ms => now;
//  18 % count => int index;
//  foo[index] => s.freq;
//  1 +=> count;
//}
