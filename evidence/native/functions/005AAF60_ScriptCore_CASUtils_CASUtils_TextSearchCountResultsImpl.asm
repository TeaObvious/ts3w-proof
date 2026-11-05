# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aaf60 (ScriptCore.CASUtils::CASUtils_TextSearchCountResultsImpl)
Paired Ghidra pseudocode: 005AAF60_ScriptCore_CASUtils_CASUtils_TextSearchCountResultsImpl.c
Window: [0x005aaf60, 0x005aafa0) (64 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aafa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aaf60: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005aaf70: 35 74 04 33 c0 5e c3 e8 14 e4 1b 00 8b 10 8b c8
005aaf80: 8b 82 cc 00 00 00 56 ff d0 85 c0 74 e6 8b 4c 24
005aaf90: 0c 51 8b c8 e8 47 fd ff ff 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005aaf60 <.text+0x1a9f60>:
  5aaf60:	56                                              	push   esi
  5aaf61:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5aaf65:	8b c6                                           	mov    eax,esi
  5aaf67:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aaf6c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5aaf71:	74 04                                           	je     0x5aaf77
  5aaf73:	33 c0                                           	xor    eax,eax
  5aaf75:	5e                                              	pop    esi
  5aaf76:	c3                                              	ret
  5aaf77:	e8 14 e4 1b 00                                  	call   0x769390
  5aaf7c:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aaf7e:	8b c8                                           	mov    ecx,eax
  5aaf80:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aaf86:	56                                              	push   esi
  5aaf87:	ff d0                                           	call   eax
  5aaf89:	85 c0                                           	test   eax,eax
  5aaf8b:	74 e6                                           	je     0x5aaf73
  5aaf8d:	8b 4c 24 0c                                     	mov    ecx,DWORD PTR [esp+0xc]
  5aaf91:	51                                              	push   ecx
  5aaf92:	8b c8                                           	mov    ecx,eax
  5aaf94:	e8 47 fd ff ff                                  	call   0x5aace0
  5aaf99:	5e                                              	pop    esi
  5aaf9a:	c3                                              	ret
  5aaf9b:	cc                                              	int3
  5aaf9c:	cc                                              	int3
  5aaf9d:	cc                                              	int3
  5aaf9e:	cc                                              	int3
  5aaf9f:	cc                                              	int3
