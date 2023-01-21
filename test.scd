(
s.waitForBoot({
	Routine{
		b = Buffer.read(s,thisProcess.nowExecutingPath.dirname++"/pad_bpm120_beats64.wav");
		1.wait;
		SynthDef("test",{
			var snd2;
			var snd=PlayBuf.ar(2,b,loop:1);
			snd2=snd*1;
			snd2=AnalogChew.ar(snd2,0.8,MouseY.kr(),MouseX.kr());
			// snd2=AnalogLoss.ar(snd2,MouseY.kr(),MouseX.kr(),0.5,1);
			// snd2=AnalogDegrade.ar(snd2,0.1,0.1,MouseX.kr(),MouseY.kr());
			Out.ar(0,SelectX.ar(1,[snd2,snd2]).tanh);
		}).play;

	}.play;
});
)