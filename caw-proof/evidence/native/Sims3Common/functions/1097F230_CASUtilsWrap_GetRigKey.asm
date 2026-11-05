# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097f230 (CASUtilsWrap_GetRigKey)
Paired Ghidra pseudocode: 1097F230_CASUtilsWrap_GetRigKey.c
Window: [0x1097f230, 0x1097f270) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097f270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097f230: 8b 44 24 08 83 ec 10 56 57 50 8d 4c 24 0c 51 e8
1097f240: bc 19 a2 ff 8b 70 08 8b 78 0c 8b 08 8b 50 04 8b
1097f250: 44 24 24 83 c4 08 89 78 0c 5f 89 70 08 89 08 89
1097f260: 50 04 5e 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097f230 <.text+0x97e230>:
1097f230:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
1097f234:	83 ec 10                                        	sub    esp,0x10
1097f237:	56                                              	push   esi
1097f238:	57                                              	push   edi
1097f239:	50                                              	push   eax
1097f23a:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
1097f23e:	51                                              	push   ecx
1097f23f:	e8 bc 19 a2 ff                                  	call   0x103a0c00
1097f244:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
1097f247:	8b 78 0c                                        	mov    edi,DWORD PTR [eax+0xc]
1097f24a:	8b 08                                           	mov    ecx,DWORD PTR [eax]
1097f24c:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097f24f:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
1097f253:	83 c4 08                                        	add    esp,0x8
1097f256:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
1097f259:	5f                                              	pop    edi
1097f25a:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
1097f25d:	89 08                                           	mov    DWORD PTR [eax],ecx
1097f25f:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
1097f262:	5e                                              	pop    esi
1097f263:	83 c4 10                                        	add    esp,0x10
1097f266:	c3                                              	ret
1097f267:	cc                                              	int3
1097f268:	cc                                              	int3
1097f269:	cc                                              	int3
1097f26a:	cc                                              	int3
1097f26b:	cc                                              	int3
1097f26c:	cc                                              	int3
1097f26d:	cc                                              	int3
1097f26e:	cc                                              	int3
1097f26f:	cc                                              	int3
