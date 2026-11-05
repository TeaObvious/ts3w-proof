# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cb20 (ScriptCore.Simulator::Simulator_GetTaskImpl)
Paired Ghidra pseudocode: 0076CB20_ScriptCore_Simulator_Simulator_GetTaskImpl.c
Window: [0x0076cb20, 0x0076cb50) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cb50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cb20: e8 6b c8 ff ff 8b 10 8b c8 8b 82 7c 01 00 00 ff
0076cb30: d0 8b 4c 24 0c 8b 10 8b 52 18 51 8b 4c 24 0c 51
0076cb40: 8b 4c 24 0c 51 8b c8 ff d2 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076cb20 <.text+0x36bb20>:
  76cb20:	e8 6b c8 ff ff                                  	call   0x769390
  76cb25:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cb27:	8b c8                                           	mov    ecx,eax
  76cb29:	8b 82 7c 01 00 00                               	mov    eax,DWORD PTR [edx+0x17c]
  76cb2f:	ff d0                                           	call   eax
  76cb31:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cb35:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76cb37:	8b 52 18                                        	mov    edx,DWORD PTR [edx+0x18]
  76cb3a:	51                                              	push   ecx
  76cb3b:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cb3f:	51                                              	push   ecx
  76cb40:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  76cb44:	51                                              	push   ecx
  76cb45:	8b c8                                           	mov    ecx,eax
  76cb47:	ff d2                                           	call   edx
  76cb49:	c3                                              	ret
  76cb4a:	cc                                              	int3
  76cb4b:	cc                                              	int3
  76cb4c:	cc                                              	int3
  76cb4d:	cc                                              	int3
  76cb4e:	cc                                              	int3
  76cb4f:	cc                                              	int3
