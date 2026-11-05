# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1039ef00 (CASUtils_SimOutfitSetNumCurlsImpl)
Paired Ghidra pseudocode: 1039EF00_CASUtils_SimOutfitSetNumCurlsImpl.c
Window: [0x1039ef00, 0x1039ef40) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x1039ef40
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1039ef00: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
1039ef10: 35 75 21 e8 08 c2 1b 00 8b 10 8b c8 8b 82 cc 00
1039ef20: 00 00 56 ff d0 85 c0 74 0b f3 0f 10 44 24 0c f3
1039ef30: 0f 11 40 7c 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
1039ef00 <.text+0x39df00>:
1039ef00:	56                                              	push   esi
1039ef01:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
1039ef05:	8b c6                                           	mov    eax,esi
1039ef07:	25 00 00 00 ff                                  	and    eax,0xff000000
1039ef0c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
1039ef11:	75 21                                           	jne    0x1039ef34
1039ef13:	e8 08 c2 1b 00                                  	call   0x1055b120
1039ef18:	8b 10                                           	mov    edx,DWORD PTR [eax]
1039ef1a:	8b c8                                           	mov    ecx,eax
1039ef1c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
1039ef22:	56                                              	push   esi
1039ef23:	ff d0                                           	call   eax
1039ef25:	85 c0                                           	test   eax,eax
1039ef27:	74 0b                                           	je     0x1039ef34
1039ef29:	f3 0f 10 44 24 0c                               	movss  xmm0,DWORD PTR [esp+0xc]
1039ef2f:	f3 0f 11 40 7c                                  	movss  DWORD PTR [eax+0x7c],xmm0
1039ef34:	5e                                              	pop    esi
1039ef35:	c3                                              	ret
1039ef36:	cc                                              	int3
1039ef37:	cc                                              	int3
1039ef38:	cc                                              	int3
1039ef39:	cc                                              	int3
1039ef3a:	cc                                              	int3
1039ef3b:	cc                                              	int3
1039ef3c:	cc                                              	int3
1039ef3d:	cc                                              	int3
1039ef3e:	cc                                              	int3
1039ef3f:	cc                                              	int3
