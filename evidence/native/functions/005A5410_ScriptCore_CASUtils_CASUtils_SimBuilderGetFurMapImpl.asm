# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5410 (ScriptCore.CASUtils::CASUtils_SimBuilderGetFurMapImpl)
Paired Ghidra pseudocode: 005A5410_ScriptCore_CASUtils_CASUtils_SimBuilderGetFurMapImpl.c
Window: [0x005a5410, 0x005a5470) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5470
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5410: 56 8b 74 24 0c 8b c6 25 00 00 00 ff 3d 00 00 00
005a5420: 35 75 41 e8 68 3f 1c 00 8b 10 8b c8 8b 82 cc 00
005a5430: 00 00 56 ff d0 85 c0 74 2b 8b 4c 24 08 8b 90 78
005a5440: 02 00 00 89 11 8b 90 7c 02 00 00 89 51 04 8b 90
005a5450: 70 02 00 00 8b 80 74 02 00 00 89 41 0c 89 51 08
005a5460: 8b c1 5e c3 8b 44 24 08 5e c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5410 <.text+0x1a4410>:
  5a5410:	56                                              	push   esi
  5a5411:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5a5415:	8b c6                                           	mov    eax,esi
  5a5417:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a541c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5421:	75 41                                           	jne    0x5a5464
  5a5423:	e8 68 3f 1c 00                                  	call   0x769390
  5a5428:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a542a:	8b c8                                           	mov    ecx,eax
  5a542c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5432:	56                                              	push   esi
  5a5433:	ff d0                                           	call   eax
  5a5435:	85 c0                                           	test   eax,eax
  5a5437:	74 2b                                           	je     0x5a5464
  5a5439:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5a543d:	8b 90 78 02 00 00                               	mov    edx,DWORD PTR [eax+0x278]
  5a5443:	89 11                                           	mov    DWORD PTR [ecx],edx
  5a5445:	8b 90 7c 02 00 00                               	mov    edx,DWORD PTR [eax+0x27c]
  5a544b:	89 51 04                                        	mov    DWORD PTR [ecx+0x4],edx
  5a544e:	8b 90 70 02 00 00                               	mov    edx,DWORD PTR [eax+0x270]
  5a5454:	8b 80 74 02 00 00                               	mov    eax,DWORD PTR [eax+0x274]
  5a545a:	89 41 0c                                        	mov    DWORD PTR [ecx+0xc],eax
  5a545d:	89 51 08                                        	mov    DWORD PTR [ecx+0x8],edx
  5a5460:	8b c1                                           	mov    eax,ecx
  5a5462:	5e                                              	pop    esi
  5a5463:	c3                                              	ret
  5a5464:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5a5468:	5e                                              	pop    esi
  5a5469:	c3                                              	ret
  5a546a:	cc                                              	int3
  5a546b:	cc                                              	int3
  5a546c:	cc                                              	int3
  5a546d:	cc                                              	int3
  5a546e:	cc                                              	int3
  5a546f:	cc                                              	int3
