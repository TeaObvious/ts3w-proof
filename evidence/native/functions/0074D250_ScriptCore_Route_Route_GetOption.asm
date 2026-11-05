# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d250 (ScriptCore.Route::Route_GetOption)
Paired Ghidra pseudocode: 0074D250_ScriptCore_Route_Route_GetOption.c
Window: [0x0074d250, 0x0074d2b0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d2b0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d250: 8b 0d c4 50 1d 01 85 c9 56 74 44 8b 44 24 08 50
0074d260: e8 4b e2 ff ff 8b f0 85 f6 74 34 8b 16 8b 42 10
0074d270: 53 8b ce ff d0 8b 4c 24 18 8b 54 24 14 8b 44 24
0074d280: 10 51 52 50 8d 8e 58 01 00 00 e8 51 f2 0c 00 8b
0074d290: 16 8a d8 8b 42 14 8b ce ff d0 8a c3 5b 5e c3 32
0074d2a0: c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0074d250 <.text+0x34c250>:
  74d250:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d256:	85 c9                                           	test   ecx,ecx
  74d258:	56                                              	push   esi
  74d259:	74 44                                           	je     0x74d29f
  74d25b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74d25f:	50                                              	push   eax
  74d260:	e8 4b e2 ff ff                                  	call   0x74b4b0
  74d265:	8b f0                                           	mov    esi,eax
  74d267:	85 f6                                           	test   esi,esi
  74d269:	74 34                                           	je     0x74d29f
  74d26b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d26d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d270:	53                                              	push   ebx
  74d271:	8b ce                                           	mov    ecx,esi
  74d273:	ff d0                                           	call   eax
  74d275:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  74d279:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  74d27d:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  74d281:	51                                              	push   ecx
  74d282:	52                                              	push   edx
  74d283:	50                                              	push   eax
  74d284:	8d 8e 58 01 00 00                               	lea    ecx,[esi+0x158]
  74d28a:	e8 51 f2 0c 00                                  	call   0x81c4e0
  74d28f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d291:	8a d8                                           	mov    bl,al
  74d293:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d296:	8b ce                                           	mov    ecx,esi
  74d298:	ff d0                                           	call   eax
  74d29a:	8a c3                                           	mov    al,bl
  74d29c:	5b                                              	pop    ebx
  74d29d:	5e                                              	pop    esi
  74d29e:	c3                                              	ret
  74d29f:	32 c0                                           	xor    al,al
  74d2a1:	5e                                              	pop    esi
  74d2a2:	c3                                              	ret
  74d2a3:	cc                                              	int3
  74d2a4:	cc                                              	int3
  74d2a5:	cc                                              	int3
  74d2a6:	cc                                              	int3
  74d2a7:	cc                                              	int3
  74d2a8:	cc                                              	int3
  74d2a9:	cc                                              	int3
  74d2aa:	cc                                              	int3
  74d2ab:	cc                                              	int3
  74d2ac:	cc                                              	int3
  74d2ad:	cc                                              	int3
  74d2ae:	cc                                              	int3
  74d2af:	cc                                              	int3
