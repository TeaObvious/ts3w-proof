# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10993a40 (TextureCompositorResourceWrap_Create)
Paired Ghidra pseudocode: 10993A40_TextureCompositorResourceWrap_Create.c
Window: [0x10993a40, 0x10993ac0) (128 bytes; stop exclusive)
Next defined Ghidra entry: 0x10993ac0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10993a40: 83 ec 10 8b 44 24 18 8b 4c 24 1c 8b 54 24 20 89
10993a50: 44 24 0c 8b 44 24 14 89 0c 24 89 54 24 04 89 44
10993a60: 24 08 c7 44 24 14 00 00 00 00 e8 61 16 f5 ff 8b
10993a70: 10 8b 52 0c 6a 00 6a 00 6a 00 6a 00 8d 4c 24 24
10993a80: 51 8d 4c 24 14 51 8b c8 ff d2 84 c0 74 23 8b 4c
10993a90: 24 14 85 c9 74 14 8b 01 8b 50 0c 68 d6 0b 42 03
10993aa0: ff d2 85 c0 75 0d 8b 4c 24 14 8b 01 8b 50 04 ff
10993ab0: d2 33 c0 83 c4 10 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10993a40 <.text+0x992a40>:
10993a40:	83 ec 10                                        	sub    esp,0x10
10993a43:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
10993a47:	8b 4c 24 1c                                     	mov    ecx,DWORD PTR [esp+0x1c]
10993a4b:	8b 54 24 20                                     	mov    edx,DWORD PTR [esp+0x20]
10993a4f:	89 44 24 0c                                     	mov    DWORD PTR [esp+0xc],eax
10993a53:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10993a57:	89 0c 24                                        	mov    DWORD PTR [esp],ecx
10993a5a:	89 54 24 04                                     	mov    DWORD PTR [esp+0x4],edx
10993a5e:	89 44 24 08                                     	mov    DWORD PTR [esp+0x8],eax
10993a62:	c7 44 24 14 00 00 00 00                         	mov    DWORD PTR [esp+0x14],0x0
10993a6a:	e8 61 16 f5 ff                                  	call   0x108e50d0
10993a6f:	8b 10                                           	mov    edx,DWORD PTR [eax]
10993a71:	8b 52 0c                                        	mov    edx,DWORD PTR [edx+0xc]
10993a74:	6a 00                                           	push   0x0
10993a76:	6a 00                                           	push   0x0
10993a78:	6a 00                                           	push   0x0
10993a7a:	6a 00                                           	push   0x0
10993a7c:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
10993a80:	51                                              	push   ecx
10993a81:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
10993a85:	51                                              	push   ecx
10993a86:	8b c8                                           	mov    ecx,eax
10993a88:	ff d2                                           	call   edx
10993a8a:	84 c0                                           	test   al,al
10993a8c:	74 23                                           	je     0x10993ab1
10993a8e:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10993a92:	85 c9                                           	test   ecx,ecx
10993a94:	74 14                                           	je     0x10993aaa
10993a96:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10993a98:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10993a9b:	68 d6 0b 42 03                                  	push   0x3420bd6
10993aa0:	ff d2                                           	call   edx
10993aa2:	85 c0                                           	test   eax,eax
10993aa4:	75 0d                                           	jne    0x10993ab3
10993aa6:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10993aaa:	8b 01                                           	mov    eax,DWORD PTR [ecx]
10993aac:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
10993aaf:	ff d2                                           	call   edx
10993ab1:	33 c0                                           	xor    eax,eax
10993ab3:	83 c4 10                                        	add    esp,0x10
10993ab6:	c3                                              	ret
10993ab7:	cc                                              	int3
10993ab8:	cc                                              	int3
10993ab9:	cc                                              	int3
10993aba:	cc                                              	int3
10993abb:	cc                                              	int3
10993abc:	cc                                              	int3
10993abd:	cc                                              	int3
10993abe:	cc                                              	int3
10993abf:	cc                                              	int3
