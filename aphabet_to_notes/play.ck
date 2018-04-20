
SqrOsc s => dac;

while (true) {
    for(int i; i < me.args(); i++ )
    {
        <<< "" , i >>>;
        Std.atof(me.arg(i)) => float freq;
        i++;
        <<< "", i >>>;
        Std.atoi(me.arg(i)) => int duration;
        (1::ms * duration) => now;
        freq => s.freq;
    }
}
