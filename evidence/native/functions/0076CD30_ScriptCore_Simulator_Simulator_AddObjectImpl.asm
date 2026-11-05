# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cd30 (ScriptCore.Simulator::Simulator_AddObjectImpl)
Paired Ghidra pseudocode: 0076CD30_ScriptCore_Simulator_Simulator_AddObjectImpl.c
Window: [0x0076cd30, 0x0076cd60) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cd60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cd30: e8 5b c6 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076cd40: d0 8b 4c 24 0c 8b 10 8b 52 14 51 8b 4c 24 0c 51
0076cd50: 8b 4c 24 0c 51 8b c8 ff d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076cd30 <.text+0x36bd30>:
  76cd30:	e8 5b c6 ff ff                                  	call   0x769390
  76cd35:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cd37:	8b c8                                           	mov    ecx,eax
  76cd39:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  76cd3f:	ff d0                                           	call   eax
  76cd41:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cd45:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cd47:	8b 52 14                                        	mov    edx,DWORD PTR [edx+0x14]
  76cd4a:	51                                              	push   ecx
  76cd4b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cd4f:	51                                              	push   ecx
  76cd50:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cd54:	51                                              	push   ecx
  76cd55:	8b c8                                           	mov    ecx,eax
  76cd57:	ff d2                                           	call   edx
  76cd59:	c3                                              	ret
  76cd5a:	cc                                              	int3
  76cd5b:	cc                                              	int3
  76cd5c:	cc                                              	int3
  76cd5d:	cc                                              	int3
  76cd5e:	cc                                              	int3
  76cd5f:	cc                                              	int3
