# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00749800 (ScriptCore.Queries::Query_GetObjects)
Paired Ghidra pseudocode: 00749800_ScriptCore_Queries_Query_GetObjects.c
Window: [0x00749800, 0x00749820) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x00749820
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00749800: e8 8b fb 01 00 8b 4c 24 04 8b 10 8b 92 c0 00 00
00749810: 00 6a 00 6a 00 51 8b c8 ff d2 c3 cc cc cc cc cc

LINEAR DISASSEMBLY
00749800 <.text+0x348800>:
  749800:	e8 8b fb 01 00                                  	call   0x769390
  749805:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  749809:	8b 10                                           	mov    edx,DWORD PTR [eax]
  74980b:	8b 92 c0 00 00 00                               	mov    edx,DWORD PTR [edx+0xc0]
  749811:	6a 00                                           	push   0x0
  749813:	6a 00                                           	push   0x0
  749815:	51                                              	push   ecx
  749816:	8b c8                                           	mov    ecx,eax
  749818:	ff d2                                           	call   edx
  74981a:	c3                                              	ret
  74981b:	cc                                              	int3
  74981c:	cc                                              	int3
  74981d:	cc                                              	int3
  74981e:	cc                                              	int3
  74981f:	cc                                              	int3
