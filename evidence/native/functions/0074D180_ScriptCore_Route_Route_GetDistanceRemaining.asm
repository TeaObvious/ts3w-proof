# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d180 (ScriptCore.Route::Route_GetDistanceRemaining)
Paired Ghidra pseudocode: 0074D180_ScriptCore_Route_Route_GetDistanceRemaining.c
Window: [0x0074d180, 0x0074d1d0) (80 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d1d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d180: 51 8b 0d c4 50 1d 01 85 c9 56 74 33 8b 44 24 0c
0074d190: 50 e8 1a e3 ff ff 8b f0 85 f6 74 23 8b 16 8b 42
0074d1a0: 10 8b ce ff d0 d9 86 a8 00 00 00 8b 16 d9 5c 24
0074d1b0: 04 8b 42 14 8b ce ff d0 d9 44 24 04 5e 59 c3 d9
0074d1c0: ee 5e 59 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074d180 <.text+0x34c180>:
  74d180:	51                                              	push   ecx
  74d181:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d187:	85 c9                                           	test   ecx,ecx
  74d189:	56                                              	push   esi
  74d18a:	74 33                                           	je     0x74d1bf
  74d18c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  74d190:	50                                              	push   eax
  74d191:	e8 1a e3 ff ff                                  	call   0x74b4b0
  74d196:	8b f0                                           	mov    esi,eax
  74d198:	85 f6                                           	test   esi,esi
  74d19a:	74 23                                           	je     0x74d1bf
  74d19c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d19e:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d1a1:	8b ce                                           	mov    ecx,esi
  74d1a3:	ff d0                                           	call   eax
  74d1a5:	d9 86 a8 00 00 00                               	fld    DWORD PTR [esi+0xa8]
  74d1ab:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d1ad:	d9 5c 24 04                                     	fstp   DWORD PTR [esp+0x4]
  74d1b1:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d1b4:	8b ce                                           	mov    ecx,esi
  74d1b6:	ff d0                                           	call   eax
  74d1b8:	d9 44 24 04                                     	fld    DWORD PTR [esp+0x4]
  74d1bc:	5e                                              	pop    esi
  74d1bd:	59                                              	pop    ecx
  74d1be:	c3                                              	ret
  74d1bf:	d9 ee                                           	fldz
  74d1c1:	5e                                              	pop    esi
  74d1c2:	59                                              	pop    ecx
  74d1c3:	c3                                              	ret
  74d1c4:	cc                                              	int3
  74d1c5:	cc                                              	int3
  74d1c6:	cc                                              	int3
  74d1c7:	cc                                              	int3
  74d1c8:	cc                                              	int3
  74d1c9:	cc                                              	int3
  74d1ca:	cc                                              	int3
  74d1cb:	cc                                              	int3
  74d1cc:	cc                                              	int3
  74d1cd:	cc                                              	int3
  74d1ce:	cc                                              	int3
  74d1cf:	cc                                              	int3
