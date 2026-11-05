# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1097ee40 (CASPartDataResourceWrap_Load)
Paired Ghidra pseudocode: 1097EE40_CASPartDataResourceWrap_Load.c
Window: [0x1097ee40, 0x1097eec0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x1097eec0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1097ee40: 83 ec 10 8b 44 24 18 8b 4c 24 14 8b 54 24 1c 89
1097ee50: 44 24 0c 8b 44 24 20 89 4c 24 08 89 14 24 89 44
1097ee60: 24 04 c7 44 24 14 00 00 00 00 e8 61 62 f6 ff 8b
1097ee70: 10 8b 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 24
1097ee80: 51 8d 4c 24 14 51 8b c8 ff d2 84 c0 74 23 8b 4c
1097ee90: 24 14 85 c9 74 14 8b 01 8b 50 0c 68 7b 77 4c 03
1097eea0: ff d2 85 c0 75 0d 8b 4c 24 14 8b 01 8b 50 04 ff
1097eeb0: d2 33 c0 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1097ee40 <.text+0x97de40>:
1097ee40:	83 ec 10                                        	sub    esp,0x10
1097ee43:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
1097ee47:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097ee4b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
1097ee4f:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
1097ee53:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1097ee57:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
1097ee5b:	89 14 24                                        	mov    DWORD PTR [esp],edx
1097ee5e:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
1097ee62:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
1097ee6a:	e8 61 62 f6 ff                                  	call   0x108e50d0
1097ee6f:	8b 10                                           	mov    edx,DWORD PTR [eax]
1097ee71:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
1097ee74:	6a 00                                           	push   0x0
1097ee76:	6a 00                                           	push   0x0
1097ee78:	6a 00                                           	push   0x0
1097ee7a:	6a 00                                           	push   0x0
1097ee7c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
1097ee80:	51                                              	push   ecx
1097ee81:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
1097ee85:	51                                              	push   ecx
1097ee86:	8b c8                                           	mov    ecx,eax
1097ee88:	ff d2                                           	call   edx
1097ee8a:	84 c0                                           	test   al,al
1097ee8c:	74 23                                           	je     0x1097eeb1
1097ee8e:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097ee92:	85 c9                                           	test   ecx,ecx
1097ee94:	74 14                                           	je     0x1097eeaa
1097ee96:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097ee98:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
1097ee9b:	68 7b 77 4c 03                                  	push   0x34c777b
1097eea0:	ff d2                                           	call   edx
1097eea2:	85 c0                                           	test   eax,eax
1097eea4:	75 0d                                           	jne    0x1097eeb3
1097eea6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
1097eeaa:	8b 01                                           	mov    eax,DWORD PTR [ecx]
1097eeac:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
1097eeaf:	ff d2                                           	call   edx
1097eeb1:	33 c0                                           	xor    eax,eax
1097eeb3:	83 c4 10                                        	add    esp,0x10
1097eeb6:	c3                                              	ret
1097eeb7:	cc                                              	int3
1097eeb8:	cc                                              	int3
1097eeb9:	cc                                              	int3
1097eeba:	cc                                              	int3
1097eebb:	cc                                              	int3
1097eebc:	cc                                              	int3
1097eebd:	cc                                              	int3
1097eebe:	cc                                              	int3
1097eebf:	cc                                              	int3
