# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x109947c0 (ThumbnailManager_SetCASPartData)
Paired Ghidra pseudocode: 109947C0_ThumbnailManager_SetCASPartData.c
Window: [0x109947c0, 0x10994800) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
109947c0: 83 ec 10 56 8b 35 50 11 c7 10 85 f6 74 24 8b 44
109947d0: 24 2c 8b 4c 24 28 50 51 8d 54 24 20 52 8d 44 24
109947e0: 10 50 e8 b9 92 bc ff 83 c4 08 50 8b ce e8 fe dd
109947f0: 98 ff 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
109947c0 <.text+0x9937c0>:
109947c0:	83 ec 10                                        	sub    esp,0x10
109947c3:	56                                              	push   esi
109947c4:	8b 35 50 11 c7 10                               	mov    esi,DWORD PTR ds:0x10c71150
109947ca:	85 f6                                           	test   esi,esi
109947cc:	74 24                                           	je     0x109947f2
109947ce:	8b 44 24 2c                                     	mov    eax,DWORD PTR [esp+0x2c]
109947d2:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
109947d6:	50                                              	push   eax
109947d7:	51                                              	push   ecx
109947d8:	8d 54 24 20                                     	lea    edx,[esp+0x20]
109947dc:	52                                              	push   edx
109947dd:	8d 44 24 10                                     	lea    eax,[esp+0x10]
109947e1:	50                                              	push   eax
109947e2:	e8 b9 92 bc ff                                  	call   0x1055daa0
109947e7:	83 c4 08                                        	add    esp,0x8
109947ea:	50                                              	push   eax
109947eb:	8b ce                                           	mov    ecx,esi
109947ed:	e8 fe dd 98 ff                                  	call   0x103225f0
109947f2:	5e                                              	pop    esi
109947f3:	83 c4 10                                        	add    esp,0x10
109947f6:	c3                                              	ret
109947f7:	cc                                              	int3
109947f8:	cc                                              	int3
109947f9:	cc                                              	int3
109947fa:	cc                                              	int3
109947fb:	cc                                              	int3
109947fc:	cc                                              	int3
109947fd:	cc                                              	int3
109947fe:	cc                                              	int3
109947ff:	cc                                              	int3
