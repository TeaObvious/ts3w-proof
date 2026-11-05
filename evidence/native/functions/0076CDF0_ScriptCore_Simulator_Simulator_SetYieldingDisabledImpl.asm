# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cdf0 (ScriptCore.Simulator::Simulator_SetYieldingDisabledImpl)
Paired Ghidra pseudocode: 0076CDF0_ScriptCore_Simulator_Simulator_SetYieldingDisabledImpl.c
Window: [0x0076cdf0, 0x0076ce10) (32 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076ce10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cdf0: e8 9b c5 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076ce00: d0 8b 4c 24 04 8b 10 8b 52 10 51 8b c8 ff d2 c3

LINEAR DISASSEMBLY
0076cdf0 <.text+0x36bdf0>:
  76cdf0:	e8 9b c5 ff ff                                  	call   0x769390
  76cdf5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cdf7:	8b c8                                           	mov    ecx,eax
  76cdf9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  76cdff:	ff d0                                           	call   eax
  76ce01:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  76ce05:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76ce07:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  76ce0a:	51                                              	push   ecx
  76ce0b:	8b c8                                           	mov    ecx,eax
  76ce0d:	ff d2                                           	call   edx
  76ce0f:	c3                                              	ret
