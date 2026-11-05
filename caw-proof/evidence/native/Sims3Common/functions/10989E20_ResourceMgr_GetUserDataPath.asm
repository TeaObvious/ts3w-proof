# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10989e20 (ResourceMgr_GetUserDataPath)
Paired Ghidra pseudocode: 10989E20_ResourceMgr_GetUserDataPath.c
Window: [0x10989e20, 0x10989ef0) (208 bytes; stop exclusive)
Next defined Ghidra entry: 0x10989ef0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10989e20: e8 9b 7b b9 ff 85 c0 74 09 8b 10 8b c8 8b 42 24
10989e30: ff e0 33 c0 c3 cc cc cc cc cc cc cc cc cc cc cc
10989e40: 8b 44 24 04 8b 50 0c 33 c0 3b 51 04 0f 94 c0 c2
10989e50: 04 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc
10989e60: 8b 44 24 04 8b 50 08 3b 51 04 75 10 8b 40 0c 3b
10989e70: 41 08 75 08 b8 01 00 00 00 c2 04 00 33 c0 c2 04
10989e80: 00 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc
10989e90: 8b 44 24 04 8b 50 08 3b 51 04 75 17 8b 10 3b 51
10989ea0: 08 75 10 8b 40 04 3b 41 0c 75 08 b8 01 00 00 00
10989eb0: c2 04 00 33 c0 c2 04 00 cc cc cc cc cc cc cc cc
10989ec0: 8b 44 24 04 8b 50 0c 3b 51 04 75 17 8b 10 3b 51
10989ed0: 08 75 10 8b 40 04 3b 41 0c 75 08 b8 01 00 00 00
10989ee0: c2 04 00 33 c0 c2 04 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10989e20 <.text+0x988e20>:
10989e20:	e8 9b 7b b9 ff                                  	call   0x105219c0
10989e25:	85 c0                                           	test   eax,eax
10989e27:	74 09                                           	je     0x10989e32
10989e29:	8b 10                                           	mov    edx,DWORD PTR [eax]
10989e2b:	8b c8                                           	mov    ecx,eax
10989e2d:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
10989e30:	ff e0                                           	jmp    eax
10989e32:	33 c0                                           	xor    eax,eax
10989e34:	c3                                              	ret
10989e35:	cc                                              	int3
10989e36:	cc                                              	int3
10989e37:	cc                                              	int3
10989e38:	cc                                              	int3
10989e39:	cc                                              	int3
10989e3a:	cc                                              	int3
10989e3b:	cc                                              	int3
10989e3c:	cc                                              	int3
10989e3d:	cc                                              	int3
10989e3e:	cc                                              	int3
10989e3f:	cc                                              	int3
10989e40:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10989e44:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10989e47:	33 c0                                           	xor    eax,eax
10989e49:	3b 51 04                                        	cmp    edx,DWORD PTR [ecx+0x4]
10989e4c:	0f 94 c0                                        	sete   al
10989e4f:	c2 04 00                                        	ret    0x4
10989e52:	cc                                              	int3
10989e53:	cc                                              	int3
10989e54:	cc                                              	int3
10989e55:	cc                                              	int3
10989e56:	cc                                              	int3
10989e57:	cc                                              	int3
10989e58:	cc                                              	int3
10989e59:	cc                                              	int3
10989e5a:	cc                                              	int3
10989e5b:	cc                                              	int3
10989e5c:	cc                                              	int3
10989e5d:	cc                                              	int3
10989e5e:	cc                                              	int3
10989e5f:	cc                                              	int3
10989e60:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10989e64:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10989e67:	3b 51 04                                        	cmp    edx,DWORD PTR [ecx+0x4]
10989e6a:	75 10                                           	jne    0x10989e7c
10989e6c:	8b 40 0c                                        	mov    eax,DWORD PTR [eax+0xc]
10989e6f:	3b 41 08                                        	cmp    eax,DWORD PTR [ecx+0x8]
10989e72:	75 08                                           	jne    0x10989e7c
10989e74:	b8 01 00 00 00                                  	mov    eax,0x1
10989e79:	c2 04 00                                        	ret    0x4
10989e7c:	33 c0                                           	xor    eax,eax
10989e7e:	c2 04 00                                        	ret    0x4
10989e81:	cc                                              	int3
10989e82:	cc                                              	int3
10989e83:	cc                                              	int3
10989e84:	cc                                              	int3
10989e85:	cc                                              	int3
10989e86:	cc                                              	int3
10989e87:	cc                                              	int3
10989e88:	cc                                              	int3
10989e89:	cc                                              	int3
10989e8a:	cc                                              	int3
10989e8b:	cc                                              	int3
10989e8c:	cc                                              	int3
10989e8d:	cc                                              	int3
10989e8e:	cc                                              	int3
10989e8f:	cc                                              	int3
10989e90:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10989e94:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
10989e97:	3b 51 04                                        	cmp    edx,DWORD PTR [ecx+0x4]
10989e9a:	75 17                                           	jne    0x10989eb3
10989e9c:	8b 10                                           	mov    edx,DWORD PTR [eax]
10989e9e:	3b 51 08                                        	cmp    edx,DWORD PTR [ecx+0x8]
10989ea1:	75 10                                           	jne    0x10989eb3
10989ea3:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
10989ea6:	3b 41 0c                                        	cmp    eax,DWORD PTR [ecx+0xc]
10989ea9:	75 08                                           	jne    0x10989eb3
10989eab:	b8 01 00 00 00                                  	mov    eax,0x1
10989eb0:	c2 04 00                                        	ret    0x4
10989eb3:	33 c0                                           	xor    eax,eax
10989eb5:	c2 04 00                                        	ret    0x4
10989eb8:	cc                                              	int3
10989eb9:	cc                                              	int3
10989eba:	cc                                              	int3
10989ebb:	cc                                              	int3
10989ebc:	cc                                              	int3
10989ebd:	cc                                              	int3
10989ebe:	cc                                              	int3
10989ebf:	cc                                              	int3
10989ec0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10989ec4:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
10989ec7:	3b 51 04                                        	cmp    edx,DWORD PTR [ecx+0x4]
10989eca:	75 17                                           	jne    0x10989ee3
10989ecc:	8b 10                                           	mov    edx,DWORD PTR [eax]
10989ece:	3b 51 08                                        	cmp    edx,DWORD PTR [ecx+0x8]
10989ed1:	75 10                                           	jne    0x10989ee3
10989ed3:	8b 40 04                                        	mov    eax,DWORD PTR [eax+0x4]
10989ed6:	3b 41 0c                                        	cmp    eax,DWORD PTR [ecx+0xc]
10989ed9:	75 08                                           	jne    0x10989ee3
10989edb:	b8 01 00 00 00                                  	mov    eax,0x1
10989ee0:	c2 04 00                                        	ret    0x4
10989ee3:	33 c0                                           	xor    eax,eax
10989ee5:	c2 04 00                                        	ret    0x4
10989ee8:	cc                                              	int3
10989ee9:	cc                                              	int3
10989eea:	cc                                              	int3
10989eeb:	cc                                              	int3
10989eec:	cc                                              	int3
10989eed:	cc                                              	int3
10989eee:	cc                                              	int3
10989eef:	cc                                              	int3
