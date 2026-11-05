# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cbf0 (ScriptCore.Simulator::Simulator_WakeImpl)
Paired Ghidra pseudocode: 0076CBF0_ScriptCore_Simulator_Simulator_WakeImpl.c
Window: [0x0076cbf0, 0x0076cc20) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cc20
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cbf0: e8 9b c7 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076cc00: d0 8b 4c 24 0c 8b 10 8b 52 24 51 8b 4c 24 0c 51
0076cc10: 8b 4c 24 0c 51 8b c8 ff d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076cbf0 <.text+0x36bbf0>:
  76cbf0:	e8 9b c7 ff ff                                  	call   0x769390
  76cbf5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cbf7:	8b c8                                           	mov    ecx,eax
  76cbf9:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  76cbff:	ff d0                                           	call   eax
  76cc01:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cc05:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cc07:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  76cc0a:	51                                              	push   ecx
  76cc0b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cc0f:	51                                              	push   ecx
  76cc10:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cc14:	51                                              	push   ecx
  76cc15:	8b c8                                           	mov    ecx,eax
  76cc17:	ff d2                                           	call   edx
  76cc19:	c3                                              	ret
  76cc1a:	cc                                              	int3
  76cc1b:	cc                                              	int3
  76cc1c:	cc                                              	int3
  76cc1d:	cc                                              	int3
  76cc1e:	cc                                              	int3
  76cc1f:	cc                                              	int3
