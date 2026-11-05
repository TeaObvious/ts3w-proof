# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Sims3Common.dll CAW 1.22.10 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x10537a00 (OnlineFeaturesHost_RegisterMemoryUploadStatusChangedCallback)
Paired Ghidra pseudocode: 10537A00_OnlineFeaturesHost_RegisterMemoryUploadStatusChangedCallback.c
Window: [0x10537a00, 0x10537a20) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x10537a20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
10537a00: 8b 44 24 04 a3 78 88 c7 10 c7 44 24 04 20 76 53
10537a10: 10 e9 ca be 12 00 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
10537a00 <.text+0x536a00>:
10537a00:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
10537a04:	a3 78 88 c7 10                                  	mov    ds:0x10c78878,eax
10537a09:	c7 44 24 04 20 76 53 10                         	mov    DWORD PTR [esp+0x4],0x10537620
10537a11:	e9 ca be 12 00                                  	jmp    0x106638e0
10537a16:	cc                                              	int3
10537a17:	cc                                              	int3
10537a18:	cc                                              	int3
10537a19:	cc                                              	int3
10537a1a:	cc                                              	int3
10537a1b:	cc                                              	int3
10537a1c:	cc                                              	int3
10537a1d:	cc                                              	int3
10537a1e:	cc                                              	int3
10537a1f:	cc                                              	int3
