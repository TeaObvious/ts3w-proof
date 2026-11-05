# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x105421a0 (Route_ClearForbiddenPortalList)
Paired Ghidra pseudocode: 105421A0_Route_ClearForbiddenPortalList.c
Window: [0x105421a0, 0x105421e0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x105421e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
105421a0: 8b 0d 44 89 c7 10 85 c9 74 35 8b 44 24 04 56 50
105421b0: e8 3b 9f ff ff 8b f0 85 f6 74 23 8b 16 8b 42 10
105421c0: 8b ce ff d0 8d 8e 58 01 00 00 e8 81 bf 0c 00 8b
105421d0: 08 89 48 04 8b 16 8b 42 14 8b ce 5e ff e0 5e c3

LINEAR DISASSEMBLY
105421a0 <.text+0x5411a0>:
105421a0:	8b 0d 44 89 c7 10                               	mov    ecx,DWORD PTR ds:0x10c78944
105421a6:	85 c9                                           	test   ecx,ecx
105421a8:	74 35                                           	je     0x105421df
105421aa:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
105421ae:	56                                              	push   esi
105421af:	50                                              	push   eax
105421b0:	e8 3b 9f ff ff                                  	call   0x1053c0f0
105421b5:	8b f0                                           	mov    esi,eax
105421b7:	85 f6                                           	test   esi,esi
105421b9:	74 23                                           	je     0x105421de
105421bb:	8b 16                                           	mov    edx,DWORD PTR [esi]
105421bd:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
105421c0:	8b ce                                           	mov    ecx,esi
105421c2:	ff d0                                           	call   eax
105421c4:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
105421ca:	e8 81 bf 0c 00                                  	call   0x1060e150
105421cf:	8b 08                                           	mov    ecx,DWORD PTR [eax]
105421d1:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
105421d4:	8b 16                                           	mov    edx,DWORD PTR [esi]
105421d6:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
105421d9:	8b ce                                           	mov    ecx,esi
105421db:	5e                                              	pop    esi
105421dc:	ff e0                                           	jmp    eax
105421de:	5e                                              	pop    esi
105421df:	c3                                              	ret
