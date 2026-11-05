# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00776f70 (ScriptCore.VisualEffect::Swarm_CreateVisualEffect)
Paired Ghidra pseudocode: 00776F70_ScriptCore_VisualEffect_Swarm_CreateVisualEffect.c
Window: [0x00776f70, 0x00777080) (272 bytes; stop exclusive)
Next defined Ghidra entry: 0x00777080
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00776f70: 81 ec 4c 01 00 00 57 e8 f4 05 1c 00 8b f8 85 ff
00776f80: 75 0c 33 c0 33 d2 5f 81 c4 4c 01 00 00 c3 e8 fd
00776f90: 23 ff ff 8b 8c 24 54 01 00 00 8b 10 8b 52 58 51
00776fa0: 8b c8 ff d2 85 c0 74 da 56 6a ff 68 00 01 00 00
00776fb0: 50 8d 44 24 60 50 e8 e5 6f d8 ff 83 c4 10 e8 fd
00776fc0: 89 1b 00 50 8d 4c 24 28 e8 73 2a 1c 00 8d 4c 24
00776fd0: 54 51 68 5b 55 db 8c 8d 4c 24 2c e8 b0 2f 1c 00
00776fe0: 8d 54 24 18 52 8d 4c 24 28 e8 c2 2e 1c 00 8b 35
00776ff0: 90 9e 1e 01 0b 35 58 a1 1e 01 6a 00 8d 44 24 58
00777000: 68 c5 9d 1c 81 50 e8 75 37 d8 ff 83 c4 0c 6a 00
00777010: 6a 00 8d 4c 24 10 51 56 8d 54 24 28 52 8b cf 89
00777020: 44 24 1c c7 44 24 20 00 00 00 00 c7 44 24 24 83
00777030: 8f a1 2d c7 44 24 28 01 00 00 00 e8 c0 1b 1c 00
00777040: 85 c0 8d 4c 24 24 75 12 e8 a3 bc e0 ff 5e 33 c0
00777050: 33 d2 5f 81 c4 4c 01 00 00 c3 8b 70 08 8b 78 0c
00777060: e8 8b bc e0 ff 8b c6 5e 8b d7 5f 81 c4 4c 01 00
00777070: 00 c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
00776f70 <.text+0x375f70>:
  776f70:	81 ec 4c 01 00 00                               	sub    esp,0x14c
  776f76:	57                                              	push   edi
  776f77:	e8 f4 05 1c 00                                  	call   0x937570
  776f7c:	8b f8                                           	mov    edi,eax
  776f7e:	85 ff                                           	test   edi,edi
  776f80:	75 0c                                           	jne    0x776f8e
  776f82:	33 c0                                           	xor    eax,eax
  776f84:	33 d2                                           	xor    edx,edx
  776f86:	5f                                              	pop    edi
  776f87:	81 c4 4c 01 00 00                               	add    esp,0x14c
  776f8d:	c3                                              	ret
  776f8e:	e8 fd 23 ff ff                                  	call   0x769390
  776f93:	8b 8c 24 54 01 00 00                            	mov    ecx,DWORD PTR [esp+0x154]
  776f9a:	8b 10                                           	mov    edx,DWORD PTR [eax]
  776f9c:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  776f9f:	51                                              	push   ecx
  776fa0:	8b c8                                           	mov    ecx,eax
  776fa2:	ff d2                                           	call   edx
  776fa4:	85 c0                                           	test   eax,eax
  776fa6:	74 da                                           	je     0x776f82
  776fa8:	56                                              	push   esi
  776fa9:	6a ff                                           	push   0xffffffff
  776fab:	68 00 01 00 00                                  	push   0x100
  776fb0:	50                                              	push   eax
  776fb1:	8d 44 24 60                                     	lea    eax,[esp+0x60]
  776fb5:	50                                              	push   eax
  776fb6:	e8 e5 6f d8 ff                                  	call   0x4fdfa0
  776fbb:	83 c4 10                                        	add    esp,0x10
  776fbe:	e8 fd 89 1b 00                                  	call   0x92f9c0
  776fc3:	50                                              	push   eax
  776fc4:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  776fc8:	e8 73 2a 1c 00                                  	call   0x939a40
  776fcd:	8d 4c 24 54                                     	lea    ecx,[esp+0x54]
  776fd1:	51                                              	push   ecx
  776fd2:	68 5b 55 db 8c                                  	push   0x8cdb555b
  776fd7:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  776fdb:	e8 b0 2f 1c 00                                  	call   0x939f90
  776fe0:	8d 54 24 18                                     	lea    edx,[esp+0x18]
  776fe4:	52                                              	push   edx
  776fe5:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  776fe9:	e8 c2 2e 1c 00                                  	call   0x939eb0
  776fee:	8b 35 90 9e 1e 01                               	mov    esi,DWORD PTR ds:0x11e9e90
  776ff4:	0b 35 58 a1 1e 01                               	or     esi,DWORD PTR ds:0x11ea158
  776ffa:	6a 00                                           	push   0x0
  776ffc:	8d 44 24 58                                     	lea    eax,[esp+0x58]
  777000:	68 c5 9d 1c 81                                  	push   0x811c9dc5
  777005:	50                                              	push   eax
  777006:	e8 75 37 d8 ff                                  	call   0x4fa780
  77700b:	83 c4 0c                                        	add    esp,0xc
  77700e:	6a 00                                           	push   0x0
  777010:	6a 00                                           	push   0x0
  777012:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  777016:	51                                              	push   ecx
  777017:	56                                              	push   esi
  777018:	8d 54 24 28                                     	lea    edx,[esp+0x28]
  77701c:	52                                              	push   edx
  77701d:	8b cf                                           	mov    ecx,edi
  77701f:	89 44 24 1c                                     	mov    DWORD PTR [esp+0x1c],eax
  777023:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  77702b:	c7 44 24 24 83 8f a1 2d                         	mov    DWORD PTR [esp+0x24],0x2da18f83
  777033:	c7 44 24 28 01 00 00 00                         	mov    DWORD PTR [esp+0x28],0x1
  77703b:	e8 c0 1b 1c 00                                  	call   0x938c00
  777040:	85 c0                                           	test   eax,eax
  777042:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  777046:	75 12                                           	jne    0x77705a
  777048:	e8 a3 bc e0 ff                                  	call   0x582cf0
  77704d:	5e                                              	pop    esi
  77704e:	33 c0                                           	xor    eax,eax
  777050:	33 d2                                           	xor    edx,edx
  777052:	5f                                              	pop    edi
  777053:	81 c4 4c 01 00 00                               	add    esp,0x14c
  777059:	c3                                              	ret
  77705a:	8b 70 08                                        	mov    esi,DWORD PTR [eax+0x8]
  77705d:	8b 78 0c                                        	mov    edi,DWORD PTR [eax+0xc]
  777060:	e8 8b bc e0 ff                                  	call   0x582cf0
  777065:	8b c6                                           	mov    eax,esi
  777067:	5e                                              	pop    esi
  777068:	8b d7                                           	mov    edx,edi
  77706a:	5f                                              	pop    edi
  77706b:	81 c4 4c 01 00 00                               	add    esp,0x14c
  777071:	c3                                              	ret
  777072:	cc                                              	int3
  777073:	cc                                              	int3
  777074:	cc                                              	int3
  777075:	cc                                              	int3
  777076:	cc                                              	int3
  777077:	cc                                              	int3
  777078:	cc                                              	int3
  777079:	cc                                              	int3
  77707a:	cc                                              	int3
  77707b:	cc                                              	int3
  77707c:	cc                                              	int3
  77707d:	cc                                              	int3
  77707e:	cc                                              	int3
  77707f:	cc                                              	int3
