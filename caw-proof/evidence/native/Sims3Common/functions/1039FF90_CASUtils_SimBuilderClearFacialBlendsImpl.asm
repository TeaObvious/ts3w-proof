# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ff90 (CASUtils_SimBuilderClearFacialBlendsImpl)
Paired Ghidra pseudocode: 1039FF90_CASUtils_SimBuilderClearFacialBlendsImpl.c
Window: [0x1039ff90, 0x1039ffd0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ffd0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ff90: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ffa0: 35 75 1e e8 78 b1 1b 00 8b 10 8b c8 8b 82 cc 00
1039ffb0: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 7f e6 03
1039ffc0: 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ff90 <.text+0x39ef90>:
1039ff90:	56                                              	push   esi
1039ff91:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ff95:	8b c6                                           	mov    eax,esi
1039ff97:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ff9c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ffa1:	75 1e                                           	jne    0x1039ffc1
1039ffa3:	e8 78 b1 1b 00                                  	call   0x1055b120
1039ffa8:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ffaa:	8b c8                                           	mov    ecx,eax
1039ffac:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ffb2:	56                                              	push   esi
1039ffb3:	ff d0                                           	call   eax
1039ffb5:	85 c0                                           	test   eax,eax
1039ffb7:	74 08                                           	je     0x1039ffc1
1039ffb9:	8b c8                                           	mov    ecx,eax
1039ffbb:	5e                                              	pop    esi
1039ffbc:	e9 7f e6 03 00                                  	jmp    0x103de640
1039ffc1:	5e                                              	pop    esi
1039ffc2:	c3                                              	ret
1039ffc3:	cc                                              	int3
1039ffc4:	cc                                              	int3
1039ffc5:	cc                                              	int3
1039ffc6:	cc                                              	int3
1039ffc7:	cc                                              	int3
1039ffc8:	cc                                              	int3
1039ffc9:	cc                                              	int3
1039ffca:	cc                                              	int3
1039ffcb:	cc                                              	int3
1039ffcc:	cc                                              	int3
1039ffcd:	cc                                              	int3
1039ffce:	cc                                              	int3
1039ffcf:	cc                                              	int3
