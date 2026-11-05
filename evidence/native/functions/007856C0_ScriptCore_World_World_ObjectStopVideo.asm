# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007856c0 (ScriptCore.World::World_ObjectStopVideo)
Paired Ghidra pseudocode: 007856C0_ScriptCore_World_World_ObjectStopVideo.c
Window: [0x007856c0, 0x00785710) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785710
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007856c0: 55 8b ec 83 e4 f0 83 ec 50 8b 45 08 8b 4d 0c 8d
007856d0: 14 24 52 c7 44 24 04 9e 33 5a 63 c7 44 24 08 00
007856e0: 00 00 00 89 44 24 0c 89 4c 24 10 e8 90 dc f0 ff
007856f0: 8b 4c 24 08 83 c4 04 85 c9 74 0b 8b 01 8b 00 8d
00785700: 54 24 10 52 ff d0 8b e5 5d c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007856c0 <.text+0x3846c0>:
  7856c0:	55                                              	push   ebp
  7856c1:	8b ec                                           	mov    ebp,esp
  7856c3:	83 e4 f0                                        	and    esp,0xfffffff0
  7856c6:	83 ec 50                                        	sub    esp,0x50
  7856c9:	8b 45 08                                        	mov    eax,DWORD PTR [ebp+0x8]
  7856cc:	8b 4d 0c                                        	mov    ecx,DWORD PTR [ebp+0xc]
  7856cf:	8d 14 24                                        	lea    edx,[esp]
  7856d2:	52                                              	push   edx
  7856d3:	c7 44 24 04 9e 33 5a 63                         	mov    DWORD PTR [esp+0x4],0x635a339e
  7856db:	c7 44 24 08 00 00 00 00                         	mov    DWORD PTR [esp+0x8],0x0
  7856e3:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
  7856e7:	89 4c 24 10                                     	mov    DWORD PTR [esp+0x10],ecx
  7856eb:	e8 90 dc f0 ff                                  	call   0x693380
  7856f0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  7856f4:	83 c4 04                                        	add    esp,0x4
  7856f7:	85 c9                                           	test   ecx,ecx
  7856f9:	74 0b                                           	je     0x785706
  7856fb:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  7856fd:	8b 00                                           	mov    eax,DWORD PTR [eax]
  7856ff:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  785703:	52                                              	push   edx
  785704:	ff d0                                           	call   eax
  785706:	8b e5                                           	mov    esp,ebp
  785708:	5d                                              	pop    ebp
  785709:	c3                                              	ret
  78570a:	cc                                              	int3
  78570b:	cc                                              	int3
  78570c:	cc                                              	int3
  78570d:	cc                                              	int3
  78570e:	cc                                              	int3
  78570f:	cc                                              	int3
