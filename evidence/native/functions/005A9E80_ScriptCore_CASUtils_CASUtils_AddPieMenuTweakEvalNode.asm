# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x005a9e80 (ScriptCore.CASUtils::CASUtils_AddPieMenuTweakEvalNode)
Paired Ghidra pseudocode: 005A9E80_ScriptCore_CASUtils_CASUtils_AddPieMenuTweakEvalNode.c
Window: [0x005a9e80, 0x005a9fc0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x005a9fc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
005a9e80: 83 ec 14 56 e8 e7 d6 38 00 8b 4c 24 20 8b 54 24
005a9e90: 1c 51 52 8b c8 e8 e6 e0 38 00 8b f0 85 f6 0f 84
005a9ea0: 10 01 00 00 53 55 8d 6e 04 57 8b c5 b9 01 00 00
005a9eb0: 00 f0 0f c1 08 8b 15 fc a0 1e 01 52 8b ce e8 9d
005a9ec0: a3 38 00 8b f8 a1 84 d4 1d 01 50 8b ce e8 8e a3
005a9ed0: 38 00 8b 0d f0 a0 1e 01 51 8b ce 89 44 24 14 e8
005a9ee0: 7c a3 38 00 85 ff 8b d8 74 07 8b cf e8 bf 53 3a
005a9ef0: 00 85 db 0f 84 8b 00 00 00 f6 05 28 f4 1c 01 01
005a9f00: 75 1f 83 0d 28 f4 1c 01 01 68 68 f8 fd 00 e8 7d
005a9f10: 61 22 00 83 c4 04 a3 20 f4 1c 01 89 15 24 f4 1c
005a9f20: 01 8b 15 20 f4 1c 01 a1 24 f4 1c 01 8d 4c 24 14
005a9f30: 51 8b cb 89 54 24 18 89 44 24 1c c7 44 24 20 13
005a9f40: df d5 02 c7 44 24 24 00 00 00 00 e8 c0 31 3a 00
005a9f50: 8b f8 85 ff 74 0a 8b 57 08 8b 02 8d 4f 08 ff d0
005a9f60: 8b cf e8 a9 5e 25 00 8b 0d 40 9d 1d 01 6a 01 57
005a9f70: e8 8b 30 25 00 85 ff 74 0b 8b 57 08 8b 42 04 8d
005a9f80: 4f 08 ff d0 8b 44 24 10 85 c0 74 07 81 48 2c 00
005a9f90: 10 00 00 8b cd 83 ca ff f0 0f c1 11 4a 75 12 b8
005a9fa0: 01 00 00 00 87 45 00 8b 16 8b 02 6a 01 8b ce ff
005a9fb0: d0 5f 5d 5b 5e 83 c4 14 c3 cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
005a9e80 <.text+0x1a8e80>:
  5a9e80:	83 ec 14                                        	sub    esp,0x14
  5a9e83:	56                                              	push   esi
  5a9e84:	e8 e7 d6 38 00                                  	call   0x937570
  5a9e89:	8b 4c 24 20                                     	mov    ecx,DWORD PTR [esp+0x20]
  5a9e8d:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  5a9e91:	51                                              	push   ecx
  5a9e92:	52                                              	push   edx
  5a9e93:	8b c8                                           	mov    ecx,eax
  5a9e95:	e8 e6 e0 38 00                                  	call   0x937f80
  5a9e9a:	8b f0                                           	mov    esi,eax
  5a9e9c:	85 f6                                           	test   esi,esi
  5a9e9e:	0f 84 10 01 00 00                               	je     0x5a9fb4
  5a9ea4:	53                                              	push   ebx
  5a9ea5:	55                                              	push   ebp
  5a9ea6:	8d 6e 04                                        	lea    ebp,[esi+0x4]
  5a9ea9:	57                                              	push   edi
  5a9eaa:	8b c5                                           	mov    eax,ebp
  5a9eac:	b9 01 00 00 00                                  	mov    ecx,0x1
  5a9eb1:	f0 0f c1 08                                     	lock xadd DWORD PTR [eax],ecx
  5a9eb5:	8b 15 fc a0 1e 01                               	mov    edx,DWORD PTR ds:0x11ea0fc
  5a9ebb:	52                                              	push   edx
  5a9ebc:	8b ce                                           	mov    ecx,esi
  5a9ebe:	e8 9d a3 38 00                                  	call   0x934260
  5a9ec3:	8b f8                                           	mov    edi,eax
  5a9ec5:	a1 84 d4 1d 01                                  	mov    eax,ds:0x11dd484
  5a9eca:	50                                              	push   eax
  5a9ecb:	8b ce                                           	mov    ecx,esi
  5a9ecd:	e8 8e a3 38 00                                  	call   0x934260
  5a9ed2:	8b 0d f0 a0 1e 01                               	mov    ecx,DWORD PTR ds:0x11ea0f0
  5a9ed8:	51                                              	push   ecx
  5a9ed9:	8b ce                                           	mov    ecx,esi
  5a9edb:	89 44 24 14                                     	mov    DWORD PTR [esp+0x14],eax
  5a9edf:	e8 7c a3 38 00                                  	call   0x934260
  5a9ee4:	85 ff                                           	test   edi,edi
  5a9ee6:	8b d8                                           	mov    ebx,eax
  5a9ee8:	74 07                                           	je     0x5a9ef1
  5a9eea:	8b cf                                           	mov    ecx,edi
  5a9eec:	e8 bf 53 3a 00                                  	call   0x94f2b0
  5a9ef1:	85 db                                           	test   ebx,ebx
  5a9ef3:	0f 84 8b 00 00 00                               	je     0x5a9f84
  5a9ef9:	f6 05 28 f4 1c 01 01                            	test   BYTE PTR ds:0x11cf428,0x1
  5a9f00:	75 1f                                           	jne    0x5a9f21
  5a9f02:	83 0d 28 f4 1c 01 01                            	or     DWORD PTR ds:0x11cf428,0x1
  5a9f09:	68 68 f8 fd 00                                  	push   0xfdf868
  5a9f0e:	e8 7d 61 22 00                                  	call   0x7d0090
  5a9f13:	83 c4 04                                        	add    esp,0x4
  5a9f16:	a3 20 f4 1c 01                                  	mov    ds:0x11cf420,eax
  5a9f1b:	89 15 24 f4 1c 01                               	mov    DWORD PTR ds:0x11cf424,edx
  5a9f21:	8b 15 20 f4 1c 01                               	mov    edx,DWORD PTR ds:0x11cf420
  5a9f27:	a1 24 f4 1c 01                                  	mov    eax,ds:0x11cf424
  5a9f2c:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  5a9f30:	51                                              	push   ecx
  5a9f31:	8b cb                                           	mov    ecx,ebx
  5a9f33:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  5a9f37:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  5a9f3b:	c7 44 24 20 13 df d5 02                         	mov    DWORD PTR [esp+0x20],0x2d5df13
  5a9f43:	c7 44 24 24 00 00 00 00                         	mov    DWORD PTR [esp+0x24],0x0
  5a9f4b:	e8 c0 31 3a 00                                  	call   0x94d110
  5a9f50:	8b f8                                           	mov    edi,eax
  5a9f52:	85 ff                                           	test   edi,edi
  5a9f54:	74 0a                                           	je     0x5a9f60
  5a9f56:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  5a9f59:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5a9f5b:	8d 4f 08                                        	lea    ecx,[edi+0x8]
  5a9f5e:	ff d0                                           	call   eax
  5a9f60:	8b cf                                           	mov    ecx,edi
  5a9f62:	e8 a9 5e 25 00                                  	call   0x7ffe10
  5a9f67:	8b 0d 40 9d 1d 01                               	mov    ecx,DWORD PTR ds:0x11d9d40
  5a9f6d:	6a 01                                           	push   0x1
  5a9f6f:	57                                              	push   edi
  5a9f70:	e8 8b 30 25 00                                  	call   0x7fd000
  5a9f75:	85 ff                                           	test   edi,edi
  5a9f77:	74 0b                                           	je     0x5a9f84
  5a9f79:	8b 57 08                                        	mov    edx,DWORD PTR [edi+0x8]
  5a9f7c:	8b 42 04                                        	mov    eax,DWORD PTR [edx+0x4]
  5a9f7f:	8d 4f 08                                        	lea    ecx,[edi+0x8]
  5a9f82:	ff d0                                           	call   eax
  5a9f84:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  5a9f88:	85 c0                                           	test   eax,eax
  5a9f8a:	74 07                                           	je     0x5a9f93
  5a9f8c:	81 48 2c 00 10 00 00                            	or     DWORD PTR [eax+0x2c],0x1000
  5a9f93:	8b cd                                           	mov    ecx,ebp
  5a9f95:	83 ca ff                                        	or     edx,0xffffffff
  5a9f98:	f0 0f c1 11                                     	lock xadd DWORD PTR [ecx],edx
  5a9f9c:	4a                                              	dec    edx
  5a9f9d:	75 12                                           	jne    0x5a9fb1
  5a9f9f:	b8 01 00 00 00                                  	mov    eax,0x1
  5a9fa4:	87 45 00                                        	xchg   DWORD PTR [ebp+0x0],eax
  5a9fa7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5a9fa9:	8b 02                                           	mov    eax,DWORD PTR [edx]
  5a9fab:	6a 01                                           	push   0x1
  5a9fad:	8b ce                                           	mov    ecx,esi
  5a9faf:	ff d0                                           	call   eax
  5a9fb1:	5f                                              	pop    edi
  5a9fb2:	5d                                              	pop    ebp
  5a9fb3:	5b                                              	pop    ebx
  5a9fb4:	5e                                              	pop    esi
  5a9fb5:	83 c4 14                                        	add    esp,0x14
  5a9fb8:	c3                                              	ret
  5a9fb9:	cc                                              	int3
  5a9fba:	cc                                              	int3
  5a9fbb:	cc                                              	int3
  5a9fbc:	cc                                              	int3
  5a9fbd:	cc                                              	int3
  5a9fbe:	cc                                              	int3
  5a9fbf:	cc                                              	int3
