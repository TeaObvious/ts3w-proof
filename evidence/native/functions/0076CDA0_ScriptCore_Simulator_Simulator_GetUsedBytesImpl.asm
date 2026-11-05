# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cda0 (ScriptCore.Simulator::Simulator_GetUsedBytesImpl)
Paired Ghidra pseudocode: 0076CDA0_ScriptCore_Simulator_Simulator_GetUsedBytesImpl.c
Window: [0x0076cda0, 0x0076cdc0) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cdc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cda0: e8 eb c5 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076cdb0: d0 8b 10 8b c8 8b 42 30 ff e0 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076cda0 <.text+0x36bda0>:
  76cda0:	e8 eb c5 ff ff                                  	call   0x769390
  76cda5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cda7:	8b c8                                           	mov    ecx,eax
  76cda9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  76cdaf:	ff d0                                           	call   eax
  76cdb1:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cdb3:	8b c8                                           	mov    ecx,eax
  76cdb5:	8b 42 30                                        	mov    eax,DWORD PTR [edx+0x30]
  76cdb8:	ff e0                                           	jmp    eax
  76cdba:	cc                                              	int3
  76cdbb:	cc                                              	int3
  76cdbc:	cc                                              	int3
  76cdbd:	cc                                              	int3
  76cdbe:	cc                                              	int3
  76cdbf:	cc                                              	int3
