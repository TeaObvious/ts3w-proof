# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579250 (World_ObjectDesigner_EndDesigningImpl)
Paired Ghidra pseudocode: 10579250_World_ObjectDesigner_EndDesigningImpl.c
Window: [0x10579250, 0x10579280) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579280
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579250: e8 cb 1e fe ff 8b 4c 24 08 8b 10 8b 52 58 51 8b
10579260: c8 ff d2 50 8b 44 24 08 50 e8 f2 f1 b7 ff 8b c8
10579270: e8 cb 29 b8 ff c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10579250 <.text+0x578250>:
10579250:	e8 cb 1e fe ff                                  	call   0x1055b120
10579255:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
10579259:	8b 10                                           	mov    edx,DWORD PTR [eax]
1057925b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
1057925e:	51                                              	push   ecx
1057925f:	8b c8                                           	mov    ecx,eax
10579261:	ff d2                                           	call   edx
10579263:	50                                              	push   eax
10579264:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
10579268:	50                                              	push   eax
10579269:	e8 f2 f1 b7 ff                                  	call   0x100f8460
1057926e:	8b c8                                           	mov    ecx,eax
10579270:	e8 cb 29 b8 ff                                  	call   0x100fbc40
10579275:	c3                                              	ret
10579276:	cc                                              	int3
10579277:	cc                                              	int3
10579278:	cc                                              	int3
10579279:	cc                                              	int3
1057927a:	cc                                              	int3
1057927b:	cc                                              	int3
1057927c:	cc                                              	int3
1057927d:	cc                                              	int3
1057927e:	cc                                              	int3
1057927f:	cc                                              	int3
