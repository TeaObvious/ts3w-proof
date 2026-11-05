# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994670 (ThumbnailManager_NotifierFinished)
Paired Ghidra pseudocode: 10994670_ThumbnailManager_NotifierFinished.c
Window: [0x10994670, 0x10994680) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994680
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994670: 8b 44 24 04 8a 40 28 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10994670 <.text+0x993670>:
10994670:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10994674:	8a 40 28                                        	mov    al,BYTE PTR [eax+0x28]
10994677:	c3                                              	ret
10994678:	cc                                              	int3
10994679:	cc                                              	int3
1099467a:	cc                                              	int3
1099467b:	cc                                              	int3
1099467c:	cc                                              	int3
1099467d:	cc                                              	int3
1099467e:	cc                                              	int3
1099467f:	cc                                              	int3
