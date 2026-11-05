# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1098f440 (CameraWrap_SetTransform)
Paired Ghidra pseudocode: 1098F440_CameraWrap_SetTransform.c
Window: [0x1098f440, 0x1098f480) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1098f480
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1098f440: 55 8b ec 83 e4 f0 8b 45 0c 83 ec 4c 56 50 8d 4c
1098f450: 24 14 51 e8 08 0d ff ff 8b 75 08 83 c4 08 50 8b
1098f460: ce e8 7a 4d dc ff 8b ce e8 43 34 dc ff 5e 8b e5
1098f470: 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1098f440 <.text+0x98e440>:
1098f440:	55                                              	push   ebp
1098f441:	8b ec                                           	mov    ebp,esp
1098f443:	83 e4 f0                                        	and    esp,0xfffffff0
1098f446:	8b 45 0c                                        	mov    eax,DWORD PTR [ebp+0xc]
1098f449:	83 ec 4c                                        	sub    esp,0x4c
1098f44c:	56                                              	push   esi
1098f44d:	50                                              	push   eax
1098f44e:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1098f452:	51                                              	push   ecx
1098f453:	e8 08 0d ff ff                                  	call   0x10980160
1098f458:	8b 75 08                                        	mov    esi,DWORD PTR [ebp+0x8]
1098f45b:	83 c4 08                                        	add    esp,0x8
1098f45e:	50                                              	push   eax
1098f45f:	8b ce                                           	mov    ecx,esi
1098f461:	e8 7a 4d dc ff                                  	call   0x107541e0
1098f466:	8b ce                                           	mov    ecx,esi
1098f468:	e8 43 34 dc ff                                  	call   0x107528b0
1098f46d:	5e                                              	pop    esi
1098f46e:	8b e5                                           	mov    esp,ebp
1098f470:	5d                                              	pop    ebp
1098f471:	c3                                              	ret
1098f472:	cc                                              	int3
1098f473:	cc                                              	int3
1098f474:	cc                                              	int3
1098f475:	cc                                              	int3
1098f476:	cc                                              	int3
1098f477:	cc                                              	int3
1098f478:	cc                                              	int3
1098f479:	cc                                              	int3
1098f47a:	cc                                              	int3
1098f47b:	cc                                              	int3
1098f47c:	cc                                              	int3
1098f47d:	cc                                              	int3
1098f47e:	cc                                              	int3
1098f47f:	cc                                              	int3
