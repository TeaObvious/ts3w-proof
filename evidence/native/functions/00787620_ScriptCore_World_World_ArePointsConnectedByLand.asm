# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00787620 (ScriptCore.World::World_ArePointsConnectedByLand)
Paired Ghidra pseudocode: 00787620_ScriptCore_World_World_ArePointsConnectedByLand.c
Window: [0x00787620, 0x00787670) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00787670
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00787620: 56 e8 ca 16 0a 00 8b f0 85 f6 74 3d 8b ce e8 cd
00787630: 1f 0a 00 85 c0 74 32 d9 44 24 1c 83 ec 10 d9 5c
00787640: 24 0c 8b ce d9 44 24 24 d9 5c 24 08 d9 44 24 20
00787650: d9 5c 24 04 d9 44 24 18 d9 1c 24 e8 a0 1f 0a 00
00787660: 8b c8 e8 79 6d ed ff 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
00787620 <.text+0x386620>:
  787620:	56                                              	push   esi
  787621:	e8 ca 16 0a 00                                  	call   0x828cf0
  787626:	8b f0                                           	mov    esi,eax
  787628:	85 f6                                           	test   esi,esi
  78762a:	74 3d                                           	je     0x787669
  78762c:	8b ce                                           	mov    ecx,esi
  78762e:	e8 cd 1f 0a 00                                  	call   0x829600
  787633:	85 c0                                           	test   eax,eax
  787635:	74 32                                           	je     0x787669
  787637:	d9 44 24 1c                                     	fld    DWORD PTR [esp+0x1c]
  78763b:	83 ec 10                                        	sub    esp,0x10
  78763e:	d9 5c 24 0c                                     	fstp   DWORD PTR [esp+0xc]
  787642:	8b ce                                           	mov    ecx,esi
  787644:	d9 44 24 24                                     	fld    DWORD PTR [esp+0x24]
  787648:	d9 5c 24 08                                     	fstp   DWORD PTR [esp+0x8]
  78764c:	d9 44 24 20                                     	fld    DWORD PTR [esp+0x20]
  787650:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  787654:	d9 44 24 18                                     	fld    DWORD PTR [esp+0x18]
  787658:	d9 1c 24                                        	fstp   DWORD PTR [esp]
  78765b:	e8 a0 1f 0a 00                                  	call   0x829600
  787660:	8b c8                                           	mov    ecx,eax
  787662:	e8 79 6d ed ff                                  	call   0x65e3e0
  787667:	5e                                              	pop    esi
  787668:	c3                                              	ret
  787669:	32 c0                                           	xor    al,al
  78766b:	5e                                              	pop    esi
  78766c:	c3                                              	ret
  78766d:	cc                                              	int3
  78766e:	cc                                              	int3
  78766f:	cc                                              	int3
