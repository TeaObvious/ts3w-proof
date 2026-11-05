# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076ce10 (ScriptCore.Simulator::Simulator_EnableYieldAnalysis)
Paired Ghidra pseudocode: 0076CE10_ScriptCore_Simulator_Simulator_EnableYieldAnalysis.c
Window: [0x0076ce10, 0x0076ce30) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ce30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076ce10: e8 7b c5 ff ff 8b 4c 24 0c 8b 54 24 08 51 8b 4c
0076ce20: 24 08 52 51 8b c8 e8 45 cb ff ff c3 cc cc cc cc

LINEAR DISASSEMBLY
0076ce10 <.text+0x36be10>:
  76ce10:	e8 7b c5 ff ff                                  	call   0x769390
  76ce15:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76ce19:	8b 54 24 08                                     	mov    edx,DWORD PTR [esp+0x8]
  76ce1d:	51                                              	push   ecx
  76ce1e:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  76ce22:	52                                              	push   edx
  76ce23:	51                                              	push   ecx
  76ce24:	8b c8                                           	mov    ecx,eax
  76ce26:	e8 45 cb ff ff                                  	call   0x769970
  76ce2b:	c3                                              	ret
  76ce2c:	cc                                              	int3
  76ce2d:	cc                                              	int3
  76ce2e:	cc                                              	int3
  76ce2f:	cc                                              	int3
