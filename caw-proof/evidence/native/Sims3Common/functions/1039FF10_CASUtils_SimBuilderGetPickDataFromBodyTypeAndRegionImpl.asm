# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ff10 (CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl)
Paired Ghidra pseudocode: 1039FF10_CASUtils_SimBuilderGetPickDataFromBodyTypeAndRegionImpl.c
Window: [0x1039ff10, 0x1039ff50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ff50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ff10: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ff20: 35 75 29 e8 f8 b1 1b 00 8b 10 8b c8 8b 82 cc 00
1039ff30: 00 00 56 ff d0 85 c0 74 13 8b 4c 24 10 8b 54 24
1039ff40: 0c 51 52 8b c8 e8 56 b5 03 00 5e c3 33 c0 5e c3

LINEAR DISASSEMBLY
1039ff10 <.text+0x39ef10>:
1039ff10:	56                                              	push   esi
1039ff11:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ff15:	8b c6                                           	mov    eax,esi
1039ff17:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ff1c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ff21:	75 29                                           	jne    0x1039ff4c
1039ff23:	e8 f8 b1 1b 00                                  	call   0x1055b120
1039ff28:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ff2a:	8b c8                                           	mov    ecx,eax
1039ff2c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ff32:	56                                              	push   esi
1039ff33:	ff d0                                           	call   eax
1039ff35:	85 c0                                           	test   eax,eax
1039ff37:	74 13                                           	je     0x1039ff4c
1039ff39:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
1039ff3d:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
1039ff41:	51                                              	push   ecx
1039ff42:	52                                              	push   edx
1039ff43:	8b c8                                           	mov    ecx,eax
1039ff45:	e8 56 b5 03 00                                  	call   0x103db4a0
1039ff4a:	5e                                              	pop    esi
1039ff4b:	c3                                              	ret
1039ff4c:	33 c0                                           	xor    eax,eax
1039ff4e:	5e                                              	pop    esi
1039ff4f:	c3                                              	ret
