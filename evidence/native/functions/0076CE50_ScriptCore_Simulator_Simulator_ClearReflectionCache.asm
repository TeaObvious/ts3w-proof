# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ce50 (ScriptCore.Simulator::Simulator_ClearReflectionCache)
Paired Ghidra pseudocode: 0076CE50_ScriptCore_Simulator_Simulator_ClearReflectionCache.c
Window: [0x0076ce50, 0x0076ce70) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ce70
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ce50: e8 3b c5 ff ff 8b 10 8b c8 8b 82 78 01 00 00 ff
0076ce60: e0 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076ce50 <.text+0x36be50>:
  76ce50:	e8 3b c5 ff ff                                  	call   0x769390
  76ce55:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76ce57:	8b c8                                           	mov    ecx,eax
  76ce59:	8b 82 78 01 00 00                               	mov    eax,DWORD PTR [edx+0x178]
  76ce5f:	ff e0                                           	jmp    eax
  76ce61:	cc                                              	int3
  76ce62:	cc                                              	int3
  76ce63:	cc                                              	int3
  76ce64:	cc                                              	int3
  76ce65:	cc                                              	int3
  76ce66:	cc                                              	int3
  76ce67:	cc                                              	int3
  76ce68:	cc                                              	int3
  76ce69:	cc                                              	int3
  76ce6a:	cc                                              	int3
  76ce6b:	cc                                              	int3
  76ce6c:	cc                                              	int3
  76ce6d:	cc                                              	int3
  76ce6e:	cc                                              	int3
  76ce6f:	cc                                              	int3
