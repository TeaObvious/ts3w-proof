# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cd80 (ScriptCore.Simulator::Simulator_GetTickCountImpl)
Paired Ghidra pseudocode: 0076CD80_ScriptCore_Simulator_Simulator_GetTickCountImpl.c
Window: [0x0076cd80, 0x0076cda0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cda0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cd80: e8 0b c6 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076cd90: d0 8b 10 8b c8 8b 42 2c ff e0 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076cd80 <.text+0x36bd80>:
  76cd80:	e8 0b c6 ff ff                                  	call   0x769390
  76cd85:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cd87:	8b c8                                           	mov    ecx,eax
  76cd89:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  76cd8f:	ff d0                                           	call   eax
  76cd91:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cd93:	8b c8                                           	mov    ecx,eax
  76cd95:	8b 42 2c                                        	mov    eax,DWORD PTR [edx+0x2c]
  76cd98:	ff e0                                           	jmp    eax
  76cd9a:	cc                                              	int3
  76cd9b:	cc                                              	int3
  76cd9c:	cc                                              	int3
  76cd9d:	cc                                              	int3
  76cd9e:	cc                                              	int3
  76cd9f:	cc                                              	int3
