# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00747e70 (ScriptCore.OnlineFeatures::OnlineFeaturesHost_FunctionProxy)
Paired Ghidra pseudocode: 00747E70_ScriptCore_OnlineFeatures_OnlineFeaturesHost_FunctionProxy.c
Window: [0x00747e70, 0x00747f60) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00747f60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00747e70: 83 ec 34 8b 44 24 38 56 57 50 8d 4c 24 20 51 e8
00747e80: 3c f2 ff ff 8b 00 83 c4 08 33 ff 50 8d 4c 24 10
00747e90: 89 7c 24 10 89 7c 24 14 89 7c 24 18 c7 44 24 1c
00747ea0: 84 3f 00 01 e8 e7 36 cc ff 8b 54 24 24 8b 44 24
00747eb0: 1c 2b d0 83 e2 fe 83 fa 02 7e 0d 3b c7 74 09 50
00747ec0: e8 1b c6 d9 ff 83 c4 04 e8 c3 14 02 00 8b f0 3b
00747ed0: f7 74 54 6a 01 6a 10 8d 44 24 14 50 6a 09 6a 13
00747ee0: 8d 4c 24 30 c7 44 24 30 f4 a6 fb 00 66 89 7c 24
00747ef0: 38 66 89 7c 24 3a e8 c5 da da ff 8b 16 8b 52 50
00747f00: 8d 44 24 08 50 8d 4c 24 20 51 8b ce ff d2 f6 44
00747f10: 24 24 04 c7 44 24 1c f4 a6 fb 00 74 0a 57 8d 4c
00747f20: 24 20 e8 39 d8 da ff 8b 4c 24 14 8b 44 24 0c 8b
00747f30: 74 24 08 2b c8 83 e1 fe 83 f9 02 7e 0d 3b c7 74
00747f40: 09 50 e8 99 c5 d9 ff 83 c4 04 5f 8b c6 5e 83 c4
00747f50: 34 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00747e70 <.text+0x346e70>:
  747e70:	83 ec 34                                        	sub    esp,0x34
  747e73:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  747e77:	56                                              	push   esi
  747e78:	57                                              	push   edi
  747e79:	50                                              	push   eax
  747e7a:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  747e7e:	51                                              	push   ecx
  747e7f:	e8 3c f2 ff ff                                  	call   0x7470c0
  747e84:	8b 00                                           	mov    eax,DWORD PTR [eax]
  747e86:	83 c4 08                                        	add    esp,0x8
  747e89:	33 ff                                           	xor    edi,edi
  747e8b:	50                                              	push   eax
  747e8c:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  747e90:	89 7c 24 10                                     	mov    DWORD PTR [esp+0x10],edi
  747e94:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  747e98:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  747e9c:	c7 44 24 1c 84 3f 00 01                         	mov    DWORD PTR [esp+0x1c],0x1003f84
  747ea4:	e8 e7 36 cc ff                                  	call   0x40b590
  747ea9:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  747ead:	8b 44 24 1c                                     	mov    eax,DWORD PTR [esp+0x1c]
  747eb1:	2b d0                                           	sub    edx,eax
  747eb3:	83 e2 fe                                        	and    edx,0xfffffffe
  747eb6:	83 fa 02                                        	cmp    edx,0x2
  747eb9:	7e 0d                                           	jle    0x747ec8
  747ebb:	3b c7                                           	cmp    eax,edi
  747ebd:	74 09                                           	je     0x747ec8
  747ebf:	50                                              	push   eax
  747ec0:	e8 1b c6 d9 ff                                  	call   0x4e44e0
  747ec5:	83 c4 04                                        	add    esp,0x4
  747ec8:	e8 c3 14 02 00                                  	call   0x769390
  747ecd:	8b f0                                           	mov    esi,eax
  747ecf:	3b f7                                           	cmp    esi,edi
  747ed1:	74 54                                           	je     0x747f27
  747ed3:	6a 01                                           	push   0x1
  747ed5:	6a 10                                           	push   0x10
  747ed7:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  747edb:	50                                              	push   eax
  747edc:	6a 09                                           	push   0x9
  747ede:	6a 13                                           	push   0x13
  747ee0:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  747ee4:	c7 44 24 30 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x30],0xfba6f4
  747eec:	66 89 7c 24 38                                  	mov    WORD PTR [esp+0x38],di
  747ef1:	66 89 7c 24 3a                                  	mov    WORD PTR [esp+0x3a],di
  747ef6:	e8 c5 da da ff                                  	call   0x4f59c0
  747efb:	8b 16                                           	mov    edx,DWORD PTR [esi]
  747efd:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  747f00:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  747f04:	50                                              	push   eax
  747f05:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  747f09:	51                                              	push   ecx
  747f0a:	8b ce                                           	mov    ecx,esi
  747f0c:	ff d2                                           	call   edx
  747f0e:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  747f13:	c7 44 24 1c f4 a6 fb 00                         	mov    DWORD PTR [esp+0x1c],0xfba6f4
  747f1b:	74 0a                                           	je     0x747f27
  747f1d:	57                                              	push   edi
  747f1e:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  747f22:	e8 39 d8 da ff                                  	call   0x4f5760
  747f27:	8b 4c 24 14                                     	mov    ecx,DWORD PTR [esp+0x14]
  747f2b:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  747f2f:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  747f33:	2b c8                                           	sub    ecx,eax
  747f35:	83 e1 fe                                        	and    ecx,0xfffffffe
  747f38:	83 f9 02                                        	cmp    ecx,0x2
  747f3b:	7e 0d                                           	jle    0x747f4a
  747f3d:	3b c7                                           	cmp    eax,edi
  747f3f:	74 09                                           	je     0x747f4a
  747f41:	50                                              	push   eax
  747f42:	e8 99 c5 d9 ff                                  	call   0x4e44e0
  747f47:	83 c4 04                                        	add    esp,0x4
  747f4a:	5f                                              	pop    edi
  747f4b:	8b c6                                           	mov    eax,esi
  747f4d:	5e                                              	pop    esi
  747f4e:	83 c4 34                                        	add    esp,0x34
  747f51:	c3                                              	ret
  747f52:	cc                                              	int3
  747f53:	cc                                              	int3
  747f54:	cc                                              	int3
  747f55:	cc                                              	int3
  747f56:	cc                                              	int3
  747f57:	cc                                              	int3
  747f58:	cc                                              	int3
  747f59:	cc                                              	int3
  747f5a:	cc                                              	int3
  747f5b:	cc                                              	int3
  747f5c:	cc                                              	int3
  747f5d:	cc                                              	int3
  747f5e:	cc                                              	int3
  747f5f:	cc                                              	int3
