// Mi pieza de sonido

s.boot;

s.quit;

TempoClock.tempo=120/60;

(
~sonido1=Pdef(\son1, Pbind(\instrument, \sine,
	\dur, Pseq([0.5,0.5,0.5,1,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,1,0.5,0.5,0.5,1.5,0], inf),
	\amp, Pseq([1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0], inf),
	\note, Pseq([3,3,3,1,3,3,5,4,4,5,4,4,3,3,1,3,1,2,-7,0], inf),
	\octave, 5,
	\out, 9,
));
);

(
~sonido2=Pdef(\son2, Pbind(\instrument, \pulse,
	\dur, Pseq([0.5, 1, 0.25, Pn(1.25, 0.5), 0.5], inf),
	\amp, 0.15,
	\freq, Pseq([300, 400, 800, 790, Pn(350, 4), Pseq([400, 800, 400, 450], 3)], inf),
	\rel, 0.09,
	\out, 9
));
);

(
~sonido3=Pdef(\son3, Pbind(\instrument, \saw,
	\dur, Pseq([1,1,0.5,0.5,0.5,0.75,0.5,0.5,0.5,1,0.5], inf),
	\amp, Pseq([1,1,1,1,1,1,1,1,1,1,1], inf),
	\note, Pseq([3,1,3,3,5,4,4,3,3,1,2], inf),
	\octave, 5,
	\out, 11,
));
);

(
~highhat = Pdef(\highhat, Pbind(\instrument, \wnoise,
	\dur, 0.25,
	\amp, Pseq([0.01, 0.02, 0.15, 0.01, 0.03, 0.02, 0.15, 0.01, Pseq([0.1, 0.12, 0.01, 0.15], 2)], inf),
	\at, 0.001, \rel, 0.1,
	\out, 17
))
);


~sonido1.play.quant(4);//sincronizar
~sonido1.stop;
~sonido2.play.quant(4);
~sonido2.stop;
~sonido3.play.quant(4);
~sonido3.stop;
~highhat.play.quant(4);
~highhat.stop;


// efectos
~rev.set();
~dly.set();
~lpf.set();
~hpf.set();
~bof.set();