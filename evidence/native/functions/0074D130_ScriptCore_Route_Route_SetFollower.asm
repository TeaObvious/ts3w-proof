# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d130 (ScriptCore.Route::Route_SetFollower)
Paired Ghidra pseudocode: 0074D130_ScriptCore_Route_Route_SetFollower.c
Window: [0x0074d130, 0x0074d180) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d180
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d130: 8b 0d c4 50 1d 01 85 c9 74 36 8b 44 24 04 56 50
0074d140: e8 6b e3 ff ff 8b f0 85 f6 74 24 8b 16 8b 42 10
0074d150: 8b ce ff d0 8b 4c 24 10 8b 54 24 0c 51 52 8b ce
0074d160: e8 3b e2 ff ff 8b 06 8b 50 14 8b ce 5e ff e2 5e
0074d170: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074d130 <.text+0x34c130>:
  74d130:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d136:	85 c9                                           	test   ecx,ecx
  74d138:	74 36                                           	je     0x74d170
  74d13a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  74d13e:	56                                              	push   esi
  74d13f:	50                                              	push   eax
  74d140:	e8 6b e3 ff ff                                  	call   0x74b4b0
  74d145:	8b f0                                           	mov    esi,eax
  74d147:	85 f6                                           	test   esi,esi
  74d149:	74 24                                           	je     0x74d16f
  74d14b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d14d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d150:	8b ce                                           	mov    ecx,esi
  74d152:	ff d0                                           	call   eax
  74d154:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  74d158:	8b 54 24 0c                                     	mov    edx,DWORD PTR [esp+0xc]
  74d15c:	51                                              	push   ecx
  74d15d:	52                                              	push   edx
  74d15e:	8b ce                                           	mov    ecx,esi
  74d160:	e8 3b e2 ff ff                                  	call   0x74b3a0
  74d165:	8b 06                                           	mov    eax,DWORD PTR [esi]
  74d167:	8b 50 14                                        	mov    edx,DWORD PTR [eax+0x14]
  74d16a:	8b ce                                           	mov    ecx,esi
  74d16c:	5e                                              	pop    esi
  74d16d:	ff e2                                           	jmp    edx
  74d16f:	5e                                              	pop    esi
  74d170:	c3                                              	ret
  74d171:	cc                                              	int3
  74d172:	cc                                              	int3
  74d173:	cc                                              	int3
  74d174:	cc                                              	int3
  74d175:	cc                                              	int3
  74d176:	cc                                              	int3
  74d177:	cc                                              	int3
  74d178:	cc                                              	int3
  74d179:	cc                                              	int3
  74d17a:	cc                                              	int3
  74d17b:	cc                                              	int3
  74d17c:	cc                                              	int3
  74d17d:	cc                                              	int3
  74d17e:	cc                                              	int3
  74d17f:	cc                                              	int3
