# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ff50 (CASUtils_SimBuilderApplyBoneDeltasImpl)
Paired Ghidra pseudocode: 1039FF50_CASUtils_SimBuilderApplyBoneDeltasImpl.c
Window: [0x1039ff50, 0x1039ff90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ff90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ff50: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ff60: 35 75 1e e8 b8 b1 1b 00 8b 10 8b c8 8b 82 cc 00
1039ff70: 00 00 56 ff d0 85 c0 74 08 8b c8 5e e9 1f c4 03
1039ff80: 00 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ff50 <.text+0x39ef50>:
1039ff50:	56                                              	push   esi
1039ff51:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ff55:	8b c6                                           	mov    eax,esi
1039ff57:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ff5c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ff61:	75 1e                                           	jne    0x1039ff81
1039ff63:	e8 b8 b1 1b 00                                  	call   0x1055b120
1039ff68:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ff6a:	8b c8                                           	mov    ecx,eax
1039ff6c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ff72:	56                                              	push   esi
1039ff73:	ff d0                                           	call   eax
1039ff75:	85 c0                                           	test   eax,eax
1039ff77:	74 08                                           	je     0x1039ff81
1039ff79:	8b c8                                           	mov    ecx,eax
1039ff7b:	5e                                              	pop    esi
1039ff7c:	e9 1f c4 03 00                                  	jmp    0x103dc3a0
1039ff81:	5e                                              	pop    esi
1039ff82:	c3                                              	ret
1039ff83:	cc                                              	int3
1039ff84:	cc                                              	int3
1039ff85:	cc                                              	int3
1039ff86:	cc                                              	int3
1039ff87:	cc                                              	int3
1039ff88:	cc                                              	int3
1039ff89:	cc                                              	int3
1039ff8a:	cc                                              	int3
1039ff8b:	cc                                              	int3
1039ff8c:	cc                                              	int3
1039ff8d:	cc                                              	int3
1039ff8e:	cc                                              	int3
1039ff8f:	cc                                              	int3
