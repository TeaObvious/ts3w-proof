# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00785920 (ScriptCore.World::World_SetResidentialLotSubType)
Paired Ghidra pseudocode: 00785920_ScriptCore_World_World_SetResidentialLotSubType.c
Window: [0x00785920, 0x00785960) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785960
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00785920: 8b 0d c4 db 1e 01 85 c9 74 28 8b 44 24 08 8b 54
00785930: 24 04 6a 00 50 52 e8 d5 ce 4d 00 85 c0 74 13 83
00785940: b8 08 04 00 00 00 75 0a 8b 4c 24 0c 89 88 0c 04
00785950: 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00785920 <.text+0x384920>:
  785920:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  785926:	85 c9                                           	test   ecx,ecx
  785928:	74 28                                           	je     0x785952
  78592a:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  78592e:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  785932:	6a 00                                           	push   0x0
  785934:	50                                              	push   eax
  785935:	52                                              	push   edx
  785936:	e8 d5 ce 4d 00                                  	call   0xc62810
  78593b:	85 c0                                           	test   eax,eax
  78593d:	74 13                                           	je     0x785952
  78593f:	83 b8 08 04 00 00 00                            	cmp    DWORD PTR [eax+0x408],0x0
  785946:	75 0a                                           	jne    0x785952
  785948:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  78594c:	89 88 0c 04 00 00                               	mov    DWORD PTR [eax+0x40c],ecx
  785952:	c3                                              	ret
  785953:	cc                                              	int3
  785954:	cc                                              	int3
  785955:	cc                                              	int3
  785956:	cc                                              	int3
  785957:	cc                                              	int3
  785958:	cc                                              	int3
  785959:	cc                                              	int3
  78595a:	cc                                              	int3
  78595b:	cc                                              	int3
  78595c:	cc                                              	int3
  78595d:	cc                                              	int3
  78595e:	cc                                              	int3
  78595f:	cc                                              	int3
