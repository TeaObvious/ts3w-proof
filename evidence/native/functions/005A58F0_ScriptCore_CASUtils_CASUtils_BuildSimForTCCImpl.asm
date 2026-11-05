# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a58f0 (ScriptCore.CASUtils::CASUtils_BuildSimForTCCImpl)
Paired Ghidra pseudocode: 005A58F0_ScriptCore_CASUtils_CASUtils_BuildSimForTCCImpl.c
Window: [0x005a58f0, 0x005a5930) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a58f0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5900: 35 75 29 e8 88 3a 1c 00 8b 10 8b c8 8b 82 cc 00
005a5910: 00 00 56 ff d0 8b f0 85 f6 74 11 e8 a0 61 04 00
005a5920: 85 c0 74 08 56 8b c8 e8 f4 95 04 00 5e c3 cc cc

LINEAR DISASSEMBLY
005a58f0 <.text+0x1a48f0>:
  5a58f0:	56                                              	push   esi
  5a58f1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a58f5:	8b c6                                           	mov    eax,esi
  5a58f7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a58fc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5901:	75 29                                           	jne    0x5a592c
  5a5903:	e8 88 3a 1c 00                                  	call   0x769390
  5a5908:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a590a:	8b c8                                           	mov    ecx,eax
  5a590c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5912:	56                                              	push   esi
  5a5913:	ff d0                                           	call   eax
  5a5915:	8b f0                                           	mov    esi,eax
  5a5917:	85 f6                                           	test   esi,esi
  5a5919:	74 11                                           	je     0x5a592c
  5a591b:	e8 a0 61 04 00                                  	call   0x5ebac0
  5a5920:	85 c0                                           	test   eax,eax
  5a5922:	74 08                                           	je     0x5a592c
  5a5924:	56                                              	push   esi
  5a5925:	8b c8                                           	mov    ecx,eax
  5a5927:	e8 f4 95 04 00                                  	call   0x5eef20
  5a592c:	5e                                              	pop    esi
  5a592d:	c3                                              	ret
  5a592e:	cc                                              	int3
  5a592f:	cc                                              	int3
