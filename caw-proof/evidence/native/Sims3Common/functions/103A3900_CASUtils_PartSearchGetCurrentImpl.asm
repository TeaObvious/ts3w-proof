# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a3900 (CASUtils_PartSearchGetCurrentImpl)
Paired Ghidra pseudocode: 103A3900_CASUtils_PartSearchGetCurrentImpl.c
Window: [0x103a3900, 0x103a3930) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a3930
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a3900: 8b 44 24 08 83 ec 48 56 57 50 8d 4c 24 0c 51 e8
103a3910: 2c ea ff ff 8b f0 8b 44 24 5c 83 c4 08 b9 12 00
103a3920: 00 00 8b f8 f3 a5 5f 5e 83 c4 48 c3 cc cc cc cc

LINEAR DISASSEMBLY
103a3900 <.text+0x3a2900>:
103a3900:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
103a3904:	83 ec 48                                        	sub    esp,0x48
103a3907:	56                                              	push   esi
103a3908:	57                                              	push   edi
103a3909:	50                                              	push   eax
103a390a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
103a390e:	51                                              	push   ecx
103a390f:	e8 2c ea ff ff                                  	call   0x103a2340
103a3914:	8b f0                                           	mov    esi,eax
103a3916:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
103a391a:	83 c4 08                                        	add    esp,0x8
103a391d:	b9 12 00 00 00                                  	mov    ecx,0x12
103a3922:	8b f8                                           	mov    edi,eax
103a3924:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a3926:	5f                                              	pop    edi
103a3927:	5e                                              	pop    esi
103a3928:	83 c4 48                                        	add    esp,0x48
103a392b:	c3                                              	ret
103a392c:	cc                                              	int3
103a392d:	cc                                              	int3
103a392e:	cc                                              	int3
103a392f:	cc                                              	int3
