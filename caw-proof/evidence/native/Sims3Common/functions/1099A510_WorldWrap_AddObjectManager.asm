# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x1099a510 (WorldWrap_AddObjectManager)
Paired Ghidra pseudocode: 1099A510_WorldWrap_AddObjectManager.c
Window: [0x1099a510, 0x1099a560) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x1099a560
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
1099a510: 83 ec 18 8b 44 24 20 89 44 24 20 c7 04 24 e8 7b
1099a520: ab 10 33 c9 8d 54 24 04 87 0a 8b 44 24 1c 8d 4c
1099a530: 24 20 6a 00 89 4c 24 18 6a 01 8d 4c 24 08 c7 44
1099a540: 24 08 10 37 b3 10 89 44 24 14 c7 44 24 18 e0 a2
1099a550: 23 10 e8 39 28 c3 ff 83 c4 18 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
1099a510 <.text+0x999510>:
1099a510:	83 ec 18                                        	sub    esp,0x18
1099a513:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
1099a517:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
1099a51b:	c7 04 24 e8 7b ab 10                            	mov    DWORD PTR [esp],0x10ab7be8
1099a522:	33 c9                                           	xor    ecx,ecx
1099a524:	8d 54 24 04                                     	lea    edx,[esp+0x4]
1099a528:	87 0a                                           	xchg   DWORD PTR [edx],ecx
1099a52a:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
1099a52e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
1099a532:	6a 00                                           	push   0x0
1099a534:	89 4c 24 18                                     	mov    DWORD PTR [esp+0x18],ecx
1099a538:	6a 01                                           	push   0x1
1099a53a:	8d 4c 24 08                                     	lea    ecx,[esp+0x8]
1099a53e:	c7 44 24 08 10 37 b3 10                         	mov    DWORD PTR [esp+0x8],0x10b33710
1099a546:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
1099a54a:	c7 44 24 18 e0 a2 23 10                         	mov    DWORD PTR [esp+0x18],0x1023a2e0
1099a552:	e8 39 28 c3 ff                                  	call   0x105ccd90
1099a557:	83 c4 18                                        	add    esp,0x18
1099a55a:	c3                                              	ret
1099a55b:	cc                                              	int3
1099a55c:	cc                                              	int3
1099a55d:	cc                                              	int3
1099a55e:	cc                                              	int3
1099a55f:	cc                                              	int3
