# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039fd60 (CASUtils_SimBuilderSetWaitForTexturesImpl)
Paired Ghidra pseudocode: 1039FD60_CASUtils_SimBuilderSetWaitForTexturesImpl.c
Window: [0x1039fd60, 0x1039fda0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039fda0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039fd60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039fd70: 35 75 1d e8 a8 b3 1b 00 8b 10 8b c8 8b 82 cc 00
1039fd80: 00 00 56 ff d0 85 c0 74 07 8a 4c 24 0c 88 48 6a
1039fd90: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039fd60 <.text+0x39ed60>:
1039fd60:	56                                              	push   esi
1039fd61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039fd65:	8b c6                                           	mov    eax,esi
1039fd67:	25 00 00 00 ff                                  	and    eax,0xff000000
1039fd6c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039fd71:	75 1d                                           	jne    0x1039fd90
1039fd73:	e8 a8 b3 1b 00                                  	call   0x1055b120
1039fd78:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039fd7a:	8b c8                                           	mov    ecx,eax
1039fd7c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039fd82:	56                                              	push   esi
1039fd83:	ff d0                                           	call   eax
1039fd85:	85 c0                                           	test   eax,eax
1039fd87:	74 07                                           	je     0x1039fd90
1039fd89:	8a 4c 24 0c                                     	mov    cl,BYTE PTR [esp+0xc]
1039fd8d:	88 48 6a                                        	mov    BYTE PTR [eax+0x6a],cl
1039fd90:	5e                                              	pop    esi
1039fd91:	c3                                              	ret
1039fd92:	cc                                              	int3
1039fd93:	cc                                              	int3
1039fd94:	cc                                              	int3
1039fd95:	cc                                              	int3
1039fd96:	cc                                              	int3
1039fd97:	cc                                              	int3
1039fd98:	cc                                              	int3
1039fd99:	cc                                              	int3
1039fd9a:	cc                                              	int3
1039fd9b:	cc                                              	int3
1039fd9c:	cc                                              	int3
1039fd9d:	cc                                              	int3
1039fd9e:	cc                                              	int3
1039fd9f:	cc                                              	int3
