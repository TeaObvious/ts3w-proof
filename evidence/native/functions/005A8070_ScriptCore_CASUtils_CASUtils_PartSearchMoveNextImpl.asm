# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a8070 (ScriptCore.CASUtils::CASUtils_PartSearchMoveNextImpl)
Paired Ghidra pseudocode: 005A8070_ScriptCore_CASUtils_CASUtils_PartSearchMoveNextImpl.c
Window: [0x005a8070, 0x005a80d0) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a80d0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a8070: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a8080: 35 75 16 e8 08 13 1c 00 8b 10 8b c8 8b 82 cc 00
005a8090: 00 00 56 ff d0 85 c0 75 04 32 c0 5e c3 83 78 14
005a80a0: 00 75 13 8b 10 3b 50 04 74 ef 8d 48 10 89 48 14
005a80b0: 89 11 b0 01 5e c3 8b 48 04 8b 50 10 3b d1 74 06
005a80c0: 83 c2 10 89 50 10 39 48 10 5e 0f 95 c0 c3 cc cc

LINEAR DISASSEMBLY
005a8070 <.text+0x1a7070>:
  5a8070:	56                                              	push   esi
  5a8071:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a8075:	8b c6                                           	mov    eax,esi
  5a8077:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a807c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a8081:	75 16                                           	jne    0x5a8099
  5a8083:	e8 08 13 1c 00                                  	call   0x769390
  5a8088:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a808a:	8b c8                                           	mov    ecx,eax
  5a808c:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a8092:	56                                              	push   esi
  5a8093:	ff d0                                           	call   eax
  5a8095:	85 c0                                           	test   eax,eax
  5a8097:	75 04                                           	jne    0x5a809d
  5a8099:	32 c0                                           	xor    al,al
  5a809b:	5e                                              	pop    esi
  5a809c:	c3                                              	ret
  5a809d:	83 78 14 00                                     	cmp    DWORD PTR [eax+0x14],0x0
  5a80a1:	75 13                                           	jne    0x5a80b6
  5a80a3:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a80a5:	3b 50 04                                        	cmp    edx,DWORD PTR [eax+0x4]
  5a80a8:	74 ef                                           	je     0x5a8099
  5a80aa:	8d 48 10                                        	lea    ecx,[eax+0x10]
  5a80ad:	89 48 14                                        	mov    DWORD PTR [eax+0x14],ecx
  5a80b0:	89 11                                           	mov    DWORD PTR [ecx],edx
  5a80b2:	b0 01                                           	mov    al,0x1
  5a80b4:	5e                                              	pop    esi
  5a80b5:	c3                                              	ret
  5a80b6:	8b 48 04                                        	mov    ecx,DWORD PTR [eax+0x4]
  5a80b9:	8b 50 10                                        	mov    edx,DWORD PTR [eax+0x10]
  5a80bc:	3b d1                                           	cmp    edx,ecx
  5a80be:	74 06                                           	je     0x5a80c6
  5a80c0:	83 c2 10                                        	add    edx,0x10
  5a80c3:	89 50 10                                        	mov    DWORD PTR [eax+0x10],edx
  5a80c6:	39 48 10                                        	cmp    DWORD PTR [eax+0x10],ecx
  5a80c9:	5e                                              	pop    esi
  5a80ca:	0f 95 c0                                        	setne  al
  5a80cd:	c3                                              	ret
  5a80ce:	cc                                              	int3
  5a80cf:	cc                                              	int3
