# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787670 (ScriptCore.World::World_ArePointsInSameBodyOfWater)
Paired Ghidra pseudocode: 00787670_ScriptCore_World_World_ArePointsInSameBodyOfWater.c
Window: [0x00787670, 0x007876c0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x007876c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787670: 56 e8 7a 16 0a 00 8b f0 85 f6 74 3d 8b ce e8 7d
00787680: 1f 0a 00 85 c0 74 32 d9 44 24 1c 83 ec 10 d9 5c
00787690: 24 0c 8b ce d9 44 24 24 d9 5c 24 08 d9 44 24 20
007876a0: d9 5c 24 04 d9 44 24 18 d9 1c 24 e8 50 1f 0a 00
007876b0: 8b c8 e8 29 9f ec ff 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
00787670 <.text+0x386670>:
  787670:	56                                              	push   esi
  787671:	e8 7a 16 0a 00                                  	call   0x828cf0
  787676:	8b f0                                           	mov    esi,eax
  787678:	85 f6                                           	test   esi,esi
  78767a:	74 3d                                           	je     0x7876b9
  78767c:	8b ce                                           	mov    ecx,esi
  78767e:	e8 7d 1f 0a 00                                  	call   0x829600
  787683:	85 c0                                           	test   eax,eax
  787685:	74 32                                           	je     0x7876b9
  787687:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  78768b:	83 ec 10                                        	sub    esp,0x10
  78768e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  787692:	8b ce                                           	mov    ecx,esi
  787694:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  787698:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78769c:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  7876a0:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  7876a4:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  7876a8:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  7876ab:	e8 50 1f 0a 00                                  	call   0x829600
  7876b0:	8b c8                                           	mov    ecx,eax
  7876b2:	e8 29 9f ec ff                                  	call   0x6515e0
  7876b7:	5e                                              	pop    esi
  7876b8:	c3                                              	ret
  7876b9:	32 c0                                           	xor    al,al
  7876bb:	5e                                              	pop    esi
  7876bc:	c3                                              	ret
  7876bd:	cc                                              	int3
  7876be:	cc                                              	int3
  7876bf:	cc                                              	int3
