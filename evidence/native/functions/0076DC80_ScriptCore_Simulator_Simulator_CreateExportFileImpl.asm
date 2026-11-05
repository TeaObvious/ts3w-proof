# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0076dc80 (ScriptCore.Simulator::Simulator_CreateExportFileImpl)
Paired Ghidra pseudocode: 0076DC80_ScriptCore_Simulator_Simulator_CreateExportFileImpl.c
Window: [0x0076dc80, 0x0076df10) (656 bytes; stop exclusive)
Next defined Ghidra entry: 0x0076df10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0076dc80: 81 ec 68 04 00 00 56 e8 04 b7 ff ff 8b 8c 24 74
0076dc90: 04 00 00 8b 10 8b 52 58 51 8b c8 ff d2 8b f0 85
0076dca0: f6 75 08 5e 81 c4 68 04 00 00 c3 53 57 e8 8e 14
0076dcb0: fc ff 8b 10 8b c8 8b 42 24 ff d0 50 8d 4c 24 68
0076dcc0: e8 ab 04 d8 ff 8d 4c 24 64 e8 d2 74 07 00 50 e8
0076dcd0: 1c f6 d6 ff 8b 8c 24 7c 04 00 00 83 c4 04 c7 01
0076dce0: 00 00 00 00 e8 a7 b6 ff ff 6a ff 8d 4c 24 14 8b
0076dcf0: d8 e8 fa cc d8 ff 6a 00 8d 4c 24 14 e8 ef cc d8
0076dd00: ff bf 54 8e 1c 01 8d 4c 24 10 c7 44 24 20 b0 90
0076dd10: 00 01 89 7c 24 14 89 7c 24 18 c7 44 24 1c 56 8e
0076dd20: 1c 01 e8 e9 cc d8 ff 50 56 8d 54 24 1c 68 8c 90
0076dd30: 00 01 52 e8 08 0b ca ff 8b 44 24 24 83 c4 10 6a
0076dd40: 00 50 8d 4c 24 6c e8 b5 06 d8 ff 8d 4c 24 64 e8
0076dd50: 4c 74 07 00 8b f0 6a 00 56 c7 44 24 38 64 90 00
0076dd60: 01 89 7c 24 2c 89 7c 24 30 c7 44 24 34 56 8e 1c
0076dd70: 01 e8 7a df d6 ff 83 c4 08 84 c0 0f 84 84 00 00
0076dd80: 00 8b 4c 24 18 8b 7c 24 14 51 57 8d 4c 24 2c e8
0076dd90: cc af c9 ff 6a 00 6a 00 6a 00 6a 00 68 3c 90 00
0076dda0: 01 68 28 02 00 00 e8 55 67 d7 ff 83 c4 18 85 c0
0076ddb0: 74 0c 56 8b c8 e8 86 dd d6 ff 8b f0 eb 02 33 f6
0076ddc0: 8b 16 8b 42 4c 6a 00 6a 01 6a 03 6a 02 8b ce ff
0076ddd0: d0 84 c0 74 18 8b 13 8b 82 c8 00 00 00 6a 47 56
0076dde0: 8b cb ff d0 8b 8c 24 78 04 00 00 89 01 8b 94 24
0076ddf0: 78 04 00 00 83 3a 00 75 5c 8b 06 8b 10 6a 01 8b
0076de00: ce ff d2 eb 50 68 14 90 00 01 6a ff 8d 44 24 5c
0076de10: 68 48 8f 00 01 50 e8 35 5d d8 ff 8d 4c 24 34 83
0076de20: c4 10 3b c1 74 0c 8b 50 04 8b 00 52 50 e8 2e af
0076de30: c9 ff 8b 4c 24 5c 8b 44 24 54 2b c8 83 e1 fe 83
0076de40: f9 02 7e 0d 85 c0 74 09 50 e8 92 66 d7 ff 83 c4
0076de50: 04 8b 7c 24 14 6a 01 6a 10 8d 54 24 2c 52 6a 09
0076de60: 6a 13 8d 4c 24 48 c7 44 24 48 6c 88 00 01 66 c7
0076de70: 44 24 52 13 00 66 c7 44 24 50 0b 00 e8 3f 7b d8
0076de80: ff c7 44 24 0c 00 00 00 00 e8 02 b5 ff ff 8b 10
0076de90: 8b 52 50 8d 4c 24 0c 51 8d 4c 24 38 51 8b c8 ff
0076dea0: d2 f6 44 24 3c 04 8b 74 24 0c c7 44 24 34 f4 a6
0076deb0: fb 00 74 0b 6a 00 8d 4c 24 38 e8 a1 78 d8 ff 8b
0076dec0: 4c 24 2c 8b 44 24 24 2b c8 83 e1 fe 83 f9 02 7e
0076ded0: 0d 85 c0 74 09 50 e8 05 66 d7 ff 83 c4 04 8b 54
0076dee0: 24 1c 2b d7 83 e2 fe 83 fa 02 7e 0d 85 ff 74 09
0076def0: 57 e8 ea 65 d7 ff 83 c4 04 5f 5b 8b c6 5e 81 c4
0076df00: 68 04 00 00 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0076dc80 <.text+0x36cc80>:
  76dc80:	81 ec 68 04 00 00                               	sub    esp,0x468
  76dc86:	56                                              	push   esi
  76dc87:	e8 04 b7 ff ff                                  	call   0x769390
  76dc8c:	8b 8c 24 74 04 00 00                            	mov    ecx,DWORD PTR [esp+0x474]
  76dc93:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76dc95:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  76dc98:	51                                              	push   ecx
  76dc99:	8b c8                                           	mov    ecx,eax
  76dc9b:	ff d2                                           	call   edx
  76dc9d:	8b f0                                           	mov    esi,eax
  76dc9f:	85 f6                                           	test   esi,esi
  76dca1:	75 08                                           	jne    0x76dcab
  76dca3:	5e                                              	pop    esi
  76dca4:	81 c4 68 04 00 00                               	add    esp,0x468
  76dcaa:	c3                                              	ret
  76dcab:	53                                              	push   ebx
  76dcac:	57                                              	push   edi
  76dcad:	e8 8e 14 fc ff                                  	call   0x72f140
  76dcb2:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76dcb4:	8b c8                                           	mov    ecx,eax
  76dcb6:	8b 42 24                                        	mov    eax,DWORD PTR [edx+0x24]
  76dcb9:	ff d0                                           	call   eax
  76dcbb:	50                                              	push   eax
  76dcbc:	8d 4c 24 68                                     	lea    ecx,[esp+0x68]
  76dcc0:	e8 ab 04 d8 ff                                  	call   0x4ee170
  76dcc5:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  76dcc9:	e8 d2 74 07 00                                  	call   0x7e51a0
  76dcce:	50                                              	push   eax
  76dccf:	e8 1c f6 d6 ff                                  	call   0x4dd2f0
  76dcd4:	8b 8c 24 7c 04 00 00                            	mov    ecx,DWORD PTR [esp+0x47c]
  76dcdb:	83 c4 04                                        	add    esp,0x4
  76dcde:	c7 01 00 00 00 00                               	mov    DWORD PTR [ecx],0x0
  76dce4:	e8 a7 b6 ff ff                                  	call   0x769390
  76dce9:	6a ff                                           	push   0xffffffff
  76dceb:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  76dcef:	8b d8                                           	mov    ebx,eax
  76dcf1:	e8 fa cc d8 ff                                  	call   0x4fa9f0
  76dcf6:	6a 00                                           	push   0x0
  76dcf8:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  76dcfc:	e8 ef cc d8 ff                                  	call   0x4fa9f0
  76dd01:	bf 54 8e 1c 01                                  	mov    edi,0x11c8e54
  76dd06:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  76dd0a:	c7 44 24 20 b0 90 00 01                         	mov    DWORD PTR [esp+0x20],0x10090b0
  76dd12:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  76dd16:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  76dd1a:	c7 44 24 1c 56 8e 1c 01                         	mov    DWORD PTR [esp+0x1c],0x11c8e56
  76dd22:	e8 e9 cc d8 ff                                  	call   0x4faa10
  76dd27:	50                                              	push   eax
  76dd28:	56                                              	push   esi
  76dd29:	8d 54 24 1c                                     	lea    edx,[esp+0x1c]
  76dd2d:	68 8c 90 00 01                                  	push   0x100908c
  76dd32:	52                                              	push   edx
  76dd33:	e8 08 0b ca ff                                  	call   0x40e840
  76dd38:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  76dd3c:	83 c4 10                                        	add    esp,0x10
  76dd3f:	6a 00                                           	push   0x0
  76dd41:	50                                              	push   eax
  76dd42:	8d 4c 24 6c                                     	lea    ecx,[esp+0x6c]
  76dd46:	e8 b5 06 d8 ff                                  	call   0x4ee400
  76dd4b:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  76dd4f:	e8 4c 74 07 00                                  	call   0x7e51a0
  76dd54:	8b f0                                           	mov    esi,eax
  76dd56:	6a 00                                           	push   0x0
  76dd58:	56                                              	push   esi
  76dd59:	c7 44 24 38 64 90 00 01                         	mov    DWORD PTR [esp+0x38],0x1009064
  76dd61:	89 7c 24 2c                                     	mov    DWORD PTR [esp+0x2c],edi
  76dd65:	89 7c 24 30                                     	mov    DWORD PTR [esp+0x30],edi
  76dd69:	c7 44 24 34 56 8e 1c 01                         	mov    DWORD PTR [esp+0x34],0x11c8e56
  76dd71:	e8 7a df d6 ff                                  	call   0x4dbcf0
  76dd76:	83 c4 08                                        	add    esp,0x8
  76dd79:	84 c0                                           	test   al,al
  76dd7b:	0f 84 84 00 00 00                               	je     0x76de05
  76dd81:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  76dd85:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  76dd89:	51                                              	push   ecx
  76dd8a:	57                                              	push   edi
  76dd8b:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  76dd8f:	e8 cc af c9 ff                                  	call   0x408d60
  76dd94:	6a 00                                           	push   0x0
  76dd96:	6a 00                                           	push   0x0
  76dd98:	6a 00                                           	push   0x0
  76dd9a:	6a 00                                           	push   0x0
  76dd9c:	68 3c 90 00 01                                  	push   0x100903c
  76dda1:	68 28 02 00 00                                  	push   0x228
  76dda6:	e8 55 67 d7 ff                                  	call   0x4e4500
  76ddab:	83 c4 18                                        	add    esp,0x18
  76ddae:	85 c0                                           	test   eax,eax
  76ddb0:	74 0c                                           	je     0x76ddbe
  76ddb2:	56                                              	push   esi
  76ddb3:	8b c8                                           	mov    ecx,eax
  76ddb5:	e8 86 dd d6 ff                                  	call   0x4dbb40
  76ddba:	8b f0                                           	mov    esi,eax
  76ddbc:	eb 02                                           	jmp    0x76ddc0
  76ddbe:	33 f6                                           	xor    esi,esi
  76ddc0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  76ddc2:	8b 42 4c                                        	mov    eax,DWORD PTR [edx+0x4c]
  76ddc5:	6a 00                                           	push   0x0
  76ddc7:	6a 01                                           	push   0x1
  76ddc9:	6a 03                                           	push   0x3
  76ddcb:	6a 02                                           	push   0x2
  76ddcd:	8b ce                                           	mov    ecx,esi
  76ddcf:	ff d0                                           	call   eax
  76ddd1:	84 c0                                           	test   al,al
  76ddd3:	74 18                                           	je     0x76dded
  76ddd5:	8b 13                                           	mov    edx,DWORD PTR [ebx]
  76ddd7:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  76dddd:	6a 47                                           	push   0x47
  76dddf:	56                                              	push   esi
  76dde0:	8b cb                                           	mov    ecx,ebx
  76dde2:	ff d0                                           	call   eax
  76dde4:	8b 8c 24 78 04 00 00                            	mov    ecx,DWORD PTR [esp+0x478]
  76ddeb:	89 01                                           	mov    DWORD PTR [ecx],eax
  76dded:	8b 94 24 78 04 00 00                            	mov    edx,DWORD PTR [esp+0x478]
  76ddf4:	83 3a 00                                        	cmp    DWORD PTR [edx],0x0
  76ddf7:	75 5c                                           	jne    0x76de55
  76ddf9:	8b 06                                           	mov    eax,DWORD PTR [esi]
  76ddfb:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76ddfd:	6a 01                                           	push   0x1
  76ddff:	8b ce                                           	mov    ecx,esi
  76de01:	ff d2                                           	call   edx
  76de03:	eb 50                                           	jmp    0x76de55
  76de05:	68 14 90 00 01                                  	push   0x1009014
  76de0a:	6a ff                                           	push   0xffffffff
  76de0c:	8d 44 24 5c                                     	lea    eax,[esp+0x5c]
  76de10:	68 48 8f 00 01                                  	push   0x1008f48
  76de15:	50                                              	push   eax
  76de16:	e8 35 5d d8 ff                                  	call   0x4f3b50
  76de1b:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  76de1f:	83 c4 10                                        	add    esp,0x10
  76de22:	3b c1                                           	cmp    eax,ecx
  76de24:	74 0c                                           	je     0x76de32
  76de26:	8b 50 04                                        	mov    edx,DWORD PTR [eax+0x4]
  76de29:	8b 00                                           	mov    eax,DWORD PTR [eax]
  76de2b:	52                                              	push   edx
  76de2c:	50                                              	push   eax
  76de2d:	e8 2e af c9 ff                                  	call   0x408d60
  76de32:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  76de36:	8b 44 24 54                                     	mov    eax,DWORD PTR [esp+0x54]
  76de3a:	2b c8                                           	sub    ecx,eax
  76de3c:	83 e1 fe                                        	and    ecx,0xfffffffe
  76de3f:	83 f9 02                                        	cmp    ecx,0x2
  76de42:	7e 0d                                           	jle    0x76de51
  76de44:	85 c0                                           	test   eax,eax
  76de46:	74 09                                           	je     0x76de51
  76de48:	50                                              	push   eax
  76de49:	e8 92 66 d7 ff                                  	call   0x4e44e0
  76de4e:	83 c4 04                                        	add    esp,0x4
  76de51:	8b 7c 24 14                                     	mov    edi,DWORD PTR [esp+0x14]
  76de55:	6a 01                                           	push   0x1
  76de57:	6a 10                                           	push   0x10
  76de59:	8d 54 24 2c                                     	lea    edx,[esp+0x2c]
  76de5d:	52                                              	push   edx
  76de5e:	6a 09                                           	push   0x9
  76de60:	6a 13                                           	push   0x13
  76de62:	8d 4c 24 48                                     	lea    ecx,[esp+0x48]
  76de66:	c7 44 24 48 6c 88 00 01                         	mov    DWORD PTR [esp+0x48],0x100886c
  76de6e:	66 c7 44 24 52 13 00                            	mov    WORD PTR [esp+0x52],0x13
  76de75:	66 c7 44 24 50 0b 00                            	mov    WORD PTR [esp+0x50],0xb
  76de7c:	e8 3f 7b d8 ff                                  	call   0x4f59c0
  76de81:	c7 44 24 0c 00 00 00 00                         	mov    DWORD PTR [esp+0xc],0x0
  76de89:	e8 02 b5 ff ff                                  	call   0x769390
  76de8e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  76de90:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  76de93:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  76de97:	51                                              	push   ecx
  76de98:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  76de9c:	51                                              	push   ecx
  76de9d:	8b c8                                           	mov    ecx,eax
  76de9f:	ff d2                                           	call   edx
  76dea1:	f6 44 24 3c 04                                  	test   BYTE PTR [esp+0x3c],0x4
  76dea6:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  76deaa:	c7 44 24 34 f4 a6 fb 00                         	mov    DWORD PTR [esp+0x34],0xfba6f4
  76deb2:	74 0b                                           	je     0x76debf
  76deb4:	6a 00                                           	push   0x0
  76deb6:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  76deba:	e8 a1 78 d8 ff                                  	call   0x4f5760
  76debf:	8b 4c 24 2c                                     	mov    ecx,DWORD PTR [esp+0x2c]
  76dec3:	8b 44 24 24                                     	mov    eax,DWORD PTR [esp+0x24]
  76dec7:	2b c8                                           	sub    ecx,eax
  76dec9:	83 e1 fe                                        	and    ecx,0xfffffffe
  76decc:	83 f9 02                                        	cmp    ecx,0x2
  76decf:	7e 0d                                           	jle    0x76dede
  76ded1:	85 c0                                           	test   eax,eax
  76ded3:	74 09                                           	je     0x76dede
  76ded5:	50                                              	push   eax
  76ded6:	e8 05 66 d7 ff                                  	call   0x4e44e0
  76dedb:	83 c4 04                                        	add    esp,0x4
  76dede:	8b 54 24 1c                                     	mov    edx,DWORD PTR [esp+0x1c]
  76dee2:	2b d7                                           	sub    edx,edi
  76dee4:	83 e2 fe                                        	and    edx,0xfffffffe
  76dee7:	83 fa 02                                        	cmp    edx,0x2
  76deea:	7e 0d                                           	jle    0x76def9
  76deec:	85 ff                                           	test   edi,edi
  76deee:	74 09                                           	je     0x76def9
  76def0:	57                                              	push   edi
  76def1:	e8 ea 65 d7 ff                                  	call   0x4e44e0
  76def6:	83 c4 04                                        	add    esp,0x4
  76def9:	5f                                              	pop    edi
  76defa:	5b                                              	pop    ebx
  76defb:	8b c6                                           	mov    eax,esi
  76defd:	5e                                              	pop    esi
  76defe:	81 c4 68 04 00 00                               	add    esp,0x468
  76df04:	c3                                              	ret
  76df05:	cc                                              	int3
  76df06:	cc                                              	int3
  76df07:	cc                                              	int3
  76df08:	cc                                              	int3
  76df09:	cc                                              	int3
  76df0a:	cc                                              	int3
  76df0b:	cc                                              	int3
  76df0c:	cc                                              	int3
  76df0d:	cc                                              	int3
  76df0e:	cc                                              	int3
  76df0f:	cc                                              	int3
