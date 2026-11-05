# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076b130 (ScriptCore.ScriptProxy::ScriptProxy_SetResetState)
Paired Ghidra pseudocode: 0076B130_ScriptCore_ScriptProxy_ScriptProxy_SetResetState.c
Window: [0x0076b130, 0x0076b160) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076b160
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076b130: 53 e8 5a e2 ff ff 8b 4c 24 10 8b 10 8b 92 2c 01
0076b140: 00 00 85 c9 0f 95 c3 6a 00 53 51 8b 4c 24 18 51
0076b150: 8b 4c 24 18 51 8b c8 ff d2 5b c3 cc cc cc cc cc

LINEAR DISASSEMBLY
0076b130 <.text+0x36a130>:
  76b130:	53                                              	push   ebx
  76b131:	e8 5a e2 ff ff                                  	call   0x769390
  76b136:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  76b13a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76b13c:	8b 92 2c 01 00 00                               	mov    edx,DWORD PTR [edx+0x12c]
  76b142:	85 c9                                           	test   ecx,ecx
  76b144:	0f 95 c3                                        	setne  bl
  76b147:	6a 00                                           	push   0x0
  76b149:	53                                              	push   ebx
  76b14a:	51                                              	push   ecx
  76b14b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76b14f:	51                                              	push   ecx
  76b150:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76b154:	51                                              	push   ecx
  76b155:	8b c8                                           	mov    ecx,eax
  76b157:	ff d2                                           	call   edx
  76b159:	5b                                              	pop    ebx
  76b15a:	c3                                              	ret
  76b15b:	cc                                              	int3
  76b15c:	cc                                              	int3
  76b15d:	cc                                              	int3
  76b15e:	cc                                              	int3
  76b15f:	cc                                              	int3
