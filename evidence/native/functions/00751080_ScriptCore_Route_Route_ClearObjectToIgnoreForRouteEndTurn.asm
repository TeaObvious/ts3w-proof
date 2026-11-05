# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00751080 (ScriptCore.Route::Route_ClearObjectToIgnoreForRouteEndTurn)
Paired Ghidra pseudocode: 00751080_ScriptCore_Route_Route_ClearObjectToIgnoreForRouteEndTurn.c
Window: [0x00751080, 0x007510c0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x007510c0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00751080: 8b 0d c4 50 1d 01 85 c9 74 35 8b 44 24 04 56 50
00751090: e8 1b a4 ff ff 8b f0 85 f6 74 23 8b 16 8b 42 10
007510a0: 8b ce ff d0 8d 8e 58 01 00 00 e8 81 b4 0c 00 8b
007510b0: 08 89 48 04 8b 16 8b 42 14 8b ce 5e ff e0 5e c3

LINEAR DISASSEMBLY
00751080 <.text+0x350080>:
  751080:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  751086:	85 c9                                           	test   ecx,ecx
  751088:	74 35                                           	je     0x7510bf
  75108a:	8b 44 24 04                                     	mov    eax,DWORD PTR [esp+0x4]
  75108e:	56                                              	push   esi
  75108f:	50                                              	push   eax
  751090:	e8 1b a4 ff ff                                  	call   0x74b4b0
  751095:	8b f0                                           	mov    esi,eax
  751097:	85 f6                                           	test   esi,esi
  751099:	74 23                                           	je     0x7510be
  75109b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  75109d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  7510a0:	8b ce                                           	mov    ecx,esi
  7510a2:	ff d0                                           	call   eax
  7510a4:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
  7510aa:	e8 81 b4 0c 00                                  	call   0x81c530
  7510af:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  7510b1:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  7510b4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  7510b6:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  7510b9:	8b ce                                           	mov    ecx,esi
  7510bb:	5e                                              	pop    esi
  7510bc:	ff e0                                           	jmp    eax
  7510be:	5e                                              	pop    esi
  7510bf:	c3                                              	ret
