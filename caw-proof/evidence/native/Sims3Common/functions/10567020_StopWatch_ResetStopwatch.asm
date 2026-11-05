# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10567020 (StopWatch_ResetStopwatch)
Paired Ghidra pseudocode: 10567020_StopWatch_ResetStopwatch.c
Window: [0x10567020, 0x10567060) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x10567060
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10567020: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
10567030: 10 75 23 e8 e8 40 ff ff 8b 10 8b c8 8b 82 cc 00
10567040: 00 00 56 ff d0 33 c9 3b c1 74 0b 89 08 89 48 04
10567050: 89 48 08 89 48 0c 5e c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10567020 <.text+0x566020>:
10567020:	56                                              	push   esi
10567021:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
10567025:	8b c6                                           	mov    eax,esi
10567027:	25 00 00 00 ff                                  	and    eax,0xff000000
1056702c:	3d 00 00 00 10                                  	cmp    eax,0x10000000
10567031:	75 23                                           	jne    0x10567056
10567033:	e8 e8 40 ff ff                                  	call   0x1055b120
10567038:	8b 10                                           	mov    edx,DWORD PTR [eax]
1056703a:	8b c8                                           	mov    ecx,eax
1056703c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
10567042:	56                                              	push   esi
10567043:	ff d0                                           	call   eax
10567045:	33 c9                                           	xor    ecx,ecx
10567047:	3b c1                                           	cmp    eax,ecx
10567049:	74 0b                                           	je     0x10567056
1056704b:	89 08                                           	mov    DWORD PTR [eax],ecx
1056704d:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
10567050:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
10567053:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
10567056:	5e                                              	pop    esi
10567057:	c3                                              	ret
10567058:	cc                                              	int3
10567059:	cc                                              	int3
1056705a:	cc                                              	int3
1056705b:	cc                                              	int3
1056705c:	cc                                              	int3
1056705d:	cc                                              	int3
1056705e:	cc                                              	int3
1056705f:	cc                                              	int3
