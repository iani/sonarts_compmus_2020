// 26 Nov 2020 14:28
// «Dark ambience» by Jonatan Liljedahl on 09 Aug'11 04:44 in sctweetambient
// from: http://sccode.org/1-9

// Note: * 0.1 added by IZ
play{a=HPF.ar(ar(PinkNoise,5e-3),10)*Line.kr(0,1,9);ar(GVerb,({|i|ar(Ringz,a*LFNoise1.kr(0.05+0.1.rand),55*i+60,0.2)}!99).sum,70,99).tanh * 0.1 }