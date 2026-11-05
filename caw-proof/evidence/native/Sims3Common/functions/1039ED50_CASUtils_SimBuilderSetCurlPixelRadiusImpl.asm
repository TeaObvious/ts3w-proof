# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ed50 (CASUtils_SimBuilderSetCurlPixelRadiusImpl)
Paired Ghidra pseudocode: 1039ED50_CASUtils_SimBuilderSetCurlPixelRadiusImpl.c
Window: [0x1039ed50, 0x1039ed90) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ed90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ed50: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ed60: 35 75 2b e8 b8 c3 1b 00 8b 10 8b c8 8b 82 cc 00
1039ed70: 00 00 56 ff d0 85 c0 74 15 f3 0f 10 44 24 0c 81
1039ed80: 48 1c 00 00 02 00 f3 0f 11 80 6c 02 00 00 5e c3

LINEAR DISASSEMBLY
1039ed50 <.text+0x39dd50>:
1039ed50:	56                                              	push   esi
1039ed51:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ed55:	8b c6                                           	mov    eax,esi
1039ed57:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ed5c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ed61:	75 2b                                           	jne    0x1039ed8e
1039ed63:	e8 b8 c3 1b 00                                  	call   0x1055b120
1039ed68:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ed6a:	8b c8                                           	mov    ecx,eax
1039ed6c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ed72:	56                                              	push   esi
1039ed73:	ff d0                                           	call   eax
1039ed75:	85 c0                                           	test   eax,eax
1039ed77:	74 15                                           	je     0x1039ed8e
1039ed79:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1039ed7f:	81 48 1c 00 00 02 00                            	or     DWORD PTR [eax+0x1c],0x20000
1039ed86:	f3 0f 11 80 6c 02 00 00                         	movss  DWORD PTR [eax+0x26c],xmm0
1039ed8e:	5e                                              	pop    esi
1039ed8f:	c3                                              	ret
