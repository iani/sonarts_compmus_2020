//: 21 Dec 2020 04:03
/* embedinStream as communication channel: 
Pass state to patterns embedded (nested) in other patterns.
*/
//:+testing embedInStream
// must be called inside a routine!
Pseq((1..5), 2).embedInStream(()); // returns nil
//:Get a handle to the routine embedding the stream:
r = {
	Pseq((1..5), 2).embedInStream(()); // returns nil
}.r;
8 do: { r.next.postln };
//:Test reverse in Pseq
r = {
	Pseq((1..5), 2).embedInStream((reverse: true)); // returns nil
}.r;
8 do: { r.next.postln };
//:using offset and repeats as functions
r = {
	Pseq((1..5),
		{ | inval |
		postf("testing. REPEATS is: %\n", inval);
		2
	},
		{ | inval |
		postf("testing. inval is: %\n", inval);
		0
	}).embedInStream((reverse: true)); // returns nil
}.r;
8 do: { r.next.postln };
//:
