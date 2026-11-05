# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10995c20 (VisualProxyResourceWrap_Create)
Paired Ghidra pseudocode: 10995C20_VisualProxyResourceWrap_Create.c
Window: [0x10995c20, 0x10995c60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10995c60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10995c20: 56 6a 00 6a 00 6a 00 6a 00 68 bc 79 b9 10 6a 68
10995c30: e8 7b 32 f8 ff 83 c4 18 85 c0 74 15 8b c8 e8 3d
10995c40: 88 d9 ff 8b f0 8b 06 8b 10 8b ce ff d2 8b c6 5e
10995c50: c3 33 f6 8b 06 8b 10 8b ce ff d2 8b c6 5e c3 cc

LINEAR DISASSEMBLY
10995c20 <.text+0x994c20>:
10995c20:	56                                              	push   esi
10995c21:	6a 00                                           	push   0x0
10995c23:	6a 00                                           	push   0x0
10995c25:	6a 00                                           	push   0x0
10995c27:	6a 00                                           	push   0x0
10995c29:	68 bc 79 b9 10                                  	push   0x10b979bc
10995c2e:	6a 68                                           	push   0x68
10995c30:	e8 7b 32 f8 ff                                  	call   0x10918eb0
10995c35:	83 c4 18                                        	add    esp,0x18
10995c38:	85 c0                                           	test   eax,eax
10995c3a:	74 15                                           	je     0x10995c51
10995c3c:	8b c8                                           	mov    ecx,eax
10995c3e:	e8 3d 88 d9 ff                                  	call   0x1072e480
10995c43:	8b f0                                           	mov    esi,eax
10995c45:	8b 06                                           	mov    eax,DWORD PTR [esi]
10995c47:	8b 10                                           	mov    edx,DWORD PTR [eax]
10995c49:	8b ce                                           	mov    ecx,esi
10995c4b:	ff d2                                           	call   edx
10995c4d:	8b c6                                           	mov    eax,esi
10995c4f:	5e                                              	pop    esi
10995c50:	c3                                              	ret
10995c51:	33 f6                                           	xor    esi,esi
10995c53:	8b 06                                           	mov    eax,DWORD PTR [esi]
10995c55:	8b 10                                           	mov    edx,DWORD PTR [eax]
10995c57:	8b ce                                           	mov    ecx,esi
10995c59:	ff d2                                           	call   edx
10995c5b:	8b c6                                           	mov    eax,esi
10995c5d:	5e                                              	pop    esi
10995c5e:	c3                                              	ret
10995c5f:	cc                                              	int3
