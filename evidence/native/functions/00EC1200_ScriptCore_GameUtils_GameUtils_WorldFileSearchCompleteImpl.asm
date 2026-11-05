# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1200 (ScriptCore.GameUtils::GameUtils_WorldFileSearchCompleteImpl)
Paired Ghidra pseudocode: 00EC1200_ScriptCore_GameUtils_GameUtils_WorldFileSearchCompleteImpl.c
Window: [0x00ec1200, 0x00ec1230) (48 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1230
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1200: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
00ec1210: 40 75 12 e8 78 81 8a ff 8b 10 8b c8 8b 82 cc 00
00ec1220: 00 00 56 ff d0 b0 01 5e c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1200 <.text+0xac0200>:
  ec1200:	56                                              	push   esi
  ec1201:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec1205:	8b c6                                           	mov    eax,esi
  ec1207:	25 00 00 00 ff                                  	and    eax,0xff000000
  ec120c:	3d 00 00 00 40                                  	cmp    eax,0x40000000
  ec1211:	75 12                                           	jne    0xec1225
  ec1213:	e8 78 81 8a ff                                  	call   0x769390
  ec1218:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec121a:	8b c8                                           	mov    ecx,eax
  ec121c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ec1222:	56                                              	push   esi
  ec1223:	ff d0                                           	call   eax
  ec1225:	b0 01                                           	mov    al,0x1
  ec1227:	5e                                              	pop    esi
  ec1228:	c3                                              	ret
  ec1229:	cc                                              	int3
  ec122a:	cc                                              	int3
  ec122b:	cc                                              	int3
  ec122c:	cc                                              	int3
  ec122d:	cc                                              	int3
  ec122e:	cc                                              	int3
  ec122f:	cc                                              	int3
