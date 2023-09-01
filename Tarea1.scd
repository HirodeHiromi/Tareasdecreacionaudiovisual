// Tarea 1

// prendemos supercollider
s.boot;
// apagamos supercollider
s.quit;

// medidores
s.meter;
s.scope;
s.freqscope;

// SynthDef

(
SynthDef(\misinte,{|frec=440, amp=0.5|
	var sen, env;
	sen=SinOsc.ar(frec, 0, amp);
	env=EnvGen.kr(Env.new([0,1,0],[0.1,0.1]),doneAction:2);
	Out.ar(0, sen*env)
}).add
);

// Llamar a un SynthDef
a=Synth(\misinte,[\frec, rrand(666,1080)]);

// liberar un Synth
a.free;

// envolvente
Env.help;
Env.new([0,1,0],[0.1,0.9]).plot;
.plot
.perc
.asr

// Pdef o definicón de patrón
(
~sec1=Pdef(\sec,
	Pbind(\instrument, \misinte,
		\dur, Pseq([0.2,0.2,0.4,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.2,0.4,0.2,0.2,0.4,0.2], inf),
		\frec, Pseq([329.63,329.63,261.63,329.63,329.63,392,349.23,349.23,392,349.23,349.23,329.63,329.63,261.63,329.63,261.63,293.66,493.88,329.63],inf),
		\amp, 1
	)
);
)

~sec1.play;
~sec1.stop;