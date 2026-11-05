# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105699e0 (ThumbnailManager_AddModel)
Paired Ghidra pseudocode: 105699E0_ThumbnailManager_AddModel.c
Window: [0x105699e0, 0x10569a20) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10569a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105699e0: 56 8b 74 24 08 85 f6 74 2a e8 32 17 ff ff 85 c0
105699f0: 74 21 8b 10 8b c8 8b 82 cc 00 00 00 56 ff d0 85
10569a00: c0 74 10 8b 0d 50 11 c7 10 85 c9 74 06 50 e8 6d
10569a10: 39 dc ff 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
105699e0 <.text+0x5689e0>:
105699e0:	56                                              	push   esi
105699e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
105699e5:	85 f6                                           	test   esi,esi
105699e7:	74 2a                                           	je     0x10569a13
105699e9:	e8 32 17 ff ff                                  	call   0x1055b120
105699ee:	85 c0                                           	test   eax,eax
105699f0:	74 21                                           	je     0x10569a13
105699f2:	8b 10                                           	mov    edx,DWORD PTR [eax]
105699f4:	8b c8                                           	mov    ecx,eax
105699f6:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
105699fc:	56                                              	push   esi
105699fd:	ff d0                                           	call   eax
105699ff:	85 c0                                           	test   eax,eax
10569a01:	74 10                                           	je     0x10569a13
10569a03:	8b 0d 50 11 c7 10                               	mov    ecx,DWORD PTR ds:0x10c71150
10569a09:	85 c9                                           	test   ecx,ecx
10569a0b:	74 06                                           	je     0x10569a13
10569a0d:	50                                              	push   eax
10569a0e:	e8 6d 39 dc ff                                  	call   0x1032d380
10569a13:	5e                                              	pop    esi
10569a14:	c3                                              	ret
10569a15:	cc                                              	int3
10569a16:	cc                                              	int3
10569a17:	cc                                              	int3
10569a18:	cc                                              	int3
10569a19:	cc                                              	int3
10569a1a:	cc                                              	int3
10569a1b:	cc                                              	int3
10569a1c:	cc                                              	int3
10569a1d:	cc                                              	int3
10569a1e:	cc                                              	int3
10569a1f:	cc                                              	int3
