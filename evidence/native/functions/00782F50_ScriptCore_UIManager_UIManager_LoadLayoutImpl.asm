# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00782f50 (ScriptCore.UIManager::UIManager_LoadLayoutImpl)
Paired Ghidra pseudocode: 00782F50_ScriptCore_UIManager_UIManager_LoadLayoutImpl.c
Window: [0x00782f50, 0x00783090) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x00783090
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00782f50: 83 ec 20 53 55 56 57 e8 24 cf d2 ff 85 c0 75 08
00782f60: 5f 5e 5d 5b 83 c4 20 c3 8b 44 24 34 8b 4c 24 38
00782f70: 8b 54 24 40 6a 00 6a 00 6a 00 6a 00 89 44 24 20
00782f80: 8b 44 24 4c 68 58 f0 00 01 68 c0 00 00 00 89 4c
00782f90: 24 2c 89 54 24 30 89 44 24 34 e8 61 15 d6 ff 83
00782fa0: c4 18 85 c0 74 0b 8b c8 e8 73 4f 06 00 8b f0 eb
00782fb0: 02 33 f6 83 86 a4 00 00 00 01 8b 4c 24 10 8b 54
00782fc0: 24 14 83 ec 10 8b c4 89 08 8b 4c 24 28 89 50 04
00782fd0: 8b 54 24 2c 89 48 08 8b ce 89 50 0c e8 bf 64 06
00782fe0: 00 8d 44 24 10 50 8b ce e8 33 50 06 00 8b 56 68
00782ff0: 2b 56 64 8d 4e 70 51 c1 fa 02 52 8d 4c 24 28 e8
00783000: 2c 93 5c 00 8b 46 64 8b 7e 68 8b 5c 24 20 2b f8
00783010: 57 50 53 ff 15 88 66 f9 00 c1 ff 02 8d 2c b8 83
00783020: c4 0c 3b dd 8b fb 74 38 8b 0f 85 c9 74 2b 8b 01
00783030: 8b 50 0c 68 c8 9f f2 03 ff d2 85 c0 74 1b 8b 10
00783040: 8b c8 8b 42 10 ff d0 85 c0 74 05 8d 48 fc eb 02
00783050: 33 c9 8b 11 8b 42 18 ff d0 83 c7 04 3b fd 75 c8
00783060: e8 2b 63 fe ff 8b 10 6a 30 8b c8 8b 82 c8 00 00
00783070: 00 56 ff d0 85 db 8b f0 74 09 53 e8 60 14 d6 ff
00783080: 83 c4 04 5f 8b c6 5e 5d 5b 83 c4 20 c3 cc cc cc

