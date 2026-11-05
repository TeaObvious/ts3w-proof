# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10577340 (World_HasFloorFeaturesImpl)
Paired Ghidra pseudocode: 10577340_World_HasFloorFeaturesImpl.c
Window: [0x10577340, 0x105773a0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x105773a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10577340: 51 8b 0d c4 00 c7 10 85 c9 74 44 8b 44 24 0c 8b
10577350: 54 24 08 6a 00 50 52 e8 b4 fc cb ff 85 c0 74 2f
10577360: 8a 4c 24 10 8a 54 24 14 88 0c 24 8a 4c 24 18 88
10577370: 54 24 01 8b 54 24 20 88 4c 24 02 8b 4c 24 1c 52
10577380: 51 8d 54 24 08 52 8b c8 e8 93 47 b0 ff 59 c3 32
10577390: c0 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10577340 <.text+0x576340>:
10577340:	51                                              	push   ecx
10577341:	8b 0d c4 00 c7 10                               	mov    ecx,DWORD PTR ds:0x10c700c4
10577347:	85 c9                                           	test   ecx,ecx
10577349:	74 44                                           	je     0x1057738f
1057734b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1057734f:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10577353:	6a 00                                           	push   0x0
10577355:	50                                              	push   eax
10577356:	52                                              	push   edx
10577357:	e8 b4 fc cb ff                                  	call   0x10237010
1057735c:	85 c0                                           	test   eax,eax
1057735e:	74 2f                                           	je     0x1057738f
10577360:	8a 4c 24 10                                     	mov    cl,BYTE PTR [esp+0x10]
10577364:	8a 54 24 14                                     	mov    dl,BYTE PTR [esp+0x14]
10577368:	88 0c 24                                        	mov    BYTE PTR [esp],cl
1057736b:	8a 4c 24 18                                     	mov    cl,BYTE PTR [esp+0x18]
1057736f:	88 54 24 01                                     	mov    BYTE PTR [esp+0x1],dl
10577373:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10577377:	88 4c 24 02                                     	mov    BYTE PTR [esp+0x2],cl
1057737b:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1057737f:	52                                              	push   edx
10577380:	51                                              	push   ecx
10577381:	8d 54 24 08                                     	lea    edx,[esp+0x8]
10577385:	52                                              	push   edx
10577386:	8b c8                                           	mov    ecx,eax
10577388:	e8 93 47 b0 ff                                  	call   0x1007bb20
1057738d:	59                                              	pop    ecx
1057738e:	c3                                              	ret
1057738f:	32 c0                                           	xor    al,al
10577391:	59                                              	pop    ecx
10577392:	c3                                              	ret
10577393:	cc                                              	int3
10577394:	cc                                              	int3
10577395:	cc                                              	int3
10577396:	cc                                              	int3
10577397:	cc                                              	int3
10577398:	cc                                              	int3
10577399:	cc                                              	int3
1057739a:	cc                                              	int3
1057739b:	cc                                              	int3
1057739c:	cc                                              	int3
1057739d:	cc                                              	int3
1057739e:	cc                                              	int3
1057739f:	cc                                              	int3
