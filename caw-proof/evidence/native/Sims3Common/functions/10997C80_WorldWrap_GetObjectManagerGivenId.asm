# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10997c80 (WorldWrap_GetObjectManagerGivenId)
Paired Ghidra pseudocode: 10997C80_WorldWrap_GetObjectManagerGivenId.c
Window: [0x10997c80, 0x10997cc0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10997cc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10997c80: 8b 4c 24 04 85 c9 74 35 8b 44 24 0c 8b 54 24 08
10997c90: 56 6a 00 50 52 e8 06 cf 89 ff 8b f0 85 f6 75 0a
10997ca0: 8b 44 24 14 89 30 33 c0 5e c3 8b 16 8b 42 40 8b
10997cb0: ce ff d0 8b 4c 24 14 89 01 8b c6 5e c3 33 c0 c3

LINEAR DISASSEMBLY
10997c80 <.text+0x996c80>:
10997c80:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
10997c84:	85 c9                                           	test   ecx,ecx
10997c86:	74 35                                           	je     0x10997cbd
10997c88:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
10997c8c:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10997c90:	56                                              	push   esi
10997c91:	6a 00                                           	push   0x0
10997c93:	50                                              	push   eax
10997c94:	52                                              	push   edx
10997c95:	e8 06 cf 89 ff                                  	call   0x10234ba0
10997c9a:	8b f0                                           	mov    esi,eax
10997c9c:	85 f6                                           	test   esi,esi
10997c9e:	75 0a                                           	jne    0x10997caa
10997ca0:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
10997ca4:	89 30                                           	mov    DWORD PTR [eax],esi
10997ca6:	33 c0                                           	xor    eax,eax
10997ca8:	5e                                              	pop    esi
10997ca9:	c3                                              	ret
10997caa:	8b 16                                           	mov    edx,DWORD PTR [esi]
10997cac:	8b 42 40                                        	mov    eax,DWORD PTR [edx+0x40]
10997caf:	8b ce                                           	mov    ecx,esi
10997cb1:	ff d0                                           	call   eax
10997cb3:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
10997cb7:	89 01                                           	mov    DWORD PTR [ecx],eax
10997cb9:	8b c6                                           	mov    eax,esi
10997cbb:	5e                                              	pop    esi
10997cbc:	c3                                              	ret
10997cbd:	33 c0                                           	xor    eax,eax
10997cbf:	c3                                              	ret