LINEAR DISASSEMBLY
00782f50 <.text+0x381f50>:
  782f50:	83 ec 20                                        	sub    esp,0x20
  782f53:	53                                              	push   ebx
  782f54:	55                                              	push   ebp
  782f55:	56                                              	push   esi
  782f56:	57                                              	push   edi
  782f57:	e8 24 cf d2 ff                                  	call   0x4afe80
  782f5c:	85 c0                                           	test   eax,eax
  782f5e:	75 08                                           	jne    0x782f68
  782f60:	5f                                              	pop    edi
  782f61:	5e                                              	pop    esi
  782f62:	5d                                              	pop    ebp
  782f63:	5b                                              	pop    ebx
  782f64:	83 c4 20                                        	add    esp,0x20
  782f67:	c3                                              	ret
  782f68:	8b 44 24 34                                     	mov    eax,DWORD PTR [esp+0x34]
  782f6c:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  782f70:	8b 54 24 40                                     	mov    edx,DWORD PTR [esp+0x40]
  782f74:	6a 00                                           	push   0x0
  782f76:	6a 00                                           	push   0x0
  782f78:	6a 00                                           	push   0x0
  782f7a:	6a 00                                           	push   0x0
  782f7c:	89 44 24 20                                     	mov    DWORD PTR [esp+0x20],eax
  782f80:	8b 44 24 4c                                     	mov    eax,DWORD PTR [esp+0x4c]
  782f84:	68 58 f0 00 01                                  	push   0x100f058
  782f89:	68 c0 00 00 00                                  	push   0xc0
  782f8e:	89 4c 24 2c                                     	mov    DWORD PTR [esp+0x2c],ecx
  782f92:	89 54 24 30                                     	mov    DWORD PTR [esp+0x30],edx
  782f96:	89 44 24 34                                     	mov    DWORD PTR [esp+0x34],eax
  782f9a:	e8 61 15 d6 ff                                  	call   0x4e4500
  782f9f:	83 c4 18                                        	add    esp,0x18
  782fa2:	85 c0                                           	test   eax,eax
  782fa4:	74 0b                                           	je     0x782fb1
  782fa6:	8b c8                                           	mov    ecx,eax
  782fa8:	e8 73 4f 06 00                                  	call   0x7e7f20
  782fad:	8b f0                                           	mov    esi,eax
  782faf:	eb 02                                           	jmp    0x782fb3
  782fb1:	33 f6                                           	xor    esi,esi
  782fb3:	83 86 a4 00 00 00 01                            	add    DWORD PTR [esi+0xa4],0x1
  782fba:	8b 4c 24 10                                     	mov    ecx,DWORD PTR [esp+0x10]
  782fbe:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  782fc2:	83 ec 10                                        	sub    esp,0x10
  782fc5:	8b c4                                           	mov    eax,esp
  782fc7:	89 08                                           	mov    DWORD PTR [eax],ecx
  782fc9:	8b 4c 24 28                                     	mov    ecx,DWORD PTR [esp+0x28]
  782fcd:	89 50 04                                        	mov    DWORD PTR [eax+0x4],edx
  782fd0:	8b 54 24 2c                                     	mov    edx,DWORD PTR [esp+0x2c]
  782fd4:	89 48 08                                        	mov    DWORD PTR [eax+0x8],ecx
  782fd7:	8b ce                                           	mov    ecx,esi
  782fd9:	89 50 0c                                        	mov    DWORD PTR [eax+0xc],edx
  782fdc:	e8 bf 64 06 00                                  	call   0x7e94a0
  782fe1:	8d 44 24 10                                     	lea    eax,[esp+0x10]
  782fe5:	50                                              	push   eax
  782fe6:	8b ce                                           	mov    ecx,esi
  782fe8:	e8 33 50 06 00                                  	call   0x7e8020
  782fed:	8b 56 68                                        	mov    edx,DWORD PTR [esi+0x68]
  782ff0:	2b 56 64                                        	sub    edx,DWORD PTR [esi+0x64]
  782ff3:	8d 4e 70                                        	lea    ecx,[esi+0x70]
  782ff6:	51                                              	push   ecx
  782ff7:	c1 fa 02                                        	sar    edx,0x2
  782ffa:	52                                              	push   edx
  782ffb:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  782fff:	e8 2c 93 5c 00                                  	call   0xd4c330
  783004:	8b 46 64                                        	mov    eax,DWORD PTR [esi+0x64]
  783007:	8b 7e 68                                        	mov    edi,DWORD PTR [esi+0x68]
  78300a:	8b 5c 24 20                                     	mov    ebx,DWORD PTR [esp+0x20]
  78300e:	2b f8                                           	sub    edi,eax
  783010:	57                                              	push   edi
  783011:	50                                              	push   eax
  783012:	53                                              	push   ebx
  783013:	ff 15 88 66 f9 00                               	call   DWORD PTR ds:0xf96688
  783019:	c1 ff 02                                        	sar    edi,0x2
  78301c:	8d 2c b8                                        	lea    ebp,[eax+edi*4]
  78301f:	83 c4 0c                                        	add    esp,0xc
  783022:	3b dd                                           	cmp    ebx,ebp
  783024:	8b fb                                           	mov    edi,ebx
  783026:	74 38                                           	je     0x783060
  783028:	8b 0f                                           	mov    ecx,DWORD PTR [edi]
  78302a:	85 c9                                           	test   ecx,ecx
  78302c:	74 2b                                           	je     0x783059
  78302e:	8b 01                                           	mov    eax,DWORD PTR [ecx]
  783030:	8b 50 0c                                        	mov    edx,DWORD PTR [eax+0xc]
  783033:	68 c8 9f f2 03                                  	push   0x3f29fc8
  783038:	ff d2                                           	call   edx
  78303a:	85 c0                                           	test   eax,eax
  78303c:	74 1b                                           	je     0x783059
  78303e:	8b 10                                           	mov    edx,DWORD PTR [eax]
  783040:	8b c8                                           	mov    ecx,eax
  783042:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  783045:	ff d0                                           	call   eax
  783047:	85 c0                                           	test   eax,eax
  783049:	74 05                                           	je     0x783050
  78304b:	8d 48 fc                                        	lea    ecx,[eax-0x4]
  78304e:	eb 02                                           	jmp    0x783052
  783050:	33 c9                                           	xor    ecx,ecx
  783052:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  783054:	8b 42 18                                        	mov    eax,DWORD PTR [edx+0x18]
  783057:	ff d0                                           	call   eax
  783059:	83 c7 04                                        	add    edi,0x4
  78305c:	3b fd                                           	cmp    edi,ebp
  78305e:	75 c8                                           	jne    0x783028
  783060:	e8 2b 63 fe ff                                  	call   0x769390
  783065:	8b 10                                           	mov    edx,DWORD PTR [eax]
  783067:	6a 30                                           	push   0x30
  783069:	8b c8                                           	mov    ecx,eax
  78306b:	8b 82 c8 00 00 00                               	mov    eax,DWORD PTR [edx+0xc8]
  783071:	56                                              	push   esi
  783072:	ff d0                                           	call   eax
  783074:	85 db                                           	test   ebx,ebx
  783076:	8b f0                                           	mov    esi,eax
  783078:	74 09                                           	je     0x783083
  78307a:	53                                              	push   ebx
  78307b:	e8 60 14 d6 ff                                  	call   0x4e44e0
  783080:	83 c4 04                                        	add    esp,0x4
  783083:	5f                                              	pop    edi
  783084:	8b c6                                           	mov    eax,esi
  783086:	5e                                              	pop    esi
  783087:	5d                                              	pop    ebp
  783088:	5b                                              	pop    ebx
  783089:	83 c4 20                                        	add    esp,0x20
  78308c:	c3                                              	ret
  78308d:	cc                                              	int3
  78308e:	cc                                              	int3
  78308f:	cc                                              	int3
