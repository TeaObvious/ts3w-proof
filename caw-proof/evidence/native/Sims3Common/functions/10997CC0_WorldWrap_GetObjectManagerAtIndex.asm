# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997cc0 (WorldWrap_GetObjectManagerAtIndex)
Paired Ghidra pseudocode: 10997CC0_WorldWrap_GetObjectManagerAtIndex.c
Window: [0x10997cc0, 0x10997d00) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997d00
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997cc0: 8b 4c 24 04 85 c9 74 2c 8b 44 24 08 56 50 e8 ad
10997cd0: cf 89 ff 8b f0 85 f6 75 08 8b 4c 24 10 89 01 5e
10997ce0: c3 8b 16 8b 42 40 8b ce ff d0 8b 4c 24 10 89 01
10997cf0: 8b c6 5e c3 33 c0 c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10997cc0 <.text+0x996cc0>:
10997cc0:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997cc4:	85 c9                                           	test   ecx,ecx
10997cc6:	74 2c                                           	je     0x10997cf4
10997cc8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10997ccc:	56                                              	push   esi
10997ccd:	50                                              	push   eax
10997cce:	e8 ad cf 89 ff                                  	call   0x10234c80
10997cd3:	8b f0                                           	mov    esi,eax
10997cd5:	85 f6                                           	test   esi,esi
10997cd7:	75 08                                           	jne    0x10997ce1
10997cd9:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10997cdd:	89 01                                           	mov    DWORD PTR [ecx],eax
10997cdf:	5e                                              	pop    esi
10997ce0:	c3                                              	ret
10997ce1:	8b 16                                           	mov    edx,DWORD PTR [esi]
10997ce3:	8b 42 40                                        	mov    eax,DWORD PTR [edx+0x40]
10997ce6:	8b ce                                           	mov    ecx,esi
10997ce8:	ff d0                                           	call   eax
10997cea:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
10997cee:	89 01                                           	mov    DWORD PTR [ecx],eax
10997cf0:	8b c6                                           	mov    eax,esi
10997cf2:	5e                                              	pop    esi
10997cf3:	c3                                              	ret
10997cf4:	33 c0                                           	xor    eax,eax
10997cf6:	c3                                              	ret
10997cf7:	cc                                              	int3
10997cf8:	cc                                              	int3
10997cf9:	cc                                              	int3
10997cfa:	cc                                              	int3
10997cfb:	cc                                              	int3
10997cfc:	cc                                              	int3
10997cfd:	cc                                              	int3
10997cfe:	cc                                              	int3
10997cff:	cc                                              	int3
