# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6830 (ScriptCore.CASUtils::CASUtils_SimBuilderGetIsDirtyImpl)
Paired Ghidra pseudocode: 005A6830_ScriptCore_CASUtils_CASUtils_SimBuilderGetIsDirtyImpl.c
Window: [0x005a6830, 0x005a6870) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6870
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6830: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a6840: 35 75 22 e8 48 2b 1c 00 8b 10 8b c8 8b 82 cc 00
005a6850: 00 00 56 ff d0 85 c0 74 0c 33 c9 39 48 1c 5e 0f
005a6860: 95 c1 8a c1 c3 32 c0 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6830 <.text+0x1a5830>:
  5a6830:	56                                              	push   esi
  5a6831:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a6835:	8b c6                                           	mov    eax,esi
  5a6837:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a683c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6841:	75 22                                           	jne    0x5a6865
  5a6843:	e8 48 2b 1c 00                                  	call   0x769390
  5a6848:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a684a:	8b c8                                           	mov    ecx,eax
  5a684c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6852:	56                                              	push   esi
  5a6853:	ff d0                                           	call   eax
  5a6855:	85 c0                                           	test   eax,eax
  5a6857:	74 0c                                           	je     0x5a6865
  5a6859:	33 c9                                           	xor    ecx,ecx
  5a685b:	39 48 1c                                        	cmp    DWORD PTR [eax+0x1c],ecx
  5a685e:	5e                                              	pop    esi
  5a685f:	0f 95 c1                                        	setne  cl
  5a6862:	8a c1                                           	mov    al,cl
  5a6864:	c3                                              	ret
  5a6865:	32 c0                                           	xor    al,al
  5a6867:	5e                                              	pop    esi
  5a6868:	c3                                              	ret
  5a6869:	cc                                              	int3
  5a686a:	cc                                              	int3
  5a686b:	cc                                              	int3
  5a686c:	cc                                              	int3
  5a686d:	cc                                              	int3
  5a686e:	cc                                              	int3
  5a686f:	cc                                              	int3
