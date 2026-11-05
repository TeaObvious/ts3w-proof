# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076cb50 (ScriptCore.Simulator::Simulator_DisableScriptImpl)
Paired Ghidra pseudocode: 0076CB50_ScriptCore_Simulator_Simulator_DisableScriptImpl.c
Window: [0x0076cb50, 0x0076cbc0) (112 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076cbc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076cb50: 56 e8 3a c8 ff ff 8b f0 85 f6 74 59 8b 06 8b 90
0076cb60: 14 01 00 00 53 8b 5c 24 0c 57 8b 7c 24 14 57 53
0076cb70: 8b ce ff d2 84 c0 74 27 e8 f3 a9 1c 00 85 c0 74
0076cb80: 32 57 53 8b c8 e8 f6 b3 1c 00 85 c0 74 25 6a 00
0076cb90: 50 6a 20 e8 28 8b 1c 00 83 c4 0c 5f 5b 5e c3 8b
0076cba0: c3 0b c7 74 0e 8b 16 8b 82 0c 01 00 00 57 53 8b
0076cbb0: ce ff d0 5f 5b 5e c3 cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076cb50 <.text+0x36bb50>:
  76cb50:	56                                              	push   esi
  76cb51:	e8 3a c8 ff ff                                  	call   0x769390
  76cb56:	8b f0                                           	mov    esi,eax
  76cb58:	85 f6                                           	test   esi,esi
  76cb5a:	74 59                                           	je     0x76cbb5
  76cb5c:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76cb5e:	8b 90 14 01 00 00                               	mov    edx,DWORD PTR [eax+0x114]
  76cb64:	53                                              	push   ebx
  76cb65:	8b 5c 24 0c                                     	mov    ebx,DWORD PTR [esp+0xc]
  76cb69:	57                                              	push   edi
  76cb6a:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  76cb6e:	57                                              	push   edi
  76cb6f:	53                                              	push   ebx
  76cb70:	8b ce                                           	mov    ecx,esi
  76cb72:	ff d2                                           	call   edx
  76cb74:	84 c0                                           	test   al,al
  76cb76:	74 27                                           	je     0x76cb9f
  76cb78:	e8 f3 a9 1c 00                                  	call   0x937570
  76cb7d:	85 c0                                           	test   eax,eax
  76cb7f:	74 32                                           	je     0x76cbb3
  76cb81:	57                                              	push   edi
  76cb82:	53                                              	push   ebx
  76cb83:	8b c8                                           	mov    ecx,eax
  76cb85:	e8 f6 b3 1c 00                                  	call   0x937f80
  76cb8a:	85 c0                                           	test   eax,eax
  76cb8c:	74 25                                           	je     0x76cbb3
  76cb8e:	6a 00                                           	push   0x0
  76cb90:	50                                              	push   eax
  76cb91:	6a 20                                           	push   0x20
  76cb93:	e8 28 8b 1c 00                                  	call   0x9356c0
  76cb98:	83 c4 0c                                        	add    esp,0xc
  76cb9b:	5f                                              	pop    edi
  76cb9c:	5b                                              	pop    ebx
  76cb9d:	5e                                              	pop    esi
  76cb9e:	c3                                              	ret
  76cb9f:	8b c3                                           	mov    eax,ebx
  76cba1:	0b c7                                           	or     eax,edi
  76cba3:	74 0e                                           	je     0x76cbb3
  76cba5:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76cba7:	8b 82 0c 01 00 00                               	mov    eax,DWORD PTR [edx+0x10c]
  76cbad:	57                                              	push   edi
  76cbae:	53                                              	push   ebx
  76cbaf:	8b ce                                           	mov    ecx,esi
  76cbb1:	ff d0                                           	call   eax
  76cbb3:	5f                                              	pop    edi
  76cbb4:	5b                                              	pop    ebx
  76cbb5:	5e                                              	pop    esi
  76cbb6:	c3                                              	ret
  76cbb7:	cc                                              	int3
  76cbb8:	cc                                              	int3
  76cbb9:	cc                                              	int3
  76cbba:	cc                                              	int3
  76cbbb:	cc                                              	int3
  76cbbc:	cc                                              	int3
  76cbbd:	cc                                              	int3
  76cbbe:	cc                                              	int3
  76cbbf:	cc                                              	int3
