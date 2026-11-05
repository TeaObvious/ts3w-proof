# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x103a21f0 (CASUtils_GetRigKeyImpl)
Paired Ghidra pseudocode: 103A21F0_CASUtils_GetRigKeyImpl.c
Window: [0x103a21f0, 0x103a2250) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x103a2250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
103a21f0: 83 ec 10 8b 4c 24 18 33 c0 56 89 44 24 04 89 44
103a2200: 24 08 89 44 24 0c 89 44 24 10 57 8d 44 24 08 50
103a2210: 51 e8 ca 3d 04 00 8b c8 e8 e3 50 04 00 8b 44 24
103a2220: 1c 8b 4c 24 10 8b 54 24 14 8b 74 24 08 8b 7c 24
103a2230: 0c 89 08 89 50 04 89 70 08 89 78 0c 5f 5e 83 c4
103a2240: 10 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
103a21f0 <.text+0x3a11f0>:
103a21f0:	83 ec 10                                        	sub    esp,0x10
103a21f3:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
103a21f7:	33 c0                                           	xor    eax,eax
103a21f9:	56                                              	push   esi
103a21fa:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
103a21fe:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
103a2202:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
103a2206:	89 44 24 10                                     	mov    DWORD PTR [esp+0x10],eax
103a220a:	57                                              	push   edi
103a220b:	8d 44 24 08                                     	lea    eax,[esp+0x8]
103a220f:	50                                              	push   eax
103a2210:	51                                              	push   ecx
103a2211:	e8 ca 3d 04 00                                  	call   0x103e5fe0
103a2216:	8b c8                                           	mov    ecx,eax
103a2218:	e8 e3 50 04 00                                  	call   0x103e7300
103a221d:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
103a2221:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
103a2225:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
103a2229:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
103a222d:	8b 7c 24 0c                                     	mov    edi,DWORD PTR [esp+0xc]
103a2231:	89 08                                           	mov    DWORD PTR [eax],ecx
103a2233:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
103a2236:	89 70 08                                        	mov    DWORD PTR [eax+0x8],esi
103a2239:	89 78 0c                                        	mov    DWORD PTR [eax+0xc],edi
103a223c:	5f                                              	pop    edi
103a223d:	5e                                              	pop    esi
103a223e:	83 c4 10                                        	add    esp,0x10
103a2241:	c3                                              	ret
103a2242:	cc                                              	int3
103a2243:	cc                                              	int3
103a2244:	cc                                              	int3
103a2245:	cc                                              	int3
103a2246:	cc                                              	int3
103a2247:	cc                                              	int3
103a2248:	cc                                              	int3
103a2249:	cc                                              	int3
103a224a:	cc                                              	int3
103a224b:	cc                                              	int3
103a224c:	cc                                              	int3
103a224d:	cc                                              	int3
103a224e:	cc                                              	int3
103a224f:	cc                                              	int3
