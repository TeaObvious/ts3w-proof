# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10542d40 (Route_GetPathData)
Paired Ghidra pseudocode: 10542D40_Route_GetPathData.c
Window: [0x10542d40, 0x10542d80) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10542d80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10542d40: 8b 44 24 0c 8b 4c 24 08 83 ec 20 56 57 50 51 8d
10542d50: 54 24 10 52 e8 27 eb ff ff 8b f0 8b 44 24 38 83
10542d60: c4 0c b9 08 00 00 00 8b f8 f3 a5 5f 5e 83 c4 20
10542d70: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10542d40 <.text+0x541d40>:
10542d40:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10542d44:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10542d48:	83 ec 20                                        	sub    esp,0x20
10542d4b:	56                                              	push   esi
10542d4c:	57                                              	push   edi
10542d4d:	50                                              	push   eax
10542d4e:	51                                              	push   ecx
10542d4f:	8d 54 24 10                                     	lea    edx,[esp+0x10]
10542d53:	52                                              	push   edx
10542d54:	e8 27 eb ff ff                                  	call   0x10541880
10542d59:	8b f0                                           	mov    esi,eax
10542d5b:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
10542d5f:	83 c4 0c                                        	add    esp,0xc
10542d62:	b9 08 00 00 00                                  	mov    ecx,0x8
10542d67:	8b f8                                           	mov    edi,eax
10542d69:	f3 a5                                           	rep movs DWORD PTR es:[edi],DWORD PTR ds:[esi]
10542d6b:	5f                                              	pop    edi
10542d6c:	5e                                              	pop    esi
10542d6d:	83 c4 20                                        	add    esp,0x20
10542d70:	c3                                              	ret
10542d71:	cc                                              	int3
10542d72:	cc                                              	int3
10542d73:	cc                                              	int3
10542d74:	cc                                              	int3
10542d75:	cc                                              	int3
10542d76:	cc                                              	int3
10542d77:	cc                                              	int3
10542d78:	cc                                              	int3
10542d79:	cc                                              	int3
10542d7a:	cc                                              	int3
10542d7b:	cc                                              	int3
10542d7c:	cc                                              	int3
10542d7d:	cc                                              	int3
10542d7e:	cc                                              	int3
10542d7f:	cc                                              	int3
