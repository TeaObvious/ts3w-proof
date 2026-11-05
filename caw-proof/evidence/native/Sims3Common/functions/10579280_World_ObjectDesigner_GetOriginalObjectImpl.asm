# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10579280 (World_ObjectDesigner_GetOriginalObjectImpl)
Paired Ghidra pseudocode: 10579280_World_ObjectDesigner_GetOriginalObjectImpl.c
Window: [0x10579280, 0x10579290) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10579290
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10579280: e8 db f1 b7 ff 8b c8 8b 41 68 8b 51 6c c3 cc cc

LINEAR DISASSEMBLY
10579280 <.text+0x578280>:
10579280:	e8 db f1 b7 ff                                  	call   0x100f8460
10579285:	8b c8                                           	mov    ecx,eax
10579287:	8b 41 68                                        	mov    eax,DWORD PTR [ecx+0x68]
1057928a:	8b 51 6c                                        	mov    edx,DWORD PTR [ecx+0x6c]
1057928d:	c3                                              	ret
1057928e:	cc                                              	int3
1057928f:	cc                                              	int3
