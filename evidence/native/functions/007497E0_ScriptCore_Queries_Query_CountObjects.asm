# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x007497e0 (ScriptCore.Queries::Query_CountObjects)
Paired Ghidra pseudocode: 007497E0_ScriptCore_Queries_Query_CountObjects.c
Window: [0x007497e0, 0x00749800) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749800
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
007497e0: e8 ab fb 01 00 8b 4c 24 04 8b 10 8b 92 c4 00 00
007497f0: 00 6a 00 6a 00 51 8b c8 ff d2 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
007497e0 <.text+0x3487e0>:
  7497e0:	e8 ab fb 01 00                                  	call   0x769390
  7497e5:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  7497e9:	8b 10                                           	mov    edx,DWORD PTR [eax]
  7497eb:	8b 92 c4 00 00 00                               	mov    edx,DWORD PTR [edx+0xc4]
  7497f1:	6a 00                                           	push   0x0
  7497f3:	6a 00                                           	push   0x0
  7497f5:	51                                              	push   ecx
  7497f6:	8b c8                                           	mov    ecx,eax
  7497f8:	ff d2                                           	call   edx
  7497fa:	c3                                              	ret
  7497fb:	cc                                              	int3
  7497fc:	cc                                              	int3
  7497fd:	cc                                              	int3
  7497fe:	cc                                              	int3
  7497ff:	cc                                              	int3
