# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ed10 (CASUtils_SimBuilderSetNumCurlsImpl)
Paired Ghidra pseudocode: 1039ED10_CASUtils_SimBuilderSetNumCurlsImpl.c
Window: [0x1039ed10, 0x1039ed50) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ed50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ed10: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ed20: 35 75 2b e8 f8 c3 1b 00 8b 10 8b c8 8b 82 cc 00
1039ed30: 00 00 56 ff d0 85 c0 74 15 f3 0f 10 44 24 0c 81
1039ed40: 48 1c 00 00 02 00 f3 0f 11 80 68 02 00 00 5e c3

LINEAR DISASSEMBLY
1039ed10 <.text+0x39dd10>:
1039ed10:	56                                              	push   esi
1039ed11:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ed15:	8b c6                                           	mov    eax,esi
1039ed17:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ed1c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ed21:	75 2b                                           	jne    0x1039ed4e
1039ed23:	e8 f8 c3 1b 00                                  	call   0x1055b120
1039ed28:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ed2a:	8b c8                                           	mov    ecx,eax
1039ed2c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ed32:	56                                              	push   esi
1039ed33:	ff d0                                           	call   eax
1039ed35:	85 c0                                           	test   eax,eax
1039ed37:	74 15                                           	je     0x1039ed4e
1039ed39:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1039ed3f:	81 48 1c 00 00 02 00                            	or     DWORD PTR [eax+0x1c],0x20000
1039ed46:	f3 0f 11 80 68 02 00 00                         	movss  DWORD PTR [eax+0x268],xmm0
1039ed4e:	5e                                              	pop    esi
1039ed4f:	c3                                              	ret
