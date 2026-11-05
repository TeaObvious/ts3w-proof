# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a5bb0 (ScriptCore.CASUtils::CASUtils_SimBuilderSetSkinToneImpl)
Paired Ghidra pseudocode: 005A5BB0_ScriptCore_CASUtils_CASUtils_SimBuilderSetSkinToneImpl.c
Window: [0x005a5bb0, 0x005a5c10) (96 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a5c10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a5bb0: 56 8b 74 24 08 8b c6 25 00 00 00 ff 3d 00 00 00
005a5bc0: 35 75 3f e8 c8 37 1c 00 8b 10 8b c8 8b 82 cc 00
005a5bd0: 00 00 56 ff d0 85 c0 74 29 8b 4c 24 14 8b 54 24
005a5be0: 18 8b 74 24 0c 81 48 1c 01 01 00 00 83 48 14 1f
005a5bf0: 89 48 28 57 8b 7c 24 14 89 50 2c 89 70 30 89 78
005a5c00: 34 5f 5e c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a5bb0 <.text+0x1a4bb0>:
  5a5bb0:	56                                              	push   esi
  5a5bb1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5a5bb5:	8b c6                                           	mov    eax,esi
  5a5bb7:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a5bbc:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a5bc1:	75 3f                                           	jne    0x5a5c02
  5a5bc3:	e8 c8 37 1c 00                                  	call   0x769390
  5a5bc8:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a5bca:	8b c8                                           	mov    ecx,eax
  5a5bcc:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a5bd2:	56                                              	push   esi
  5a5bd3:	ff d0                                           	call   eax
  5a5bd5:	85 c0                                           	test   eax,eax
  5a5bd7:	74 29                                           	je     0x5a5c02
  5a5bd9:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  5a5bdd:	8b 54 24 18                                     	mov    edx,DWORD PTR [esp+0x18]
  5a5be1:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5a5be5:	81 48 1c 01 01 00 00                            	or     DWORD PTR [eax+0x1c],0x101
  5a5bec:	83 48 14 1f                                     	or     DWORD PTR [eax+0x14],0x1f
  5a5bf0:	89 48 28                                        	mov    DWORD PTR [eax+0x28],ecx
  5a5bf3:	57                                              	push   edi
  5a5bf4:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  5a5bf8:	89 50 2c                                        	mov    DWORD PTR [eax+0x2c],edx
  5a5bfb:	89 70 30                                        	mov    DWORD PTR [eax+0x30],esi
  5a5bfe:	89 78 34                                        	mov    DWORD PTR [eax+0x34],edi
  5a5c01:	5f                                              	pop    edi
  5a5c02:	5e                                              	pop    esi
  5a5c03:	c3                                              	ret
  5a5c04:	cc                                              	int3
  5a5c05:	cc                                              	int3
  5a5c06:	cc                                              	int3
  5a5c07:	cc                                              	int3
  5a5c08:	cc                                              	int3
  5a5c09:	cc                                              	int3
  5a5c0a:	cc                                              	int3
  5a5c0b:	cc                                              	int3
  5a5c0c:	cc                                              	int3
  5a5c0d:	cc                                              	int3
  5a5c0e:	cc                                              	int3
  5a5c0f:	cc                                              	int3
