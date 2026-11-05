# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec5110 (GetNativeRegistrationTable_GameUtils)
Paired Ghidra pseudocode: 00EC5110_GetNativeRegistrationTable_GameUtils.c
Window: [0x00ec5110, 0x00ec5170) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec5170
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec5110: 8b 44 24 04 c7 00 a0 70 19 01 c2 04 00 cc cc cc
00ec5120: b8 cc 4c 0f 01 c3 cc cc cc cc cc cc cc cc cc cc
00ec5130: 81 7c 24 0c 9f 86 8d 02 75 0f 68 9f 86 8d 02 51
00ec5140: 8b 4c 24 0c e8 b7 02 00 00 c2 0c 00 cc cc cc cc
00ec5150: 81 7c 24 08 9f 86 8d 02 75 08 6a 01 e8 6f 3a 6c
00ec5160: ff 59 c2 08 00 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec5110 <.text+0xac4110>:
  ec5110:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  ec5114:	c7 00 a0 70 19 01                               	mov    DWORD PTR [eax],0x11970a0
  ec511a:	c2 04 00                                        	ret    0x4
  ec511d:	cc                                              	int3
  ec511e:	cc                                              	int3
  ec511f:	cc                                              	int3
  ec5120:	b8 cc 4c 0f 01                                  	mov    eax,0x10f4ccc
  ec5125:	c3                                              	ret
  ec5126:	cc                                              	int3
  ec5127:	cc                                              	int3
  ec5128:	cc                                              	int3
  ec5129:	cc                                              	int3
  ec512a:	cc                                              	int3
  ec512b:	cc                                              	int3
  ec512c:	cc                                              	int3
  ec512d:	cc                                              	int3
  ec512e:	cc                                              	int3
  ec512f:	cc                                              	int3
  ec5130:	81 7c 24 0c 9f 86 8d 02                         	cmp    DWORD PTR [esp+0xc],0x28d869f
  ec5138:	75 0f                                           	jne    0xec5149
  ec513a:	68 9f 86 8d 02                                  	push   0x28d869f
  ec513f:	51                                              	push   ecx
  ec5140:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  ec5144:	e8 b7 02 00 00                                  	call   0xec5400
  ec5149:	c2 0c 00                                        	ret    0xc
  ec514c:	cc                                              	int3
  ec514d:	cc                                              	int3
  ec514e:	cc                                              	int3
  ec514f:	cc                                              	int3
  ec5150:	81 7c 24 08 9f 86 8d 02                         	cmp    DWORD PTR [esp+0x8],0x28d869f
  ec5158:	75 08                                           	jne    0xec5162
  ec515a:	6a 01                                           	push   0x1
  ec515c:	e8 6f 3a 6c ff                                  	call   0x588bd0
  ec5161:	59                                              	pop    ecx
  ec5162:	c2 08 00                                        	ret    0x8
  ec5165:	cc                                              	int3
  ec5166:	cc                                              	int3
  ec5167:	cc                                              	int3
  ec5168:	cc                                              	int3
  ec5169:	cc                                              	int3
  ec516a:	cc                                              	int3
  ec516b:	cc                                              	int3
  ec516c:	cc                                              	int3
  ec516d:	cc                                              	int3
  ec516e:	cc                                              	int3
  ec516f:	cc                                              	int3
