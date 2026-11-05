# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce6a70 (ScriptCore.UserToolUtils::UserToolUtils_CheckObjectPlacementImpl)
Paired Ghidra pseudocode: 00CE6A70_ScriptCore_UserToolUtils_UserToolUtils_CheckObjectPlacementImpl.c
Window: [0x00ce6a70, 0x00ce6ae0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce6ae0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce6a70: e8 1b 29 a8 ff 85 c0 74 5e 8b 4c 24 04 8b d1 81
00ce6a80: e2 00 00 00 ff 81 fa 00 00 00 45 75 4a 8b 10 51
00ce6a90: 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 74 39 8b 10
00ce6aa0: 8b c8 8b 42 0c 68 25 4f 9e 51 ff d0 85 c0 74 27
00ce6ab0: 8b 4c 24 08 85 c9 74 12 83 f9 15 75 1a 8b 80 98
00ce6ac0: 00 00 00 c1 e8 0a 83 e0 01 c3 8b 80 a4 00 00 00
00ce6ad0: c1 e8 0e 83 e0 01 c3 32 c0 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce6a70 <.text+0x8e5a70>:
  ce6a70:	e8 1b 29 a8 ff                                  	call   0x769390
  ce6a75:	85 c0                                           	test   eax,eax
  ce6a77:	74 5e                                           	je     0xce6ad7
  ce6a79:	8b 4c 24 04                                     	mov    ecx,DWORD PTR [esp+0x4]
  ce6a7d:	8b d1                                           	mov    edx,ecx
  ce6a7f:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  ce6a85:	81 fa 00 00 00 45                               	cmp    edx,0x45000000
  ce6a8b:	75 4a                                           	jne    0xce6ad7
  ce6a8d:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce6a8f:	51                                              	push   ecx
  ce6a90:	8b c8                                           	mov    ecx,eax
  ce6a92:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  ce6a98:	ff d0                                           	call   eax
  ce6a9a:	85 c0                                           	test   eax,eax
  ce6a9c:	74 39                                           	je     0xce6ad7
  ce6a9e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce6aa0:	8b c8                                           	mov    ecx,eax
  ce6aa2:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  ce6aa5:	68 25 4f 9e 51                                  	push   0x519e4f25
  ce6aaa:	ff d0                                           	call   eax
  ce6aac:	85 c0                                           	test   eax,eax
  ce6aae:	74 27                                           	je     0xce6ad7
  ce6ab0:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  ce6ab4:	85 c9                                           	test   ecx,ecx
  ce6ab6:	74 12                                           	je     0xce6aca
  ce6ab8:	83 f9 15                                        	cmp    ecx,0x15
  ce6abb:	75 1a                                           	jne    0xce6ad7
  ce6abd:	8b 80 98 00 00 00                               	mov    eax,DWORD PTR [eax+0x98]
  ce6ac3:	c1 e8 0a                                        	shr    eax,0xa
  ce6ac6:	83 e0 01                                        	and    eax,0x1
  ce6ac9:	c3                                              	ret
  ce6aca:	8b 80 a4 00 00 00                               	mov    eax,DWORD PTR [eax+0xa4]
  ce6ad0:	c1 e8 0e                                        	shr    eax,0xe
  ce6ad3:	83 e0 01                                        	and    eax,0x1
  ce6ad6:	c3                                              	ret
  ce6ad7:	32 c0                                           	xor    al,al
  ce6ad9:	c3                                              	ret
  ce6ada:	cc                                              	int3
  ce6adb:	cc                                              	int3
  ce6adc:	cc                                              	int3
  ce6add:	cc                                              	int3
  ce6ade:	cc                                              	int3
  ce6adf:	cc                                              	int3
