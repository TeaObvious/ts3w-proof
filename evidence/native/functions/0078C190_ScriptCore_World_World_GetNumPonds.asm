# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0078c190 (ScriptCore.World::World_GetNumPonds)
Paired Ghidra pseudocode: 0078C190_ScriptCore_World_World_GetNumPonds.c
Window: [0x0078c190, 0x0078c1f0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0078c1f0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0078c190: 8b 0d c4 db 1e 01 85 c9 74 44 8b 44 24 04 8b 54
0078c1a0: 24 08 56 8b f0 0b f2 5e 75 05 e9 a1 47 4d 00 6a
0078c1b0: 00 52 50 e8 58 66 4d 00 85 c0 74 22 8b 80 c8 02
0078c1c0: 00 00 85 c0 74 18 8b 48 10 2b 48 0c b8 ab aa aa
0078c1d0: 2a f7 e9 c1 fa 04 8b c2 c1 e8 1f 03 c2 c3 33 c0
0078c1e0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0078c190 <.text+0x38b190>:
  78c190:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  78c196:	85 c9                                           	test   ecx,ecx
  78c198:	74 44                                           	je     0x78c1de
  78c19a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  78c19e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  78c1a2:	56                                              	push   esi
  78c1a3:	8b f0                                           	mov    esi,eax
  78c1a5:	0b f2                                           	or     esi,edx
  78c1a7:	5e                                              	pop    esi
  78c1a8:	75 05                                           	jne    0x78c1af
  78c1aa:	e9 a1 47 4d 00                                  	jmp    0xc60950
  78c1af:	6a 00                                           	push   0x0
  78c1b1:	52                                              	push   edx
  78c1b2:	50                                              	push   eax
  78c1b3:	e8 58 66 4d 00                                  	call   0xc62810
  78c1b8:	85 c0                                           	test   eax,eax
  78c1ba:	74 22                                           	je     0x78c1de
  78c1bc:	8b 80 c8 02 00 00                               	mov    eax,DWORD PTR [eax+0x2c8]
  78c1c2:	85 c0                                           	test   eax,eax
  78c1c4:	74 18                                           	je     0x78c1de
  78c1c6:	8b 48 10                                        	mov    ecx,DWORD PTR [eax+0x10]
  78c1c9:	2b 48 0c                                        	sub    ecx,DWORD PTR [eax+0xc]
  78c1cc:	b8 ab aa aa 2a                                  	mov    eax,0x2aaaaaab
  78c1d1:	f7 e9                                           	imul   ecx
  78c1d3:	c1 fa 04                                        	sar    edx,0x4
  78c1d6:	8b c2                                           	mov    eax,edx
  78c1d8:	c1 e8 1f                                        	shr    eax,0x1f
  78c1db:	03 c2                                           	add    eax,edx
  78c1dd:	c3                                              	ret
  78c1de:	33 c0                                           	xor    eax,eax
  78c1e0:	c3                                              	ret
  78c1e1:	cc                                              	int3
  78c1e2:	cc                                              	int3
  78c1e3:	cc                                              	int3
  78c1e4:	cc                                              	int3
  78c1e5:	cc                                              	int3
  78c1e6:	cc                                              	int3
  78c1e7:	cc                                              	int3
  78c1e8:	cc                                              	int3
  78c1e9:	cc                                              	int3
  78c1ea:	cc                                              	int3
  78c1eb:	cc                                              	int3
  78c1ec:	cc                                              	int3
  78c1ed:	cc                                              	int3
  78c1ee:	cc                                              	int3
  78c1ef:	cc                                              	int3
