# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007858e0 (ScriptCore.World::World_GetResidentialLotSubType)
Paired Ghidra pseudocode: 007858E0_ScriptCore_World_World_GetResidentialLotSubType.c
Window: [0x007858e0, 0x00785920) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00785920
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007858e0: 8b 0d c4 db 1e 01 85 c9 74 13 8b 44 24 08 8b 54
007858f0: 24 04 6a 00 50 52 e8 15 cf 4d 00 eb 02 33 c0 33
00785900: c9 85 c0 74 12 39 88 08 04 00 00 75 07 8b 80 0c
00785910: 04 00 00 c3 33 c0 c3 8b c1 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
007858e0 <.text+0x3848e0>:
  7858e0:	8b 0d c4 db 1e 01                               	mov    ecx,DWORD PTR ds:0x11edbc4
  7858e6:	85 c9                                           	test   ecx,ecx
  7858e8:	74 13                                           	je     0x7858fd
  7858ea:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  7858ee:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  7858f2:	6a 00                                           	push   0x0
  7858f4:	50                                              	push   eax
  7858f5:	52                                              	push   edx
  7858f6:	e8 15 cf 4d 00                                  	call   0xc62810
  7858fb:	eb 02                                           	jmp    0x7858ff
  7858fd:	33 c0                                           	xor    eax,eax
  7858ff:	33 c9                                           	xor    ecx,ecx
  785901:	85 c0                                           	test   eax,eax
  785903:	74 12                                           	je     0x785917
  785905:	39 88 08 04 00 00                               	cmp    DWORD PTR [eax+0x408],ecx
  78590b:	75 07                                           	jne    0x785914
  78590d:	8b 80 0c 04 00 00                               	mov    eax,DWORD PTR [eax+0x40c]
  785913:	c3                                              	ret
  785914:	33 c0                                           	xor    eax,eax
  785916:	c3                                              	ret
  785917:	8b c1                                           	mov    eax,ecx
  785919:	c3                                              	ret
  78591a:	cc                                              	int3
  78591b:	cc                                              	int3
  78591c:	cc                                              	int3
  78591d:	cc                                              	int3
  78591e:	cc                                              	int3
  78591f:	cc                                              	int3
