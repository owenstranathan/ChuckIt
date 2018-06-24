
Phasor s => dac;


Std.atoi(me.arg(0)) => int time_multiplier;
Std.atoi(me.arg(1)) => int freq_multiplier; 

while (true) {
    for(2 => int i; i < me.args(); i++ )
    {
        Std.atoi(me.arg(i)) => int value;
        value * freq_multiplier => s.freq;
        100::ms => now;
    }
}
