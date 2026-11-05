# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d2f0 (ScriptCore.Route::Route_GetRouteMetaType)
Paired Ghidra pseudocode: 0074D2F0_ScriptCore_Route_Route_GetRouteMetaType.c
Window: [0x0074d2f0, 0x0074d330) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d330
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d2f0: 8b 0d c4 50 1d 01 85 c9 56 74 2e 8b 44 24 08 50
0074d300: e8 ab e1 ff ff 8b f0 85 f6 74 1e 8b 16 8b 42 10
0074d310: 57 8b ce ff d0 8b 16 8b 42 14 8b be f0 01 00 00
0074d320: 8b ce ff d0 8b c7 5f 5e c3 33 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
0074d2f0 <.text+0x34c2f0>:
  74d2f0:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d2f6:	85 c9                                           	test   ecx,ecx
  74d2f8:	56                                              	push   esi
  74d2f9:	74 2e                                           	je     0x74d329
  74d2fb:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74d2ff:	50                                              	push   eax
  74d300:	e8 ab e1 ff ff                                  	call   0x74b4b0
  74d305:	8b f0                                           	mov    esi,eax
  74d307:	85 f6                                           	test   esi,esi
  74d309:	74 1e                                           	je     0x74d329
  74d30b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d30d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d310:	57                                              	push   edi
  74d311:	8b ce                                           	mov    ecx,esi
  74d313:	ff d0                                           	call   eax
  74d315:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d317:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d31a:	8b be f0 01 00 00                               	mov    edi,DWORD PTR [esi+0x1f0]
  74d320:	8b ce                                           	mov    ecx,esi
  74d322:	ff d0                                           	call   eax
  74d324:	8b c7                                           	mov    eax,edi
  74d326:	5f                                              	pop    edi
  74d327:	5e                                              	pop    esi
  74d328:	c3                                              	ret
  74d329:	33 c0                                           	xor    eax,eax
  74d32b:	5e                                              	pop    esi
  74d32c:	c3                                              	ret
  74d32d:	cc                                              	int3
  74d32e:	cc                                              	int3
  74d32f:	cc                                              	int3
