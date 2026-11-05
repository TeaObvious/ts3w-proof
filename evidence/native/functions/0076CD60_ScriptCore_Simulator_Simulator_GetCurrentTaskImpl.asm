# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cd60 (ScriptCore.Simulator::Simulator_GetCurrentTaskImpl)
Paired Ghidra pseudocode: 0076CD60_ScriptCore_Simulator_Simulator_GetCurrentTaskImpl.c
Window: [0x0076cd60, 0x0076cd80) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cd80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cd60: e8 2b c6 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076cd70: d0 8b 10 8b c8 8b 42 1c ff e0 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076cd60 <.text+0x36bd60>:
  76cd60:	e8 2b c6 ff ff                                  	call   0x769390
  76cd65:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cd67:	8b c8                                           	mov    ecx,eax
  76cd69:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  76cd6f:	ff d0                                           	call   eax
  76cd71:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cd73:	8b c8                                           	mov    ecx,eax
  76cd75:	8b 42 1c                                        	mov    eax,DWORD PTR [edx+0x1c]
  76cd78:	ff e0                                           	jmp    eax
  76cd7a:	cc                                              	int3
  76cd7b:	cc                                              	int3
  76cd7c:	cc                                              	int3
  76cd7d:	cc                                              	int3
  76cd7e:	cc                                              	int3
  76cd7f:	cc                                              	int3
