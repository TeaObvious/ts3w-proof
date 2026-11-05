# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005aab00 (ScriptCore.CASUtils::CASUtils_CompoundBlendGetBlendInfoImpl)
Paired Ghidra pseudocode: 005AAB00_ScriptCore_CASUtils_CASUtils_CompoundBlendGetBlendInfoImpl.c
Window: [0x005aab00, 0x005aab90) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x005aab90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005aab00: 33 c0 56 8b 74 24 08 89 06 89 46 04 89 46 08 89
005aab10: 46 0c 89 46 10 57 8b 7c 24 10 89 46 14 8b c7 25
005aab20: 00 00 00 ff 3d 00 00 00 35 75 5b e8 60 e8 1b 00
005aab30: 8b 10 8b c8 8b 82 cc 00 00 00 57 ff d0 85 c0 74
005aab40: 45 8b 50 40 8d 78 40 53 33 db 3b d7 74 37 8b ff
005aab50: 8b 12 83 c3 01 3b d7 75 f7 8b 4c 24 18 3b d9 76
005aab60: 24 51 8b c8 e8 87 eb ff ff d9 40 10 8b 08 d9 5e
005aab70: 10 8b 50 04 89 4e 08 8b 48 0c 89 56 0c 8b 50 08
005aab80: 89 4e 04 89 16 5b 5f 8b c6 5e c3 cc cc cc cc cc

LINEAR DISASSEMBLY
005aab00 <.text+0x1a9b00>:
  5aab00:	33 c0                                           	xor    eax,eax
  5aab02:	56                                              	push   esi
  5aab03:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  5aab07:	89 06                                           	mov    DWORD PTR [esi],eax
  5aab09:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  5aab0c:	89 46 08                                        	mov    DWORD PTR [esi+0x8],eax
  5aab0f:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  5aab12:	89 46 10                                        	mov    DWORD PTR [esi+0x10],eax
  5aab15:	57                                              	push   edi
  5aab16:	8b 7c 24 10                                     	mov    edi,DWORD PTR [esp+0x10]
  5aab1a:	89 46 14                                        	mov    DWORD PTR [esi+0x14],eax
  5aab1d:	8b c7                                           	mov    eax,edi
  5aab1f:	25 00 00 00 ff                                  	and    eax,0xff000000
  5aab24:	3d 00 00 00 35                                  	cmp    eax,0x35000000
  5aab29:	75 5b                                           	jne    0x5aab86
  5aab2b:	e8 60 e8 1b 00                                  	call   0x769390
  5aab30:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5aab32:	8b c8                                           	mov    ecx,eax
  5aab34:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  5aab3a:	57                                              	push   edi
  5aab3b:	ff d0                                           	call   eax
  5aab3d:	85 c0                                           	test   eax,eax
  5aab3f:	74 45                                           	je     0x5aab86
  5aab41:	8b 50 40                                        	mov    edx,DWORD PTR [eax+0x40]
  5aab44:	8d 78 40                                        	lea    edi,[eax+0x40]
  5aab47:	53                                              	push   ebx
  5aab48:	33 db                                           	xor    ebx,ebx
  5aab4a:	3b d7                                           	cmp    edx,edi
  5aab4c:	74 37                                           	je     0x5aab85
  5aab4e:	8b ff                                           	mov    edi,edi
  5aab50:	8b 12                                           	mov    edx,DWORD PTR [edx]
  5aab52:	83 c3 01                                        	add    ebx,0x1
  5aab55:	3b d7                                           	cmp    edx,edi
  5aab57:	75 f7                                           	jne    0x5aab50
  5aab59:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5aab5d:	3b d9                                           	cmp    ebx,ecx
  5aab5f:	76 24                                           	jbe    0x5aab85
  5aab61:	51                                              	push   ecx
  5aab62:	8b c8                                           	mov    ecx,eax
  5aab64:	e8 87 eb ff ff                                  	call   0x5a96f0
  5aab69:	d9 40 10                                        	fld    DWORD PTR [eax+0x10]
  5aab6c:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  5aab6e:	d9 5e 10                                        	fstp   DWORD PTR [esi+0x10]
  5aab71:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  5aab74:	89 4e 08                                        	mov    DWORD PTR [esi+0x8],ecx
  5aab77:	8b 48 0c                                        	mov    ecx,DWORD PTR [eax+0xc]
  5aab7a:	89 56 0c                                        	mov    DWORD PTR [esi+0xc],edx
  5aab7d:	8b 50 08                                        	mov    edx,DWORD PTR [eax+0x8]
  5aab80:	89 4e 04                                        	mov    DWORD PTR [esi+0x4],ecx
  5aab83:	89 16                                           	mov    DWORD PTR [esi],edx
  5aab85:	5b                                              	pop    ebx
  5aab86:	5f                                              	pop    edi
  5aab87:	8b c6                                           	mov    eax,esi
  5aab89:	5e                                              	pop    esi
  5aab8a:	c3                                              	ret
  5aab8b:	cc                                              	int3
  5aab8c:	cc                                              	int3
  5aab8d:	cc                                              	int3
  5aab8e:	cc                                              	int3
  5aab8f:	cc                                              	int3
