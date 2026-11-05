# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce8e40 (ScriptCore.UserToolUtils::UserToolUtils_CreateNewCollectionImpl)
Paired Ghidra pseudocode: 00CE8E40_ScriptCore_UserToolUtils_UserToolUtils_CreateNewCollectionImpl.c
Window: [0x00ce8e40, 0x00ce8f30) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce8f30
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce8e40: 83 ec 20 56 8b 35 c8 9a 1d 01 85 f6 0f 84 cf 00
00ce8e50: 00 00 e8 39 05 a8 ff 8b 4c 24 28 85 c9 0f 84 be
00ce8e60: 00 00 00 85 c0 0f 84 b6 00 00 00 8b 10 51 8b c8
00ce8e70: 8b 42 58 ff d0 85 c0 0f 84 a4 00 00 00 66 83 38
00ce8e80: 00 b9 54 8e 1c 01 89 4c 24 04 89 4c 24 08 c7 44
00ce8e90: 24 10 64 16 08 01 c7 44 24 0c 56 8e 1c 01 8b c8
00ce8ea0: 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1 f9 57
00ce8eb0: 8d 0c 48 51 50 8d 4c 24 10 e8 a2 fe 71 ff 8b 44
00ce8ec0: 24 38 8b 54 24 34 8b 4c 24 40 89 54 24 18 8b 54
00ce8ed0: 24 3c 89 44 24 1c 8b 44 24 30 89 4c 24 20 50 8d
00ce8ee0: 4c 24 1c 89 54 24 28 51 8d 54 24 10 52 8b ce e8
00ce8ef0: ac 7e af ff 8b 4c 24 10 8b f0 8b 44 24 08 2b c8
00ce8f00: 83 e1 fe 83 f9 02 8b fa 7e 0d 85 c0 74 09 50 e8
00ce8f10: cc b5 7f ff 83 c4 04 8b d7 5f 8b c6 5e 83 c4 20
00ce8f20: c3 33 c0 33 d2 5e 83 c4 20 c3 cc cc cc cc cc cc

LINEAR DISASSEMBLY
00ce8e40 <.text+0x8e7e40>:
  ce8e40:	83 ec 20                                        	sub    esp,0x20
  ce8e43:	56                                              	push   esi
  ce8e44:	8b 35 c8 9a 1d 01                               	mov    esi,DWORD PTR ds:0x11d9ac8
  ce8e4a:	85 f6                                           	test   esi,esi
  ce8e4c:	0f 84 cf 00 00 00                               	je     0xce8f21
  ce8e52:	e8 39 05 a8 ff                                  	call   0x769390
  ce8e57:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  ce8e5b:	85 c9                                           	test   ecx,ecx
  ce8e5d:	0f 84 be 00 00 00                               	je     0xce8f21
  ce8e63:	85 c0                                           	test   eax,eax
  ce8e65:	0f 84 b6 00 00 00                               	je     0xce8f21
  ce8e6b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce8e6d:	51                                              	push   ecx
  ce8e6e:	8b c8                                           	mov    ecx,eax
  ce8e70:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  ce8e73:	ff d0                                           	call   eax
  ce8e75:	85 c0                                           	test   eax,eax
  ce8e77:	0f 84 a4 00 00 00                               	je     0xce8f21
  ce8e7d:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  ce8e81:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  ce8e86:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  ce8e8a:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  ce8e8e:	c7 44 24 10 64 16 08 01                         	mov    DWORD PTR [esp+0x10],0x1081664
  ce8e96:	c7 44 24 0c 56 8e 1c 01                         	mov    DWORD PTR [esp+0xc],0x11c8e56
  ce8e9e:	8b c8                                           	mov    ecx,eax
  ce8ea0:	74 09                                           	je     0xce8eab
  ce8ea2:	83 c1 02                                        	add    ecx,0x2
  ce8ea5:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  ce8ea9:	75 f7                                           	jne    0xce8ea2
  ce8eab:	2b c8                                           	sub    ecx,eax
  ce8ead:	d1 f9                                           	sar    ecx,1
  ce8eaf:	57                                              	push   edi
  ce8eb0:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
  ce8eb3:	51                                              	push   ecx
  ce8eb4:	50                                              	push   eax
  ce8eb5:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ce8eb9:	e8 a2 fe 71 ff                                  	call   0x408d60
  ce8ebe:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  ce8ec2:	8b 54 24 34                                     	mov    edx,DWORD PTR [esp+0x34]
  ce8ec6:	8b 4c 24 40                                     	mov    ecx,DWORD PTR [esp+0x40]
  ce8eca:	89 54 24 18                                     	mov    DWORD PTR [esp+0x18],edx
  ce8ece:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  ce8ed2:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  ce8ed6:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  ce8eda:	89 4c 24 20                                     	mov    DWORD PTR [esp+0x20],ecx
  ce8ede:	50                                              	push   eax
  ce8edf:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  ce8ee3:	89 54 24 28                                     	mov    DWORD PTR [esp+0x28],edx
  ce8ee7:	51                                              	push   ecx
  ce8ee8:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  ce8eec:	52                                              	push   edx
  ce8eed:	8b ce                                           	mov    ecx,esi
  ce8eef:	e8 ac 7e af ff                                  	call   0x7e0da0
  ce8ef4:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  ce8ef8:	8b f0                                           	mov    esi,eax
  ce8efa:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce8efe:	2b c8                                           	sub    ecx,eax
  ce8f00:	83 e1 fe                                        	and    ecx,0xfffffffe
  ce8f03:	83 f9 02                                        	cmp    ecx,0x2
  ce8f06:	8b fa                                           	mov    edi,edx
  ce8f08:	7e 0d                                           	jle    0xce8f17
  ce8f0a:	85 c0                                           	test   eax,eax
  ce8f0c:	74 09                                           	je     0xce8f17
  ce8f0e:	50                                              	push   eax
  ce8f0f:	e8 cc b5 7f ff                                  	call   0x4e44e0
  ce8f14:	83 c4 04                                        	add    esp,0x4
  ce8f17:	8b d7                                           	mov    edx,edi
  ce8f19:	5f                                              	pop    edi
  ce8f1a:	8b c6                                           	mov    eax,esi
  ce8f1c:	5e                                              	pop    esi
  ce8f1d:	83 c4 20                                        	add    esp,0x20
  ce8f20:	c3                                              	ret
  ce8f21:	33 c0                                           	xor    eax,eax
  ce8f23:	33 d2                                           	xor    edx,edx
  ce8f25:	5e                                              	pop    esi
  ce8f26:	83 c4 20                                        	add    esp,0x20
  ce8f29:	c3                                              	ret
  ce8f2a:	cc                                              	int3
  ce8f2b:	cc                                              	int3
  ce8f2c:	cc                                              	int3
  ce8f2d:	cc                                              	int3
  ce8f2e:	cc                                              	int3
  ce8f2f:	cc                                              	int3
