# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00784d70 (GetNativeRegistrationTable_WeatherControl)
Paired Ghidra pseudocode: 00784D70_GetNativeRegistrationTable_WeatherControl.c
Window: [0x00784d70, 0x00784da0) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00784da0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00784d70: 8b 44 24 04 c7 00 78 31 16 01 c2 04 00 cc cc cc
00784d80: 8b c1 80 c9 ff 88 08 88 48 01 c6 40 02 00 88 48
00784d90: 03 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00784d70 <.text+0x383d70>:
  784d70:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  784d74:	c7 00 78 31 16 01                               	mov    DWORD PTR [eax],0x1163178
  784d7a:	c2 04 00                                        	ret    0x4
  784d7d:	cc                                              	int3
  784d7e:	cc                                              	int3
  784d7f:	cc                                              	int3
  784d80:	8b c1                                           	mov    eax,ecx
  784d82:	80 c9 ff                                        	or     cl,0xff
  784d85:	88 08                                           	mov    BYTE PTR [eax],cl
  784d87:	88 48 01                                        	mov    BYTE PTR [eax+0x1],cl
  784d8a:	c6 40 02 00                                     	mov    BYTE PTR [eax+0x2],0x0
  784d8e:	88 48 03                                        	mov    BYTE PTR [eax+0x3],cl
  784d91:	c3                                              	ret
  784d92:	cc                                              	int3
  784d93:	cc                                              	int3
  784d94:	cc                                              	int3
  784d95:	cc                                              	int3
  784d96:	cc                                              	int3
  784d97:	cc                                              	int3
  784d98:	cc                                              	int3
  784d99:	cc                                              	int3
  784d9a:	cc                                              	int3
  784d9b:	cc                                              	int3
  784d9c:	cc                                              	int3
  784d9d:	cc                                              	int3
  784d9e:	cc                                              	int3
  784d9f:	cc                                              	int3
