# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d1d0 (ScriptCore.Route::Route_IsActive)
Paired Ghidra pseudocode: 0074D1D0_ScriptCore_Route_Route_IsActive.c
Window: [0x0074d1d0, 0x0074d210) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d210
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d1d0: 8b 0d c4 50 1d 01 85 c9 56 74 2b 8b 44 24 08 50
0074d1e0: e8 cb e2 ff ff 8b f0 85 f6 74 1b 8b 16 8b 42 10
0074d1f0: 53 8b ce ff d0 8b 16 8b 42 14 8a 5e 60 8b ce ff
0074d200: d0 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074d1d0 <.text+0x34c1d0>:
  74d1d0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d1d6:	85 c9                                           	test   ecx,ecx
  74d1d8:	56                                              	push   esi
  74d1d9:	74 2b                                           	je     0x74d206
  74d1db:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74d1df:	50                                              	push   eax
  74d1e0:	e8 cb e2 ff ff                                  	call   0x74b4b0
  74d1e5:	8b f0                                           	mov    esi,eax
  74d1e7:	85 f6                                           	test   esi,esi
  74d1e9:	74 1b                                           	je     0x74d206
  74d1eb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d1ed:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d1f0:	53                                              	push   ebx
  74d1f1:	8b ce                                           	mov    ecx,esi
  74d1f3:	ff d0                                           	call   eax
  74d1f5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d1f7:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d1fa:	8a 5e 60                                        	mov    bl,BYTE PTR [esi+0x60]
  74d1fd:	8b ce                                           	mov    ecx,esi
  74d1ff:	ff d0                                           	call   eax
  74d201:	8a c3                                           	mov    al,bl
  74d203:	5b                                              	pop    ebx
  74d204:	5e                                              	pop    esi
  74d205:	c3                                              	ret
  74d206:	32 c0                                           	xor    al,al
  74d208:	5e                                              	pop    esi
  74d209:	c3                                              	ret
  74d20a:	cc                                              	int3
  74d20b:	cc                                              	int3
  74d20c:	cc                                              	int3
  74d20d:	cc                                              	int3
  74d20e:	cc                                              	int3
  74d20f:	cc                                              	int3
