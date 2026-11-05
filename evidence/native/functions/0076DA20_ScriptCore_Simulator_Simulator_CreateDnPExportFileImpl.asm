# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076da20 (ScriptCore.Simulator::Simulator_CreateDnPExportFileImpl)
Paired Ghidra pseudocode: 0076DA20_ScriptCore_Simulator_Simulator_CreateDnPExportFileImpl.c
Window: [0x0076da20, 0x0076dc80) (608 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076dc80
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076da20: 81 ec 68 04 00 00 53 56 57 e8 12 17 fc ff 8b 10
0076da30: 8b c8 8b 42 24 ff d0 50 8d 4c 24 68 e8 2f 07 d8
0076da40: ff 8d 4c 24 64 e8 56 77 07 00 50 e8 a0 f8 d6 ff
0076da50: 8b 8c 24 7c 04 00 00 83 c4 04 c7 01 00 00 00 00
0076da60: e8 2b b9 ff ff 6a ff 8d 4c 24 14 8b d8 e8 7e cf
0076da70: d8 ff 6a 00 8d 4c 24 14 e8 73 cf d8 ff bf 54 8e
0076da80: 1c 01 8d 4c 24 10 c7 44 24 20 f4 8f 00 01 89 7c
0076da90: 24 14 89 7c 24 18 c7 44 24 1c 56 8e 1c 01 e8 6d
0076daa0: cf d8 ff 50 8d 54 24 18 68 cc 8f 00 01 52 e8 8d
0076dab0: 0d ca ff 8b 44 24 20 83 c4 0c 6a 00 50 8d 4c 24
0076dac0: 6c e8 3a 09 d8 ff 8d 4c 24 64 e8 d1 76 07 00 8b
0076dad0: f0 6a 00 56 c7 44 24 38 ac 8f 00 01 89 7c 24 2c
0076dae0: 89 7c 24 30 c7 44 24 34 56 8e 1c 01 e8 ff e1 d6
0076daf0: ff 83 c4 08 84 c0 0f 84 84 00 00 00 8b 4c 24 18
0076db00: 8b 7c 24 14 51 57 8d 4c 24 2c e8 51 b2 c9 ff 6a
0076db10: 00 6a 00 6a 00 6a 00 68 8c 8f 00 01 68 28 02 00
0076db20: 00 e8 da 69 d7 ff 83 c4 18 85 c0 74 0c 56 8b c8
0076db30: e8 0b e0 d6 ff 8b f0 eb 02 33 f6 8b 16 8b 42 4c
0076db40: 6a 00 6a 01 6a 03 6a 02 8b ce ff d0 84 c0 74 18
0076db50: 8b 13 8b 82 c8 00 00 00 6a 47 56 8b cb ff d0 8b
0076db60: 8c 24 78 04 00 00 89 01 8b 94 24 78 04 00 00 83
0076db70: 3a 00 75 5c 8b 06 8b 10 6a 01 8b ce ff d2 eb 50
0076db80: 68 6c 8f 00 01 6a ff 8d 44 24 5c 68 48 8f 00 01
0076db90: 50 e8 ba 5f d8 ff 8d 4c 24 34 83 c4 10 3b c1 74
0076dba0: 0c 8b 50 04 8b 00 52 50 e8 b3 b1 c9 ff 8b 4c 24
0076dbb0: 5c 8b 44 24 54 2b c8 83 e1 fe 83 f9 02 7e 0d 85
0076dbc0: c0 74 09 50 e8 17 69 d7 ff 83 c4 04 8b 7c 24 14
0076dbd0: 6a 01 6a 10 8d 54 24 2c 52 6a 09 6a 13 8d 4c 24
0076dbe0: 48 c7 44 24 48 6c 88 00 01 66 c7 44 24 52 13 00
0076dbf0: 66 c7 44 24 50 0b 00 e8 c4 7d d8 ff c7 44 24 0c
0076dc00: 00 00 00 00 e8 87 b7 ff ff 8b 10 8b 52 50 8d 4c
0076dc10: 24 0c 51 8d 4c 24 38 51 8b c8 ff d2 f6 44 24 3c
0076dc20: 04 8b 74 24 0c c7 44 24 34 f4 a6 fb 00 74 0b 6a
0076dc30: 00 8d 4c 24 38 e8 26 7b d8 ff 8b 4c 24 2c 8b 44
0076dc40: 24 24 2b c8 83 e1 fe 83 f9 02 7e 0d 85 c0 74 09
0076dc50: 50 e8 8a 68 d7 ff 83 c4 04 8b 54 24 1c 2b d7 83
0076dc60: e2 fe 83 fa 02 7e 0d 85 ff 74 09 57 e8 6f 68 d7
0076dc70: ff 83 c4 04 5f 8b c6 5e 5b 81 c4 68 04 00 00 c3

LINEAR DISASSEMBLY
0076da20 <.text+0x36ca20>:
  76da20:	81 ec 68 04 00 00                               	sub    esp,0x468
  76da26:	53                                              	push   ebx
  76da27:	56                                              	push   esi
  76da28:	57                                              	push   edi
  76da29:	e8 12 17 fc ff                                  	call   0x72f140
  76da2e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76da30:	8b c8                                           	mov    ecx,eax
  76da32:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  76da35:	ff d0                                           	call   eax
  76da37:	50                                              	push   eax
  76da38:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  76da3c:	e8 2f 07 d8 ff                                  	call   0x4ee170
  76da41:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  76da45:	e8 56 77 07 00                                  	call   0x7e51a0
  76da4a:	50                                              	push   eax
  76da4b:	e8 a0 f8 d6 ff                                  	call   0x4dd2f0
  76da50:	8b 8c 24 7c 04 00 00                            	mov    ecx,DWORD PTR [esp+0x47c]
  76da57:	83 c4 04                                        	add    esp,0x4
  76da5a:	c7 01 00 00 00 00                               	mov    DWORD PTR [ecx],0x0
  76da60:	e8 2b b9 ff ff                                  	call   0x769390
  76da65:	6a ff                                           	push   0xffffffff
  76da67:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  76da6b:	8b d8                                           	mov    ebx,eax
  76da6d:	e8 7e cf d8 ff                                  	call   0x4fa9f0
  76da72:	6a 00                                           	push   0x0
  76da74:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  76da78:	e8 73 cf d8 ff                                  	call   0x4fa9f0
  76da7d:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  76da82:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  76da86:	c7 44 24 20 f4 8f 00 01                         	mov    DWORD PTR [esp+0x20],0x1008ff4
  76da8e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  76da92:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  76da96:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  76da9e:	e8 6d cf d8 ff                                  	call   0x4faa10
  76daa3:	50                                              	push   eax
  76daa4:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  76daa8:	68 cc 8f 00 01                                  	push   0x1008fcc
  76daad:	52                                              	push   edx
  76daae:	e8 8d 0d ca ff                                  	call   0x40e840
  76dab3:	8b 44 24 20                                     	mov    eax,DWORD PTR [esp+0x20]
  76dab7:	83 c4 0c                                        	add    esp,0xc
  76daba:	6a 00                                           	push   0x0
  76dabc:	50                                              	push   eax
  76dabd:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  76dac1:	e8 3a 09 d8 ff                                  	call   0x4ee400
  76dac6:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  76daca:	e8 d1 76 07 00                                  	call   0x7e51a0
  76dacf:	8b f0                                           	mov    esi,eax
  76dad1:	6a 00                                           	push   0x0
  76dad3:	56                                              	push   esi
  76dad4:	c7 44 24 38 ac 8f 00 01                         	mov    DWORD PTR [esp+0x38],0x1008fac
  76dadc:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  76dae0:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  76dae4:	c7 44 24 34 56 8e 1c 01                         	mov    DWORD PTR [esp+0x34],0x11c8e56
  76daec:	e8 ff e1 d6 ff                                  	call   0x4dbcf0
  76daf1:	83 c4 08                                        	add    esp,0x8
  76daf4:	84 c0                                           	test   al,al
  76daf6:	0f 84 84 00 00 00                               	je     0x76db80
  76dafc:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76db00:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  76db04:	51                                              	push   ecx
  76db05:	57                                              	push   edi
  76db06:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  76db0a:	e8 51 b2 c9 ff                                  	call   0x408d60
  76db0f:	6a 00                                           	push   0x0
  76db11:	6a 00                                           	push   0x0
  76db13:	6a 00                                           	push   0x0
  76db15:	6a 00                                           	push   0x0
  76db17:	68 8c 8f 00 01                                  	push   0x1008f8c
  76db1c:	68 28 02 00 00                                  	push   0x228
  76db21:	e8 da 69 d7 ff                                  	call   0x4e4500
  76db26:	83 c4 18                                        	add    esp,0x18
  76db29:	85 c0                                           	test   eax,eax
  76db2b:	74 0c                                           	je     0x76db39
  76db2d:	56                                              	push   esi
  76db2e:	8b c8                                           	mov    ecx,eax
  76db30:	e8 0b e0 d6 ff                                  	call   0x4dbb40
  76db35:	8b f0                                           	mov    esi,eax
  76db37:	eb 02                                           	jmp    0x76db3b
  76db39:	33 f6                                           	xor    esi,esi
  76db3b:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76db3d:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
  76db40:	6a 00                                           	push   0x0
  76db42:	6a 01                                           	push   0x1
  76db44:	6a 03                                           	push   0x3
  76db46:	6a 02                                           	push   0x2
  76db48:	8b ce                                           	mov    ecx,esi
  76db4a:	ff d0                                           	call   eax
  76db4c:	84 c0                                           	test   al,al
  76db4e:	74 18                                           	je     0x76db68
  76db50:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  76db52:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  76db58:	6a 47                                           	push   0x47
  76db5a:	56                                              	push   esi
  76db5b:	8b cb                                           	mov    ecx,ebx
  76db5d:	ff d0                                           	call   eax
  76db5f:	8b 8c 24 78 04 00 00                            	mov    ecx,DWORD PTR [esp+0x478]
  76db66:	89 01                                           	mov    DWORD PTR [ecx],eax
  76db68:	8b 94 24 78 04 00 00                            	mov    edx,DWORD PTR [esp+0x478]
  76db6f:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
  76db72:	75 5c                                           	jne    0x76dbd0
  76db74:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76db76:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76db78:	6a 01                                           	push   0x1
  76db7a:	8b ce                                           	mov    ecx,esi
  76db7c:	ff d2                                           	call   edx
  76db7e:	eb 50                                           	jmp    0x76dbd0
  76db80:	68 6c 8f 00 01                                  	push   0x1008f6c
  76db85:	6a ff                                           	push   0xffffffff
  76db87:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
  76db8b:	68 48 8f 00 01                                  	push   0x1008f48
  76db90:	50                                              	push   eax
  76db91:	e8 ba 5f d8 ff                                  	call   0x4f3b50
  76db96:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  76db9a:	83 c4 10                                        	add    esp,0x10
  76db9d:	3b c1                                           	cmp    eax,ecx
  76db9f:	74 0c                                           	je     0x76dbad
  76dba1:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  76dba4:	8b 00                                           	mov    eax,DWORD PTR [eax]
  76dba6:	52                                              	push   edx
  76dba7:	50                                              	push   eax
  76dba8:	e8 b3 b1 c9 ff                                  	call   0x408d60
  76dbad:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  76dbb1:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  76dbb5:	2b c8                                           	sub    ecx,eax
  76dbb7:	83 e1 fe                                        	and    ecx,0xfffffffe
  76dbba:	83 f9 02                                        	cmp    ecx,0x2
  76dbbd:	7e 0d                                           	jle    0x76dbcc
  76dbbf:	85 c0                                           	test   eax,eax
  76dbc1:	74 09                                           	je     0x76dbcc
  76dbc3:	50                                              	push   eax
  76dbc4:	e8 17 69 d7 ff                                  	call   0x4e44e0
  76dbc9:	83 c4 04                                        	add    esp,0x4
  76dbcc:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  76dbd0:	6a 01                                           	push   0x1
  76dbd2:	6a 10                                           	push   0x10
  76dbd4:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  76dbd8:	52                                              	push   edx
  76dbd9:	6a 09                                           	push   0x9
  76dbdb:	6a 13                                           	push   0x13
  76dbdd:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  76dbe1:	c7 44 24 48 6c 88 00 01                         	mov    DWORD PTR [esp+0x48],0x100886c
  76dbe9:	66 c7 44 24 52 13 00                            	mov    WORD PTR [esp+0x52],0x13
  76dbf0:	66 c7 44 24 50 0b 00                            	mov    WORD PTR [esp+0x50],0xb
  76dbf7:	e8 c4 7d d8 ff                                  	call   0x4f59c0
  76dbfc:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  76dc04:	e8 87 b7 ff ff                                  	call   0x769390
  76dc09:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76dc0b:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  76dc0e:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  76dc12:	51                                              	push   ecx
  76dc13:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  76dc17:	51                                              	push   ecx
  76dc18:	8b c8                                           	mov    ecx,eax
  76dc1a:	ff d2                                           	call   edx
  76dc1c:	f6 44 24 3c 04                                  	test   BYTE PTR [esp+0x3c],0x4
  76dc21:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  76dc25:	c7 44 24 34 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x34],0xfba6f4
  76dc2d:	74 0b                                           	je     0x76dc3a
  76dc2f:	6a 00                                           	push   0x0
  76dc31:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  76dc35:	e8 26 7b d8 ff                                  	call   0x4f5760
  76dc3a:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  76dc3e:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  76dc42:	2b c8                                           	sub    ecx,eax
  76dc44:	83 e1 fe                                        	and    ecx,0xfffffffe
  76dc47:	83 f9 02                                        	cmp    ecx,0x2
  76dc4a:	7e 0d                                           	jle    0x76dc59
  76dc4c:	85 c0                                           	test   eax,eax
  76dc4e:	74 09                                           	je     0x76dc59
  76dc50:	50                                              	push   eax
  76dc51:	e8 8a 68 d7 ff                                  	call   0x4e44e0
  76dc56:	83 c4 04                                        	add    esp,0x4
  76dc59:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  76dc5d:	2b d7                                           	sub    edx,edi
  76dc5f:	83 e2 fe                                        	and    edx,0xfffffffe
  76dc62:	83 fa 02                                        	cmp    edx,0x2
  76dc65:	7e 0d                                           	jle    0x76dc74
  76dc67:	85 ff                                           	test   edi,edi
  76dc69:	74 09                                           	je     0x76dc74
  76dc6b:	57                                              	push   edi
  76dc6c:	e8 6f 68 d7 ff                                  	call   0x4e44e0
  76dc71:	83 c4 04                                        	add    esp,0x4
  76dc74:	5f                                              	pop    edi
  76dc75:	8b c6                                           	mov    eax,esi
  76dc77:	5e                                              	pop    esi
  76dc78:	5b                                              	pop    ebx
  76dc79:	81 c4 68 04 00 00                               	add    esp,0x468
  76dc7f:	c3                                              	ret
