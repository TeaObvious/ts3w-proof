# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec1420 (ScriptCore.GameUtils::GameUtils_DeleteSaveFileImpl)
Paired Ghidra pseudocode: 00EC1420_ScriptCore_GameUtils_GameUtils_DeleteSaveFileImpl.c
Window: [0x00ec1420, 0x00ec1460) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec1460
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec1420: 56 e8 9a 85 be ff 8b f0 e8 63 7f 8a ff 85 f6 74
00ec1430: 20 85 c0 74 1c 8b 4c 24 08 8b 10 8b 52 58 51 8b
00ec1440: c8 ff d2 85 c0 74 0a 50 8b ce e8 71 86 be ff 5e
00ec1450: c3 32 c0 5e c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ec1420 <.text+0xac0420>:
  ec1420:	56                                              	push   esi
  ec1421:	e8 9a 85 be ff                                  	call   0xaa99c0
  ec1426:	8b f0                                           	mov    esi,eax
  ec1428:	e8 63 7f 8a ff                                  	call   0x769390
  ec142d:	85 f6                                           	test   esi,esi
  ec142f:	74 20                                           	je     0xec1451
  ec1431:	85 c0                                           	test   eax,eax
  ec1433:	74 1c                                           	je     0xec1451
  ec1435:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ec1439:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ec143b:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  ec143e:	51                                              	push   ecx
  ec143f:	8b c8                                           	mov    ecx,eax
  ec1441:	ff d2                                           	call   edx
  ec1443:	85 c0                                           	test   eax,eax
  ec1445:	74 0a                                           	je     0xec1451
  ec1447:	50                                              	push   eax
  ec1448:	8b ce                                           	mov    ecx,esi
  ec144a:	e8 71 86 be ff                                  	call   0xaa9ac0
  ec144f:	5e                                              	pop    esi
  ec1450:	c3                                              	ret
  ec1451:	32 c0                                           	xor    al,al
  ec1453:	5e                                              	pop    esi
  ec1454:	c3                                              	ret
  ec1455:	cc                                              	int3
  ec1456:	cc                                              	int3
  ec1457:	cc                                              	int3
  ec1458:	cc                                              	int3
  ec1459:	cc                                              	int3
  ec145a:	cc                                              	int3
  ec145b:	cc                                              	int3
  ec145c:	cc                                              	int3
  ec145d:	cc                                              	int3
  ec145e:	cc                                              	int3
  ec145f:	cc                                              	int3
