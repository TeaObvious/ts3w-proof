# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077fb50 (ScriptCore.UIManager::UIManager_GetStringPropertyImpl)
Paired Ghidra pseudocode: 0077FB50_ScriptCore_UIManager_UIManager_GetStringPropertyImpl.c
Window: [0x0077fb50, 0x0077fd10) (448 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077fd10
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077fb50: 81 ec a8 00 00 00 55 56 57 e8 32 98 fe ff 8b f8
0077fb60: 8b 84 24 b8 00 00 00 8b c8 81 e1 00 00 00 ff 81
0077fb70: f9 00 00 00 30 0f 85 81 01 00 00 8b 17 50 8b 82
0077fb80: cc 00 00 00 8b cf ff d0 85 c0 0f 84 6c 01 00 00
0077fb90: 8b 10 8b c8 8b 42 0c 68 82 83 c5 ee ff d0 8b f0
0077fba0: 85 f6 0f 84 54 01 00 00 6a 00 6a 00 6a 00 6a ff
0077fbb0: bd a8 ee 00 01 6a 00 8d 4c 24 4c 89 6c 24 48 e8
0077fbc0: ec 90 d6 ff 8b 16 8b 52 10 8d 84 24 a4 00 00 00
0077fbd0: 50 8b ce ff d2 8b 8c 24 bc 00 00 00 8d 44 24 34
0077fbe0: 50 51 8d 94 24 80 00 00 00 52 8d 8c 24 b0 00 00
0077fbf0: 00 e8 aa 20 d9 ff 85 c0 0f 84 f1 00 00 00 8d 4c
0077fc00: 24 34 51 8d 54 24 7c 52 8d 4c 24 74 51 8b c8 e8
0077fc10: 8c 1e d9 ff 84 c0 0f 84 d3 00 00 00 8b 44 24 70
0077fc20: 8b 08 8d 54 24 10 52 51 8d 4c 24 64 c7 44 24 18
0077fc30: 08 fb 00 01 e8 47 bc c8 ff 50 8d 8c 24 88 00 00
0077fc40: 00 e8 ea 69 d7 ff bd f4 a6 fb 00 50 8d 4c 24 18
0077fc50: 89 6c 24 18 66 c7 44 24 20 00 00 66 c7 44 24 22
0077fc60: 00 00 e8 49 68 d7 ff f6 84 24 8c 00 00 00 04 89
0077fc70: ac 24 84 00 00 00 74 0e 6a 00 8d 8c 24 88 00 00
0077fc80: 00 e8 da 5a d7 ff 8b 54 24 64 8b 44 24 5c 2b d0
0077fc90: 83 e2 fe 83 fa 02 7e 0d 85 c0 74 09 50 e8 3e 48
0077fca0: d6 ff 83 c4 04 8b 07 8b 40 50 8d 4c 24 0c 51 8d
0077fcb0: 54 24 18 52 8b cf ff d0 f6 44 24 1c 04 8b 74 24
0077fcc0: 0c 89 6c 24 14 74 0b 6a 00 8d 4c 24 18 e8 8e 5a
0077fcd0: d7 ff 8d 4c 24 38 c7 44 24 34 a8 ee 00 01 e8 bd
0077fce0: 90 d6 ff 5f 8b c6 5e 5d 81 c4 a8 00 00 00 c3 8d
0077fcf0: 4c 24 38 89 6c 24 34 e8 a4 90 d6 ff 5f 5e 33 c0
0077fd00: 5d 81 c4 a8 00 00 00 c3 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077fb50 <.text+0x37eb50>:
  77fb50:	81 ec a8 00 00 00                               	sub    esp,0xa8
  77fb56:	55                                              	push   ebp
  77fb57:	56                                              	push   esi
  77fb58:	57                                              	push   edi
  77fb59:	e8 32 98 fe ff                                  	call   0x769390
  77fb5e:	8b f8                                           	mov    edi,eax
  77fb60:	8b 84 24 b8 00 00 00                            	mov    eax,DWORD PTR [esp+0xb8]
  77fb67:	8b c8                                           	mov    ecx,eax
  77fb69:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77fb6f:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77fb75:	0f 85 81 01 00 00                               	jne    0x77fcfc
  77fb7b:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77fb7d:	50                                              	push   eax
  77fb7e:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77fb84:	8b cf                                           	mov    ecx,edi
  77fb86:	ff d0                                           	call   eax
  77fb88:	85 c0                                           	test   eax,eax
  77fb8a:	0f 84 6c 01 00 00                               	je     0x77fcfc
  77fb90:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77fb92:	8b c8                                           	mov    ecx,eax
  77fb94:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77fb97:	68 82 83 c5 ee                                  	push   0xeec58382
  77fb9c:	ff d0                                           	call   eax
  77fb9e:	8b f0                                           	mov    esi,eax
  77fba0:	85 f6                                           	test   esi,esi
  77fba2:	0f 84 54 01 00 00                               	je     0x77fcfc
  77fba8:	6a 00                                           	push   0x0
  77fbaa:	6a 00                                           	push   0x0
  77fbac:	6a 00                                           	push   0x0
  77fbae:	6a ff                                           	push   0xffffffff
  77fbb0:	bd a8 ee 00 01                                  	mov    ebp,0x100eea8
  77fbb5:	6a 00                                           	push   0x0
  77fbb7:	8d 4c 24 4c                                     	lea    ecx,[esp+0x4c]
  77fbbb:	89 6c 24 48                                     	mov    DWORD PTR [esp+0x48],ebp
  77fbbf:	e8 ec 90 d6 ff                                  	call   0x4e8cb0
  77fbc4:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77fbc6:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  77fbc9:	8d 84 24 a4 00 00 00                            	lea    eax,[esp+0xa4]
  77fbd0:	50                                              	push   eax
  77fbd1:	8b ce                                           	mov    ecx,esi
  77fbd3:	ff d2                                           	call   edx
  77fbd5:	8b 8c 24 bc 00 00 00                            	mov    ecx,DWORD PTR [esp+0xbc]
  77fbdc:	8d 44 24 34                                     	lea    eax,[esp+0x34]
  77fbe0:	50                                              	push   eax
  77fbe1:	51                                              	push   ecx
  77fbe2:	8d 94 24 80 00 00 00                            	lea    edx,[esp+0x80]
  77fbe9:	52                                              	push   edx
  77fbea:	8d 8c 24 b0 00 00 00                            	lea    ecx,[esp+0xb0]
  77fbf1:	e8 aa 20 d9 ff                                  	call   0x511ca0
  77fbf6:	85 c0                                           	test   eax,eax
  77fbf8:	0f 84 f1 00 00 00                               	je     0x77fcef
  77fbfe:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  77fc02:	51                                              	push   ecx
  77fc03:	8d 54 24 7c                                     	lea    edx,[esp+0x7c]
  77fc07:	52                                              	push   edx
  77fc08:	8d 4c 24 74                                     	lea    ecx,[esp+0x74]
  77fc0c:	51                                              	push   ecx
  77fc0d:	8b c8                                           	mov    ecx,eax
  77fc0f:	e8 8c 1e d9 ff                                  	call   0x511aa0
  77fc14:	84 c0                                           	test   al,al
  77fc16:	0f 84 d3 00 00 00                               	je     0x77fcef
  77fc1c:	8b 44 24 70                                     	mov    eax,DWORD PTR [esp+0x70]
  77fc20:	8b 08                                           	mov    ecx,DWORD PTR [eax]
  77fc22:	8d 54 24 10                                     	lea    edx,[esp+0x10]
  77fc26:	52                                              	push   edx
  77fc27:	51                                              	push   ecx
  77fc28:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  77fc2c:	c7 44 24 18 08 fb 00 01                         	mov    DWORD PTR [esp+0x18],0x100fb08
  77fc34:	e8 47 bc c8 ff                                  	call   0x40b880
  77fc39:	50                                              	push   eax
  77fc3a:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
  77fc41:	e8 ea 69 d7 ff                                  	call   0x4f6630
  77fc46:	bd f4 a6 fb 00                                  	mov    ebp,0xfba6f4
  77fc4b:	50                                              	push   eax
  77fc4c:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77fc50:	89 6c 24 18                                     	mov    DWORD PTR [esp+0x18],ebp
  77fc54:	66 c7 44 24 20 00 00                            	mov    WORD PTR [esp+0x20],0x0
  77fc5b:	66 c7 44 24 22 00 00                            	mov    WORD PTR [esp+0x22],0x0
  77fc62:	e8 49 68 d7 ff                                  	call   0x4f64b0
  77fc67:	f6 84 24 8c 00 00 00 04                         	test   BYTE PTR [esp+0x8c],0x4
  77fc6f:	89 ac 24 84 00 00 00                            	mov    DWORD PTR [esp+0x84],ebp
  77fc76:	74 0e                                           	je     0x77fc86
  77fc78:	6a 00                                           	push   0x0
  77fc7a:	8d 8c 24 88 00 00 00                            	lea    ecx,[esp+0x88]
  77fc81:	e8 da 5a d7 ff                                  	call   0x4f5760
  77fc86:	8b 54 24 64                                     	mov    edx,DWORD PTR [esp+0x64]
  77fc8a:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  77fc8e:	2b d0                                           	sub    edx,eax
  77fc90:	83 e2 fe                                        	and    edx,0xfffffffe
  77fc93:	83 fa 02                                        	cmp    edx,0x2
  77fc96:	7e 0d                                           	jle    0x77fca5
  77fc98:	85 c0                                           	test   eax,eax
  77fc9a:	74 09                                           	je     0x77fca5
  77fc9c:	50                                              	push   eax
  77fc9d:	e8 3e 48 d6 ff                                  	call   0x4e44e0
  77fca2:	83 c4 04                                        	add    esp,0x4
  77fca5:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77fca7:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  77fcaa:	8d 4c 24 0c                                     	lea    ecx,[esp+0xc]
  77fcae:	51                                              	push   ecx
  77fcaf:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  77fcb3:	52                                              	push   edx
  77fcb4:	8b cf                                           	mov    ecx,edi
  77fcb6:	ff d0                                           	call   eax
  77fcb8:	f6 44 24 1c 04                                  	test   BYTE PTR [esp+0x1c],0x4
  77fcbd:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  77fcc1:	89 6c 24 14                                     	mov    DWORD PTR [esp+0x14],ebp
  77fcc5:	74 0b                                           	je     0x77fcd2
  77fcc7:	6a 00                                           	push   0x0
  77fcc9:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77fccd:	e8 8e 5a d7 ff                                  	call   0x4f5760
  77fcd2:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  77fcd6:	c7 44 24 34 a8 ee 00 01                         	mov    DWORD PTR [esp+0x34],0x100eea8
  77fcde:	e8 bd 90 d6 ff                                  	call   0x4e8da0
  77fce3:	5f                                              	pop    edi
  77fce4:	8b c6                                           	mov    eax,esi
  77fce6:	5e                                              	pop    esi
  77fce7:	5d                                              	pop    ebp
  77fce8:	81 c4 a8 00 00 00                               	add    esp,0xa8
  77fcee:	c3                                              	ret
  77fcef:	8d 4c 24 38                                     	lea    ecx,[esp+0x38]
  77fcf3:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
  77fcf7:	e8 a4 90 d6 ff                                  	call   0x4e8da0
  77fcfc:	5f                                              	pop    edi
  77fcfd:	5e                                              	pop    esi
  77fcfe:	33 c0                                           	xor    eax,eax
  77fd00:	5d                                              	pop    ebp
  77fd01:	81 c4 a8 00 00 00                               	add    esp,0xa8
  77fd07:	c3                                              	ret
  77fd08:	cc                                              	int3
  77fd09:	cc                                              	int3
  77fd0a:	cc                                              	int3
  77fd0b:	cc                                              	int3
  77fd0c:	cc                                              	int3
  77fd0d:	cc                                              	int3
  77fd0e:	cc                                              	int3
  77fd0f:	cc                                              	int3
