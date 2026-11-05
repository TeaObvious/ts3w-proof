# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0074d210 (ScriptCore.Route::Route_IsLoop)
Paired Ghidra pseudocode: 0074D210_ScriptCore_Route_Route_IsLoop.c
Window: [0x0074d210, 0x0074d250) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x0074d250
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0074d210: 8b 0d c4 50 1d 01 85 c9 56 74 2e 8b 44 24 08 50
0074d220: e8 8b e2 ff ff 8b f0 85 f6 74 1e 8b 16 8b 42 10
0074d230: 53 8b ce ff d0 8b 16 8b 42 14 8a 9e f4 00 00 00
0074d240: 8b ce ff d0 8a c3 5b 5e c3 32 c0 5e c3 cc cc cc

LINEAR DISASSEMBLY
0074d210 <.text+0x34c210>:
  74d210:	8b 0d c4 50 1d 01                               	mov    ecx,DWORD PTR ds:0x11d50c4
  74d216:	85 c9                                           	test   ecx,ecx
  74d218:	56                                              	push   esi
  74d219:	74 2e                                           	je     0x74d249
  74d21b:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  74d21f:	50                                              	push   eax
  74d220:	e8 8b e2 ff ff                                  	call   0x74b4b0
  74d225:	8b f0                                           	mov    esi,eax
  74d227:	85 f6                                           	test   esi,esi
  74d229:	74 1e                                           	je     0x74d249
  74d22b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d22d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  74d230:	53                                              	push   ebx
  74d231:	8b ce                                           	mov    ecx,esi
  74d233:	ff d0                                           	call   eax
  74d235:	8b 16                                           	mov    edx,DWORD PTR [esi]
  74d237:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  74d23a:	8a 9e f4 00 00 00                               	mov    bl,BYTE PTR [esi+0xf4]
  74d240:	8b ce                                           	mov    ecx,esi
  74d242:	ff d0                                           	call   eax
  74d244:	8a c3                                           	mov    al,bl
  74d246:	5b                                              	pop    ebx
  74d247:	5e                                              	pop    esi
  74d248:	c3                                              	ret
  74d249:	32 c0                                           	xor    al,al
  74d24b:	5e                                              	pop    esi
  74d24c:	c3                                              	ret
  74d24d:	cc                                              	int3
  74d24e:	cc                                              	int3
  74d24f:	cc                                              	int3
