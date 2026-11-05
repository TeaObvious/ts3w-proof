# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1054a190 (Route_ResetCurrentPath)
Paired Ghidra pseudocode: 1054A190_Route_ResetCurrentPath.c
Window: [0x1054a190, 0x1054a1d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1054a1d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1054a190: 8b 0d 44 89 c7 10 85 c9 74 2c 8b 44 24 04 56 50
1054a1a0: e8 4b 1f ff ff 8b f0 85 f6 74 1a 8b 16 8b 42 10
1054a1b0: 8b ce ff d0 8b ce e8 d5 d9 ff ff 8b 16 8b 42 14
1054a1c0: 8b ce 5e ff e0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1054a190 <.text+0x549190>:
1054a190:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
1054a196:	85 c9                                           	test   ecx,ecx
1054a198:	74 2c                                           	je     0x1054a1c6
1054a19a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
1054a19e:	56                                              	push   esi
1054a19f:	50                                              	push   eax
1054a1a0:	e8 4b 1f ff ff                                  	call   0x1053c0f0
1054a1a5:	8b f0                                           	mov    esi,eax
1054a1a7:	85 f6                                           	test   esi,esi
1054a1a9:	74 1a                                           	je     0x1054a1c5
1054a1ab:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054a1ad:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
1054a1b0:	8b ce                                           	mov    ecx,esi
1054a1b2:	ff d0                                           	call   eax
1054a1b4:	8b ce                                           	mov    ecx,esi
1054a1b6:	e8 d5 d9 ff ff                                  	call   0x10547b90
1054a1bb:	8b 16                                           	mov    edx,DWORD PTR [esi]
1054a1bd:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
1054a1c0:	8b ce                                           	mov    ecx,esi
1054a1c2:	5e                                              	pop    esi
1054a1c3:	ff e0                                           	jmp    eax
1054a1c5:	5e                                              	pop    esi
1054a1c6:	c3                                              	ret
1054a1c7:	cc                                              	int3
1054a1c8:	cc                                              	int3
1054a1c9:	cc                                              	int3
1054a1ca:	cc                                              	int3
1054a1cb:	cc                                              	int3
1054a1cc:	cc                                              	int3
1054a1cd:	cc                                              	int3
1054a1ce:	cc                                              	int3
1054a1cf:	cc                                              	int3
