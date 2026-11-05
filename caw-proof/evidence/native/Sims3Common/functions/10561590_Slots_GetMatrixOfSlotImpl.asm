# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10561590 (Slots_GetMatrixOfSlotImpl)
Paired Ghidra pseudocode: 10561590_Slots_GetMatrixOfSlotImpl.c
Window: [0x10561590, 0x105615d0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105615d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10561590: 8b 44 24 10 8b 4c 24 0c 8b 54 24 08 83 ec 40 56
105615a0: 57 50 51 52 8d 44 24 14 50 e8 82 fa ff ff 8b f0
105615b0: 8b 44 24 5c 83 c4 10 b9 10 00 00 00 8b f8 f3 a5
105615c0: 5f 5e 83 c4 40 c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10561590 <.text+0x560590>:
10561590:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
10561594:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
10561598:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
1056159c:	83 ec 40                                        	sub    esp,0x40
1056159f:	56                                              	push   esi
105615a0:	57                                              	push   edi
105615a1:	50                                              	push   eax
105615a2:	51                                              	push   ecx
105615a3:	52                                              	push   edx
105615a4:	8d 44 24 14                                     	lea    eax,[esp+0x14]
105615a8:	50                                              	push   eax
105615a9:	e8 82 fa ff ff                                  	call   0x10561030
105615ae:	8b f0                                           	mov    esi,eax
105615b0:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
105615b4:	83 c4 10                                        	add    esp,0x10
105615b7:	b9 10 00 00 00                                  	mov    ecx,0x10
105615bc:	8b f8                                           	mov    edi,eax
105615be:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
105615c0:	5f                                              	pop    edi
105615c1:	5e                                              	pop    esi
105615c2:	83 c4 40                                        	add    esp,0x40
105615c5:	c3                                              	ret
105615c6:	cc                                              	int3
105615c7:	cc                                              	int3
105615c8:	cc                                              	int3
105615c9:	cc                                              	int3
105615ca:	cc                                              	int3
105615cb:	cc                                              	int3
105615cc:	cc                                              	int3
105615cd:	cc                                              	int3
105615ce:	cc                                              	int3
105615cf:	cc                                              	int3
