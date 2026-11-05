# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1055a370 (SACS_AcquireDriverImpl)
Paired Ghidra pseudocode: 1055A370_SACS_AcquireDriverImpl.c
Window: [0x1055a370, 0x1055a3b0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1055a3b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1055a370: 8b 44 24 20 8b 4c 24 1c 8b 54 24 18 50 8b 44 24
1055a380: 18 51 8b 4c 24 18 52 8b 54 24 18 50 8b 44 24 18
1055a390: 51 8b 4c 24 18 52 50 51 e8 d3 fd ff ff 83 c4 20
1055a3a0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1055a370 <.text+0x559370>:
1055a370:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1055a374:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
1055a378:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1055a37c:	50                                              	push   eax
1055a37d:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1055a381:	51                                              	push   ecx
1055a382:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055a386:	52                                              	push   edx
1055a387:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
1055a38b:	50                                              	push   eax
1055a38c:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1055a390:	51                                              	push   ecx
1055a391:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
1055a395:	52                                              	push   edx
1055a396:	50                                              	push   eax
1055a397:	51                                              	push   ecx
1055a398:	e8 d3 fd ff ff                                  	call   0x1055a170
1055a39d:	83 c4 20                                        	add    esp,0x20
1055a3a0:	c3                                              	ret
1055a3a1:	cc                                              	int3
1055a3a2:	cc                                              	int3
1055a3a3:	cc                                              	int3
1055a3a4:	cc                                              	int3
1055a3a5:	cc                                              	int3
1055a3a6:	cc                                              	int3
1055a3a7:	cc                                              	int3
1055a3a8:	cc                                              	int3
1055a3a9:	cc                                              	int3
1055a3aa:	cc                                              	int3
1055a3ab:	cc                                              	int3
1055a3ac:	cc                                              	int3
1055a3ad:	cc                                              	int3
1055a3ae:	cc                                              	int3
1055a3af:	cc                                              	int3
