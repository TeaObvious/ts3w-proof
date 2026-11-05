# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039fd20 (CASUtils_SimBuilderGetUseCompressionImpl)
Paired Ghidra pseudocode: 1039FD20_CASUtils_SimBuilderGetUseCompressionImpl.c
Window: [0x1039fd20, 0x1039fd60) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039fd60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039fd20: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039fd30: 35 75 1b e8 e8 b3 1b 00 8b 10 8b c8 8b 82 cc 00
1039fd40: 00 00 56 ff d0 85 c0 74 05 8a 40 69 5e c3 32 c0
1039fd50: 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039fd20 <.text+0x39ed20>:
1039fd20:	56                                              	push   esi
1039fd21:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039fd25:	8b c6                                           	mov    eax,esi
1039fd27:	25 00 00 00 ff                                  	and    eax,0xff000000
1039fd2c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039fd31:	75 1b                                           	jne    0x1039fd4e
1039fd33:	e8 e8 b3 1b 00                                  	call   0x1055b120
1039fd38:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039fd3a:	8b c8                                           	mov    ecx,eax
1039fd3c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039fd42:	56                                              	push   esi
1039fd43:	ff d0                                           	call   eax
1039fd45:	85 c0                                           	test   eax,eax
1039fd47:	74 05                                           	je     0x1039fd4e
1039fd49:	8a 40 69                                        	mov    al,BYTE PTR [eax+0x69]
1039fd4c:	5e                                              	pop    esi
1039fd4d:	c3                                              	ret
1039fd4e:	32 c0                                           	xor    al,al
1039fd50:	5e                                              	pop    esi
1039fd51:	c3                                              	ret
1039fd52:	cc                                              	int3
1039fd53:	cc                                              	int3
1039fd54:	cc                                              	int3
1039fd55:	cc                                              	int3
1039fd56:	cc                                              	int3
1039fd57:	cc                                              	int3
1039fd58:	cc                                              	int3
1039fd59:	cc                                              	int3
1039fd5a:	cc                                              	int3
1039fd5b:	cc                                              	int3
1039fd5c:	cc                                              	int3
1039fd5d:	cc                                              	int3
1039fd5e:	cc                                              	int3
1039fd5f:	cc                                              	int3
