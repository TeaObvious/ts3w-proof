# Original recorder settings transport and managed cache

Reference: original PC1.67 TS3W.exe and matching pristine ScriptCore S3SA from
scripts.package. The [central managed identities](../../evidence/managed/README.md#matching-original-assembly-identities)
and [retained identity metadata](../../evidence/managed/selected/ui-menu-metadata/identities.json)
identify ScriptCore version1.0.5129.30674, MVID
da71f9d5-3a90-44c6-8f98-5bafd2fca18a. Retargeted assemblies and mods are not the
reference. This is static instruction/IL analysis, not an executed recording.

## Managed producer and cached reader

The complete [ScriptCore.VideoRecorder rendering](../../evidence/managed/types/ScriptCore.VideoRecorder.cs)
and [caller IL](../../evidence/managed/callers.il.txt) retain get_Settings06000D06
and set_Settings06000D07. On first get, native GetSettings is called at IL000B;
indices0..7 populate mSettings, then mSettingsInitialized becomes true. Subsequent
gets return that managed struct without another native read. Set first stores the
supplied struct and initialized flag, then builds eight UInt32 words and calls
native SetSettings at IL009A. Therefore a native normalization does not imply a
subsequent managed Settings get observes normalized values: its cache already
contains the submitted struct.

| Array index | Managed field | Native accepted transport |
| --- | --- | --- |
| 0 | Quality | UInt32 capped to3 |
| 1 | FrameSize | UInt32 capped to2 |
| 2 | ContainerFormat | UInt32 capped to1 |
| 3 | Content | UInt32 capped to1 |
| 4 | TimeLimitSeconds | Raw32-bit word copied; managed field is signed Int32 |
| 5 | AudioEnabled | Nonzero becomes byte1, otherwise0 |
| 6 | VirtualTimingEnabled | Nonzero becomes byte1, otherwise0 |
| 7 | RecordToDatabase | Nonzero becomes byte1, otherwise0 |

The getter reads index7 at IL0086 and stores its double-ceq nonzero result at
IL008E. The setter reads the same field at IL008B and emits0/1 before the native
call. Index7 is not an unidentified reserved word. This establishes its managed
meaning and Boolean transport, not the database writer's implementation.

## Native reader/writer boundary

Registered SetSettings784480 first calls9DFF90 and returns if its service is null.
After managed-array extraction through interface virtual+6C,7844B7 compares the
actual extracted length with8; a different length returns without virtual+4.
The decompiler's unaff_ESI and inferred extra indirect-call arguments are stack
artifacts; the instructions control the length check and service call.

The four CMP/JBE selections at7844E9..784555 implement unsigned maxima3/2/1/1.
Thus quality0xFFFFFFFF becomes3, not a preserved unknown enum. Word4 is copied at
78455B..784564. Three TEST/JNZ byte stores at784568..7845A3 normalize words5..7.
The zero-initialized24-byte service structure has five DWORDs followed by three
Boolean bytes; remaining initialized padding has no newly inferred semantics.
Service virtual+4 receives its address in ECX-service thiscall context.
[SetSettings ASM](../../evidence/native/functions/00784480_ScriptCore_VideoRecorder_VideoRecorder_SetSettings.asm) ([annotated C, with inferred-stack caveats](../../evidence/native/functions/00784480_ScriptCore_VideoRecorder_VideoRecorder_SetSettings.c)).

Registered GetSettings784290 likewise returns null when9DFF90 supplies no
service. Otherwise it zero-initializes a local structure and asks service
virtual+8 to fill it. It copies five DWORDs and nonzero-tests the three Boolean
bytes into an eight-element Int32 array via the existing scripting interface.
The last byte is at78430A; its normalized array word is stored at784319.
[GetSettings ASM](../../evidence/native/functions/00784290_ScriptCore_VideoRecorder_VideoRecorder_GetSettings.asm) ([annotated C](../../evidence/native/functions/00784290_ScriptCore_VideoRecorder_VideoRecorder_GetSettings.c)).

These existing raw exports are bounded original-byte/linear instruction windows,
not newly asserted owned-function envelopes. The selected paths through each RET
were also checked against the existing explicit-/TS3W.exe GhidrAssist Listing;
no new database mutation, save or broad export is needed to interpret them.

## Status, output and remaining service questions

784420 calls service virtual+0 and returns statuses1,2,3,4 unchanged, otherwise0;
missing service also returns0. This wrapper does not define state3's meaning,
transition timing or notification thread.
[GetStatus ASM](../../evidence/native/functions/00784420_ScriptCore_VideoRecorder_VideoRecorder_GetStatus.asm) ([C](../../evidence/native/functions/00784420_ScriptCore_VideoRecorder_VideoRecorder_GetStatus.c)).

Original managed StatusChanged forwards to
Sims3.SimIFace.VideoRecording.VideoRecorder.TriggerStatusChanged. That forwarding
member does not identify the native callback producer or prove worker-thread
admission. Start7841A0, Stop7841C0 and snapshot7841E0/784230 are separate service
operations, indexed by the [recorder API](../../api/ScriptCore.VideoRecorder/README.md).
GetLastVideoKey7843C0 returns a resource-key result through that service boundary;
its existence does not prove when database recording has successfully published
an image/video resource.

Concrete remaining questions are the implementation and writers behind9DFF90's
virtual+4/+8/+2C services; RecordToDatabase's destination/ownership/error path and
GetLastVideoKey publication; audio/container/virtual-timing execution; time-limit
interpretation for nonpositive/overflow inputs; state3 and callback ordering;
filename/path collision, snapshot UI phase and final output persistence. Retaining
a flag or accepting a Start call does not implement those operations. No AVI
format, gameplay, disk, callback concurrency or save/reload acceptance is inferred.
