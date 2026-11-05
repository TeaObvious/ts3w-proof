# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ce8f30 (ScriptCore.UserToolUtils::UserToolUtils_ModifyCollectionInfoImpl)
Paired Ghidra pseudocode: 00CE8F30_ScriptCore_UserToolUtils_UserToolUtils_ModifyCollectionInfoImpl.c
Window: [0x00ce8f30, 0x00ce9020) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ce9020
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ce8f30: 83 ec 20 56 8b 35 c8 9a 1d 01 85 f6 0f 84 d5 00
00ce8f40: 00 00 e8 49 04 a8 ff 8b 4c 24 30 85 c9 0f 84 c4
00ce8f50: 00 00 00 85 c0 0f 84 bc 00 00 00 8b 10 51 8b c8
00ce8f60: 8b 42 58 ff d0 85 c0 0f 84 aa 00 00 00 66 83 38
00ce8f70: 00 b9 54 8e 1c 01 89 4c 24 04 89 4c 24 08 c7 44
00ce8f80: 24 10 64 16 08 01 c7 44 24 0c 56 8e 1c 01 8b c8
00ce8f90: 74 09 83 c1 02 66 83 39 00 75 f7 2b c8 d1 f9 53
00ce8fa0: 8d 0c 48 51 50 8d 4c 24 10 e8 b2 fd 71 ff 8b 44
00ce8fb0: 24 40 8b 54 24 3c 8b 4c 24 48 89 44 24 1c 8b 44
00ce8fc0: 24 38 50 8b 44 24 34 89 54 24 1c 8b 54 24 48 89
00ce8fd0: 4c 24 24 8d 4c 24 1c 51 8b 4c 24 34 89 54 24 2c
00ce8fe0: 8d 54 24 10 52 50 51 8b ce e8 82 5b af ff 8b 54
00ce8ff0: 24 10 8a d8 8b 44 24 08 2b d0 83 e2 fe 83 fa 02
00ce9000: 7e 0d 85 c0 74 09 50 e8 d4 b4 7f ff 83 c4 04 8a
00ce9010: c3 5b 5e 83 c4 20 c3 32 c0 5e 83 c4 20 c3 cc cc

LINEAR DISASSEMBLY
00ce8f30 <.text+0x8e7f30>:
  ce8f30:	83 ec 20                                        	sub    esp,0x20
  ce8f33:	56                                              	push   esi
  ce8f34:	8b 35 c8 9a 1d 01                               	mov    esi,DWORD PTR ds:0x11d9ac8
  ce8f3a:	85 f6                                           	test   esi,esi
  ce8f3c:	0f 84 d5 00 00 00                               	je     0xce9017
  ce8f42:	e8 49 04 a8 ff                                  	call   0x769390
  ce8f47:	8b 4c 24 30                                     	mov    ecx,DWORD PTR [esp+0x30]
  ce8f4b:	85 c9                                           	test   ecx,ecx
  ce8f4d:	0f 84 c4 00 00 00                               	je     0xce9017
  ce8f53:	85 c0                                           	test   eax,eax
  ce8f55:	0f 84 bc 00 00 00                               	je     0xce9017
  ce8f5b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  ce8f5d:	51                                              	push   ecx
  ce8f5e:	8b c8                                           	mov    ecx,eax
  ce8f60:	8b 42 58                                        	mov    eax,DWORD PTR [edx+0x58]
  ce8f63:	ff d0                                           	call   eax
  ce8f65:	85 c0                                           	test   eax,eax
  ce8f67:	0f 84 aa 00 00 00                               	je     0xce9017
  ce8f6d:	66 83 38 00                                     	cmp    WORD PTR [eax],0x0
  ce8f71:	b9 54 8e 1c 01                                  	mov    ecx,0x11c8e54
  ce8f76:	89 4c 24 04                                     	mov    DWORD PTR [esp+0x4],ecx
  ce8f7a:	89 4c 24 08                                     	mov    DWORD PTR [esp+0x8],ecx
  ce8f7e:	c7 44 24 10 64 16 08 01                         	mov    DWORD PTR [esp+0x10],0x1081664
  ce8f86:	c7 44 24 0c 56 8e 1c 01                         	mov    DWORD PTR [esp+0xc],0x11c8e56
  ce8f8e:	8b c8                                           	mov    ecx,eax
  ce8f90:	74 09                                           	je     0xce8f9b
  ce8f92:	83 c1 02                                        	add    ecx,0x2
  ce8f95:	66 83 39 00                                     	cmp    WORD PTR [ecx],0x0
  ce8f99:	75 f7                                           	jne    0xce8f92
  ce8f9b:	2b c8                                           	sub    ecx,eax
  ce8f9d:	d1 f9                                           	sar    ecx,1
  ce8f9f:	53                                              	push   ebx
  ce8fa0:	8d 0c 48                                        	lea    ecx,[eax+ecx*2]
  ce8fa3:	51                                              	push   ecx
  ce8fa4:	50                                              	push   eax
  ce8fa5:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  ce8fa9:	e8 b2 fd 71 ff                                  	call   0x408d60
  ce8fae:	8b 44 24 40                                     	mov    eax,DWORD PTR [esp+0x40]
  ce8fb2:	8b 54 24 3c                                     	mov    edx,DWORD PTR [esp+0x3c]
  ce8fb6:	8b 4c 24 48                                     	mov    ecx,DWORD PTR [esp+0x48]
  ce8fba:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  ce8fbe:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  ce8fc2:	50                                              	push   eax
  ce8fc3:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  ce8fc7:	89 54 24 1c                                     	mov    DWORD PTR [esp+0x1c],edx
  ce8fcb:	8b 54 24 48                                     	mov    edx,DWORD PTR [esp+0x48]
  ce8fcf:	89 4c 24 24                                     	mov    DWORD PTR [esp+0x24],ecx
  ce8fd3:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  ce8fd7:	51                                              	push   ecx
  ce8fd8:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  ce8fdc:	89 54 24 2c                                     	mov    DWORD PTR [esp+0x2c],edx
  ce8fe0:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  ce8fe4:	52                                              	push   edx
  ce8fe5:	50                                              	push   eax
  ce8fe6:	51                                              	push   ecx
  ce8fe7:	8b ce                                           	mov    ecx,esi
  ce8fe9:	e8 82 5b af ff                                  	call   0x7deb70
  ce8fee:	8b 54 24 10                                     	mov    edx,DWORD PTR [esp+0x10]
  ce8ff2:	8a d8                                           	mov    bl,al
  ce8ff4:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  ce8ff8:	2b d0                                           	sub    edx,eax
  ce8ffa:	83 e2 fe                                        	and    edx,0xfffffffe
  ce8ffd:	83 fa 02                                        	cmp    edx,0x2
  ce9000:	7e 0d                                           	jle    0xce900f
  ce9002:	85 c0                                           	test   eax,eax
  ce9004:	74 09                                           	je     0xce900f
  ce9006:	50                                              	push   eax
  ce9007:	e8 d4 b4 7f ff                                  	call   0x4e44e0
  ce900c:	83 c4 04                                        	add    esp,0x4
  ce900f:	8a c3                                           	mov    al,bl
  ce9011:	5b                                              	pop    ebx
  ce9012:	5e                                              	pop    esi
  ce9013:	83 c4 20                                        	add    esp,0x20
  ce9016:	c3                                              	ret
  ce9017:	32 c0                                           	xor    al,al
  ce9019:	5e                                              	pop    esi
  ce901a:	83 c4 20                                        	add    esp,0x20
  ce901d:	c3                                              	ret
  ce901e:	cc                                              	int3
  ce901f:	cc                                              	int3
