# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1230 (ScriptCore.GameUtils::GameUtils_CSVFileMoveNextImpl)
Paired Ghidra pseudocode: 00EC1230_ScriptCore_GameUtils_GameUtils_CSVFileMoveNextImpl.c
Window: [0x00ec1230, 0x00ec1270) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1270
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1230: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00ec1240: 40 75 20 e8 48 81 8a ff 8b 10 8b c8 8b 82 cc 00
00ec1250: 00 00 56 ff d0 85 c0 74 0a 8b 10 8b c8 8b 42 10
00ec1260: 5e ff e0 32 c0 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1230 <.text+0xac0230>:
  ec1230:	56                                              	push   esi
  ec1231:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec1235:	8b c6                                           	mov    eax,esi
  ec1237:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec123c:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec1241:	75 20                                           	jne    0xec1263
  ec1243:	e8 48 81 8a ff                                  	call   0x769390
  ec1248:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec124a:	8b c8                                           	mov    ecx,eax
  ec124c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec1252:	56                                              	push   esi
  ec1253:	ff d0                                           	call   eax
  ec1255:	85 c0                                           	test   eax,eax
  ec1257:	74 0a                                           	je     0xec1263
  ec1259:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec125b:	8b c8                                           	mov    ecx,eax
  ec125d:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  ec1260:	5e                                              	pop    esi
  ec1261:	ff e0                                           	jmp    eax
  ec1263:	32 c0                                           	xor    al,al
  ec1265:	5e                                              	pop    esi
  ec1266:	c3                                              	ret
  ec1267:	cc                                              	int3
  ec1268:	cc                                              	int3
  ec1269:	cc                                              	int3
  ec126a:	cc                                              	int3
  ec126b:	cc                                              	int3
  ec126c:	cc                                              	int3
  ec126d:	cc                                              	int3
  ec126e:	cc                                              	int3
  ec126f:	cc                                              	int3
