# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a7260 (CASUtils_ApplyPresetToPartImpl)
Paired Ghidra pseudocode: 103A7260_CASUtils_ApplyPresetToPartImpl.c
Window: [0x103a7260, 0x103a7290) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a7290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a7260: 8b 44 24 50 56 57 50 83 ec 48 8b fc b9 12 00 00
103a7270: 00 8d 74 24 5c f3 a5 8b 4c 24 58 51 e8 af f4 ff
103a7280: ff 83 c4 50 5f 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a7260 <.text+0x3a6260>:
103a7260:	8b 44 24 50                                     	mov    eax,DWORD PTR [esp+0x50]
103a7264:	56                                              	push   esi
103a7265:	57                                              	push   edi
103a7266:	50                                              	push   eax
103a7267:	83 ec 48                                        	sub    esp,0x48
103a726a:	8b fc                                           	mov    edi,esp
103a726c:	b9 12 00 00 00                                  	mov    ecx,0x12
103a7271:	8d 74 24 5c                                     	lea    esi,[esp+0x5c]
103a7275:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
103a7277:	8b 4c 24 58                                     	mov    ecx,DWORD PTR [esp+0x58]
103a727b:	51                                              	push   ecx
103a727c:	e8 af f4 ff ff                                  	call   0x103a6730
103a7281:	83 c4 50                                        	add    esp,0x50
103a7284:	5f                                              	pop    edi
103a7285:	5e                                              	pop    esi
103a7286:	c3                                              	ret
103a7287:	cc                                              	int3
103a7288:	cc                                              	int3
103a7289:	cc                                              	int3
103a728a:	cc                                              	int3
103a728b:	cc                                              	int3
103a728c:	cc                                              	int3
103a728d:	cc                                              	int3
103a728e:	cc                                              	int3
103a728f:	cc                                              	int3
