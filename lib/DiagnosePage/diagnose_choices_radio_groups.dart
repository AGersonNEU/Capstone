enum WhatDoYouHear {Squeal , Knock, Tap, Rattle, Chirp, Clunk, Hiss}
WhatDoYouHear whatDoYouHear = WhatDoYouHear.Squeal;

enum WhenSqueal {Always, Stopping, Starting, Turning, Moving}
WhenSqueal whenSqueal = WhenSqueal.Always;

enum WhenRattle {Under, Rear, Engine}
WhenRattle whenRattle = WhenRattle.Under;

enum WhenChirp {Start, Running, Stopping, Accelerate}
WhenChirp whenChirp = WhenChirp.Start;

enum WhenChirpAccelerate {Engine , Under, Front, IDK}
WhenChirpAccelerate whenChirpAccelerate = WhenChirpAccelerate.Engine;

enum WhenClunk {Turning, Bumps, Gear}
WhenClunk whenClunk = WhenClunk.Turning;

enum WhenClunkTurning {Left, Right, IDK}
WhenClunkTurning whenClunkTurning = WhenClunkTurning.Left;

enum WhenClunkBump {Front, Rear}
WhenClunkBump whenClunkBump = WhenClunkBump.Front;