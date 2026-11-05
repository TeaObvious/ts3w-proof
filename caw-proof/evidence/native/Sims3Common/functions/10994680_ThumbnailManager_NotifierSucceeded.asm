# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10994680 (ThumbnailManager_NotifierSucceeded)
Paired Ghidra pseudocode: 10994680_ThumbnailManager_NotifierSucceeded.c
Window: [0x10994680, 0x10994690) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x10994690
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10994680: 8b 44 24 04 8a 40 29 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10994680 <.text+0x993680>:
10994680:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10994684:	8a 40 29                                        	mov    al,BYTE PTR [eax+0x29]
10994687:	c3                                              	ret
10994688:	cc                                              	int3
10994689:	cc                                              	int3
1099468a:	cc                                              	int3
1099468b:	cc                                              	int3
1099468c:	cc                                              	int3
1099468d:	cc                                              	int3
1099468e:	cc                                              	int3
1099468f:	cc                                              	int3
