# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995c60 (VisualProxyResourceWrap_Load)
Paired Ghidra pseudocode: 10995C60_VisualProxyResourceWrap_Load.c
Window: [0x10995c60, 0x10995ce0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995c60: 83 ec 10 8b 44 24 18 8b 4c 24 14 8b 54 24 1c 89
10995c70: 44 24 0c 8b 44 24 20 89 4c 24 08 89 14 24 89 44
10995c80: 24 04 c7 44 24 14 00 00 00 00 e8 41 f4 f4 ff 8b
10995c90: 10 8b 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 24
10995ca0: 51 8d 4c 24 14 51 8b c8 ff d2 84 c0 74 23 8b 4c
10995cb0: 24 14 85 c9 74 14 8b 01 8b 50 0c 68 af ba b8 b7
10995cc0: ff d2 85 c0 75 0d 8b 4c 24 14 8b 01 8b 50 04 ff
10995cd0: d2 33 c0 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10995c60 <.text+0x994c60>:
10995c60:	83 ec 10                                        	sub    esp,0x10
10995c63:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10995c67:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10995c6b:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
10995c6f:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10995c73:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
10995c77:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
10995c7b:	89 14 24                                        	mov    DWORD PTR [esp],edx
10995c7e:	89 44 24 04                                     	mov    DWORD PTR [esp+0x4],eax
10995c82:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
10995c8a:	e8 41 f4 f4 ff                                  	call   0x108e50d0
10995c8f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10995c91:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10995c94:	6a 00                                           	push   0x0
10995c96:	6a 00                                           	push   0x0
10995c98:	6a 00                                           	push   0x0
10995c9a:	6a 00                                           	push   0x0
10995c9c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10995ca0:	51                                              	push   ecx
10995ca1:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10995ca5:	51                                              	push   ecx
10995ca6:	8b c8                                           	mov    ecx,eax
10995ca8:	ff d2                                           	call   edx
10995caa:	84 c0                                           	test   al,al
10995cac:	74 23                                           	je     0x10995cd1
10995cae:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10995cb2:	85 c9                                           	test   ecx,ecx
10995cb4:	74 14                                           	je     0x10995cca
10995cb6:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10995cb8:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10995cbb:	68 af ba b8 b7                                  	push   0xb7b8baaf
10995cc0:	ff d2                                           	call   edx
10995cc2:	85 c0                                           	test   eax,eax
10995cc4:	75 0d                                           	jne    0x10995cd3
10995cc6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10995cca:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10995ccc:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10995ccf:	ff d2                                           	call   edx
10995cd1:	33 c0                                           	xor    eax,eax
10995cd3:	83 c4 10                                        	add    esp,0x10
10995cd6:	c3                                              	ret
10995cd7:	cc                                              	int3
10995cd8:	cc                                              	int3
10995cd9:	cc                                              	int3
10995cda:	cc                                              	int3
10995cdb:	cc                                              	int3
10995cdc:	cc                                              	int3
10995cdd:	cc                                              	int3
10995cde:	cc                                              	int3
10995cdf:	cc                                              	int3
