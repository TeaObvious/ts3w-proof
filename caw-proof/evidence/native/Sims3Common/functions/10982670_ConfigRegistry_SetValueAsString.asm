# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10982670 (ConfigRegistry_SetValueAsString)
Paired Ghidra pseudocode: 10982670_ConfigRegistry_SetValueAsString.c
Window: [0x10982670, 0x109826a0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x109826a0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10982670: 8b 0d 30 7f cb 10 85 c9 74 1e 8b 44 24 0c 8b 54
10982680: 24 08 50 8b 44 24 08 52 50 e8 f2 84 a0 ff 84 c0
10982690: 74 06 b8 01 00 00 00 c3 33 c0 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
10982670 <.text+0x981670>:
10982670:	8b 0d 30 7f cb 10                               	mov    ecx,DWORD PTR ds:0x10cb7f30
10982676:	85 c9                                           	test   ecx,ecx
10982678:	74 1e                                           	je     0x10982698
1098267a:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
1098267e:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
10982682:	50                                              	push   eax
10982683:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10982687:	52                                              	push   edx
10982688:	50                                              	push   eax
10982689:	e8 f2 84 a0 ff                                  	call   0x1038ab80
1098268e:	84 c0                                           	test   al,al
10982690:	74 06                                           	je     0x10982698
10982692:	b8 01 00 00 00                                  	mov    eax,0x1
10982697:	c3                                              	ret
10982698:	33 c0                                           	xor    eax,eax
1098269a:	c3                                              	ret
1098269b:	cc                                              	int3
1098269c:	cc                                              	int3
1098269d:	cc                                              	int3
1098269e:	cc                                              	int3
1098269f:	cc                                              	int3
