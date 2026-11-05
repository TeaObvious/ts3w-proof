# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a6c70 (ScriptCore.CASUtils::CASUtils_BlendUnitGetBlendKeyAtIndexImpl)
Paired Ghidra pseudocode: 005A6C70_ScriptCore_CASUtils_CASUtils_BlendUnitGetBlendKeyAtIndexImpl.c
Window: [0x005a6c70, 0x005a6ce0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a6ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a6c70: 56 8b 74 24 0c 8b c6 25 00 00 00 ff 3d 00 00 00
005a6c80: 35 74 13 8b 44 24 08 33 c9 89 08 89 48 04 89 48
005a6c90: 08 89 48 0c 5e c3 e8 f5 26 1c 00 8b 10 8b c8 8b
005a6ca0: 82 cc 00 00 00 56 ff d0 85 c0 74 d7 8b 4c 24 10
005a6cb0: 57 51 8b c8 e8 a7 d0 ff ff 8b 70 0c 8b 78 08 8b
005a6cc0: 08 8b 50 04 8b 44 24 0c 89 38 89 70 04 5f 89 48
005a6cd0: 08 89 50 0c 5e c3 cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a6c70 <.text+0x1a5c70>:
  5a6c70:	56                                              	push   esi
  5a6c71:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  5a6c75:	8b c6                                           	mov    eax,esi
  5a6c77:	25 00 00 00 ff                                  	and    eax,0xff000000
  5a6c7c:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5a6c81:	74 13                                           	je     0x5a6c96
  5a6c83:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5a6c87:	33 c9                                           	xor    ecx,ecx
  5a6c89:	89 08                                           	mov    DWORD PTR [eax],ecx
  5a6c8b:	89 48 04                                        	mov    DWORD PTR [eax+0x4],ecx
  5a6c8e:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5a6c91:	89 48 0c                                        	mov    DWORD PTR [eax+0xc],ecx
  5a6c94:	5e                                              	pop    esi
  5a6c95:	c3                                              	ret
  5a6c96:	e8 f5 26 1c 00                                  	call   0x769390
  5a6c9b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a6c9d:	8b c8                                           	mov    ecx,eax
  5a6c9f:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5a6ca5:	56                                              	push   esi
  5a6ca6:	ff d0                                           	call   eax
  5a6ca8:	85 c0                                           	test   eax,eax
  5a6caa:	74 d7                                           	je     0x5a6c83
  5a6cac:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  5a6cb0:	57                                              	push   edi
  5a6cb1:	51                                              	push   ecx
  5a6cb2:	8b c8                                           	mov    ecx,eax
  5a6cb4:	e8 a7 d0 ff ff                                  	call   0x5a3d60
  5a6cb9:	8b 70 0c                                        	mov    esi,DWORD PTR [eax+0xc]
  5a6cbc:	8b 78 08                                        	mov    edi,DWORD PTR [eax+0x8]
  5a6cbf:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  5a6cc1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5a6cc4:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  5a6cc8:	89 38                                           	mov    DWORD PTR [eax],edi
  5a6cca:	89 70 04                                        	mov    DWORD PTR [eax+0x4],esi
  5a6ccd:	5f                                              	pop    edi
  5a6cce:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  5a6cd1:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  5a6cd4:	5e                                              	pop    esi
  5a6cd5:	c3                                              	ret
  5a6cd6:	cc                                              	int3
  5a6cd7:	cc                                              	int3
  5a6cd8:	cc                                              	int3
  5a6cd9:	cc                                              	int3
  5a6cda:	cc                                              	int3
  5a6cdb:	cc                                              	int3
  5a6cdc:	cc                                              	int3
  5a6cdd:	cc                                              	int3
  5a6cde:	cc                                              	int3
  5a6cdf:	cc                                              	int3
