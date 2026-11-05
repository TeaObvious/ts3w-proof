# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x102bd4c0 (UserToolUtils_SetBuildBuyGenericCallbackImpl)
Paired Ghidra pseudocode: 102BD4C0_UserToolUtils_SetBuildBuyGenericCallbackImpl.c
Window: [0x102bd4c0, 0x102bd4d0) (16 bytes; stop exclusive)
Next defined Ghidra entry: 0x102bd4d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
102bd4c0: 8b 44 24 04 8b 0d 20 0c c7 10 89 41 04 c3 cc cc

LINEAR DISASSEMBLY
102bd4c0 <.text+0x2bc4c0>:
102bd4c0:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
102bd4c4:	8b 0d 20 0c c7 10                               	mov    ecx,DWORD PTR ds:0x10c70c20
102bd4ca:	89 41 04                                        	mov    DWORD PTR [ecx+0x4],eax
102bd4cd:	c3                                              	ret
102bd4ce:	cc                                              	int3
102bd4cf:	cc                                              	int3
