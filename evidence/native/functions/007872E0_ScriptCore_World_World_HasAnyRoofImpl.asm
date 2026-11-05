# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007872e0 (ScriptCore.World::World_HasAnyRoofImpl)
Paired Ghidra pseudocode: 007872E0_ScriptCore_World_World_HasAnyRoofImpl.c
Window: [0x007872e0, 0x00787320) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787320
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007872e0: 8b 0d c4 db 1e 01 85 c9 74 2f 8b 44 24 08 8b 54
007872f0: 24 04 6a 00 50 52 e8 15 b5 4d 00 85 c0 74 1a 8b
00787300: 80 ac 02 00 00 85 c0 74 10 8b c8 e8 60 4d de ff
00787310: 33 c9 3b c8 1b c0 f7 d8 c3 32 c0 c3 cc cc cc cc

LINEAR DISASSEMBLY
007872e0 <.text+0x3862e0>:
  7872e0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7872e6:	85 c9                                           	test   ecx,ecx
  7872e8:	74 2f                                           	je     0x787319
  7872ea:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7872ee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7872f2:	6a 00                                           	push   0x0
  7872f4:	50                                              	push   eax
  7872f5:	52                                              	push   edx
  7872f6:	e8 15 b5 4d 00                                  	call   0xc62810
  7872fb:	85 c0                                           	test   eax,eax
  7872fd:	74 1a                                           	je     0x787319
  7872ff:	8b 80 ac 02 00 00                               	mov    eax,DWORD PTR [eax+0x2ac]
  787305:	85 c0                                           	test   eax,eax
  787307:	74 10                                           	je     0x787319
  787309:	8b c8                                           	mov    ecx,eax
  78730b:	e8 60 4d de ff                                  	call   0x56c070
  787310:	33 c9                                           	xor    ecx,ecx
  787312:	3b c8                                           	cmp    ecx,eax
  787314:	1b c0                                           	sbb    eax,eax
  787316:	f7 d8                                           	neg    eax
  787318:	c3                                              	ret
  787319:	32 c0                                           	xor    al,al
  78731b:	c3                                              	ret
  78731c:	cc                                              	int3
  78731d:	cc                                              	int3
  78731e:	cc                                              	int3
  78731f:	cc                                              	int3
