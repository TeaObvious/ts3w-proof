# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9c30 (ScriptCore.CASUtils::CASUtils_SimBuilderSetupCASRoomObjectImpl)
Paired Ghidra pseudocode: 005A9C30_ScriptCore_CASUtils_CASUtils_SimBuilderSetupCASRoomObjectImpl.c
Window: [0x005a9c30, 0x005a9ce0) (176 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9ce0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9c30: 55 8b ec 83 e4 f0 83 ec 58 56 57 e8 30 d9 38 00
005a9c40: 8b 4d 10 8b 55 0c 51 52 8b c8 e8 31 e3 38 00 8b
005a9c50: f0 85 f6 74 79 8d 7e 04 8b c7 b9 01 00 00 00 f0
005a9c60: 0f c1 08 8b 56 08 8b 46 0c 8d 4c 24 10 51 c7 44
005a9c70: 24 14 c4 8b 87 04 c7 44 24 18 00 00 00 00 89 54
005a9c80: 24 1c 89 44 24 20 c7 44 24 24 18 00 00 00 c7 44
005a9c90: 24 28 10 00 00 00 e8 e5 96 0e 00 8b 4c 24 18 83
005a9ca0: c4 04 85 c9 74 0b 8b 11 8b 12 8d 44 24 20 50 ff
005a9cb0: d2 8b c7 83 c9 ff f0 0f c1 08 49 75 11 ba 01 00
005a9cc0: 00 00 87 17 8b 06 8b 10 6a 01 8b ce ff d2 5f 5e
005a9cd0: 8b e5 5d c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9c30 <.text+0x1a8c30>:
  5a9c30:	55                                              	push   ebp
  5a9c31:	8b ec                                           	mov    ebp,esp
  5a9c33:	83 e4 f0                                        	and    esp,0xfffffff0
  5a9c36:	83 ec 58                                        	sub    esp,0x58
  5a9c39:	56                                              	push   esi
  5a9c3a:	57                                              	push   edi
  5a9c3b:	e8 30 d9 38 00                                  	call   0x937570
  5a9c40:	8b 4d 10                                        	mov    ecx,DWORD PTR [ebp+0x10]
  5a9c43:	8b 55 0c                                        	mov    edx,DWORD PTR [ebp+0xc]
  5a9c46:	51                                              	push   ecx
  5a9c47:	52                                              	push   edx
  5a9c48:	8b c8                                           	mov    ecx,eax
  5a9c4a:	e8 31 e3 38 00                                  	call   0x937f80
  5a9c4f:	8b f0                                           	mov    esi,eax
  5a9c51:	85 f6                                           	test   esi,esi
  5a9c53:	74 79                                           	je     0x5a9cce
  5a9c55:	8d 7e 04                                        	lea    edi,[esi+0x4]
  5a9c58:	8b c7                                           	mov    eax,edi
  5a9c5a:	b9 01 00 00 00                                  	mov    ecx,0x1
  5a9c5f:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  5a9c63:	8b 56 08                                        	mov    edx,DWORD PTR [esi+0x8]
  5a9c66:	8b 46 0c                                        	mov    eax,DWORD PTR [esi+0xc]
  5a9c69:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  5a9c6d:	51                                              	push   ecx
  5a9c6e:	c7 44 24 14 c4 8b 87 04                         	mov    DWORD PTR [esp+0x14],0x4878bc4
  5a9c76:	c7 44 24 18 00 00 00 00                         	mov    DWORD PTR [esp+0x18],0x0
  5a9c7e:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  5a9c82:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  5a9c86:	c7 44 24 24 18 00 00 00                         	mov    DWORD PTR [esp+0x24],0x18
  5a9c8e:	c7 44 24 28 10 00 00 00                         	mov    DWORD PTR [esp+0x28],0x10
  5a9c96:	e8 e5 96 0e 00                                  	call   0x693380
  5a9c9b:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  5a9c9f:	83 c4 04                                        	add    esp,0x4
  5a9ca2:	85 c9                                           	test   ecx,ecx
  5a9ca4:	74 0b                                           	je     0x5a9cb1
  5a9ca6:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  5a9ca8:	8b 12                                           	mov    edx,DWORD PTR [edx]
  5a9caa:	8d 44 24 20                                     	lea    eax,[esp+0x20]
  5a9cae:	50                                              	push   eax
  5a9caf:	ff d2                                           	call   edx
  5a9cb1:	8b c7                                           	mov    eax,edi
  5a9cb3:	83 c9 ff                                        	or     ecx,0xffffffff
  5a9cb6:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  5a9cba:	49                                              	dec    ecx
  5a9cbb:	75 11                                           	jne    0x5a9cce
  5a9cbd:	ba 01 00 00 00                                  	mov    edx,0x1
  5a9cc2:	87 17                                           	xchg   DWORD PTR [edi],edx
  5a9cc4:	8b 06                                           	mov    eax,DWORD PTR [esi]
  5a9cc6:	8b 10                                           	mov    edx,DWORD PTR [eax]
  5a9cc8:	6a 01                                           	push   0x1
  5a9cca:	8b ce                                           	mov    ecx,esi
  5a9ccc:	ff d2                                           	call   edx
  5a9cce:	5f                                              	pop    edi
  5a9ccf:	5e                                              	pop    esi
  5a9cd0:	8b e5                                           	mov    esp,ebp
  5a9cd2:	5d                                              	pop    ebp
  5a9cd3:	c3                                              	ret
  5a9cd4:	cc                                              	int3
  5a9cd5:	cc                                              	int3
  5a9cd6:	cc                                              	int3
  5a9cd7:	cc                                              	int3
  5a9cd8:	cc                                              	int3
  5a9cd9:	cc                                              	int3
  5a9cda:	cc                                              	int3
  5a9cdb:	cc                                              	int3
  5a9cdc:	cc                                              	int3
  5a9cdd:	cc                                              	int3
  5a9cde:	cc                                              	int3
  5a9cdf:	cc                                              	int3
