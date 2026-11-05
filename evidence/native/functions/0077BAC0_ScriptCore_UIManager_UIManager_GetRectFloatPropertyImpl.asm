# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077bac0 (ScriptCore.UIManager::UIManager_GetRectFloatPropertyImpl)
Paired Ghidra pseudocode: 0077BAC0_ScriptCore_UIManager_UIManager_GetRectFloatPropertyImpl.c
Window: [0x0077bac0, 0x0077bbb0) (240 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077bbb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077bac0: 83 ec 50 e8 c8 d8 fe ff 8b 4c 24 54 8b d1 81 e2
0077bad0: 00 00 00 ff 81 fa 00 00 00 30 0f 85 bd 00 00 00
0077bae0: 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 0f
0077baf0: 84 a8 00 00 00 8b 10 56 8b c8 8b 42 0c 68 82 83
0077bb00: c5 ee ff d0 8b f0 85 f6 0f 84 8e 00 00 00 6a 00
0077bb10: 6a 00 6a 00 6a ff 6a 00 8d 4c 24 44 c7 44 24 40
0077bb20: a8 ee 00 01 e8 87 d1 d6 ff 8b 16 8b 52 10 8d 44
0077bb30: 24 1c 50 8b ce ff d2 8b 4c 24 5c 8d 44 24 2c 50
0077bb40: 51 8d 54 24 0c 52 8d 4c 24 28 e8 51 61 d9 ff 85
0077bb50: c0 74 38 8d 4c 24 2c 51 8d 54 24 08 52 8d 4c 24
0077bb60: 18 51 8b c8 e8 37 5f d9 ff 84 c0 74 1e 8b 44 24
0077bb70: 14 d9 00 8b 4c 24 60 d9 19 d9 40 04 d9 59 04 d9
0077bb80: 40 08 d9 59 08 d9 40 0c d9 59 0c 8d 4c 24 30 c7
0077bb90: 44 24 2c a8 ee 00 01 e8 04 d2 d6 ff 5e 83 c4 50
0077bba0: c3 cc cc cc cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077bac0 <.text+0x37aac0>:
  77bac0:	83 ec 50                                        	sub    esp,0x50
  77bac3:	e8 c8 d8 fe ff                                  	call   0x769390
  77bac8:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  77bacc:	8b d1                                           	mov    edx,ecx
  77bace:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77bad4:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77bada:	0f 85 bd 00 00 00                               	jne    0x77bb9d
  77bae0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77bae2:	51                                              	push   ecx
  77bae3:	8b c8                                           	mov    ecx,eax
  77bae5:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77baeb:	ff d0                                           	call   eax
  77baed:	85 c0                                           	test   eax,eax
  77baef:	0f 84 a8 00 00 00                               	je     0x77bb9d
  77baf5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77baf7:	56                                              	push   esi
  77baf8:	8b c8                                           	mov    ecx,eax
  77bafa:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77bafd:	68 82 83 c5 ee                                  	push   0xeec58382
  77bb02:	ff d0                                           	call   eax
  77bb04:	8b f0                                           	mov    esi,eax
  77bb06:	85 f6                                           	test   esi,esi
  77bb08:	0f 84 8e 00 00 00                               	je     0x77bb9c
  77bb0e:	6a 00                                           	push   0x0
  77bb10:	6a 00                                           	push   0x0
  77bb12:	6a 00                                           	push   0x0
  77bb14:	6a ff                                           	push   0xffffffff
  77bb16:	6a 00                                           	push   0x0
  77bb18:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  77bb1c:	c7 44 24 40 a8 ee 00 01                         	mov    DWORD PTR [esp+0x40],0x100eea8
  77bb24:	e8 87 d1 d6 ff                                  	call   0x4e8cb0
  77bb29:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77bb2b:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  77bb2e:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  77bb32:	50                                              	push   eax
  77bb33:	8b ce                                           	mov    ecx,esi
  77bb35:	ff d2                                           	call   edx
  77bb37:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  77bb3b:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  77bb3f:	50                                              	push   eax
  77bb40:	51                                              	push   ecx
  77bb41:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  77bb45:	52                                              	push   edx
  77bb46:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  77bb4a:	e8 51 61 d9 ff                                  	call   0x511ca0
  77bb4f:	85 c0                                           	test   eax,eax
  77bb51:	74 38                                           	je     0x77bb8b
  77bb53:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  77bb57:	51                                              	push   ecx
  77bb58:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  77bb5c:	52                                              	push   edx
  77bb5d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77bb61:	51                                              	push   ecx
  77bb62:	8b c8                                           	mov    ecx,eax
  77bb64:	e8 37 5f d9 ff                                  	call   0x511aa0
  77bb69:	84 c0                                           	test   al,al
  77bb6b:	74 1e                                           	je     0x77bb8b
  77bb6d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  77bb71:	d9 00                                           	fld    DWORD PTR [eax]
  77bb73:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  77bb77:	d9 19                                           	fstp   DWORD PTR [ecx]
  77bb79:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
  77bb7c:	d9 59 04                                        	fstp   DWORD PTR [ecx+0x4]
  77bb7f:	d9 40 08                                        	fld    DWORD PTR [eax+0x8]
  77bb82:	d9 59 08                                        	fstp   DWORD PTR [ecx+0x8]
  77bb85:	d9 40 0c                                        	fld    DWORD PTR [eax+0xc]
  77bb88:	d9 59 0c                                        	fstp   DWORD PTR [ecx+0xc]
  77bb8b:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77bb8f:	c7 44 24 2c a8 ee 00 01                         	mov    DWORD PTR [esp+0x2c],0x100eea8
  77bb97:	e8 04 d2 d6 ff                                  	call   0x4e8da0
  77bb9c:	5e                                              	pop    esi
  77bb9d:	83 c4 50                                        	add    esp,0x50
  77bba0:	c3                                              	ret
  77bba1:	cc                                              	int3
  77bba2:	cc                                              	int3
  77bba3:	cc                                              	int3
  77bba4:	cc                                              	int3
  77bba5:	cc                                              	int3
  77bba6:	cc                                              	int3
  77bba7:	cc                                              	int3
  77bba8:	cc                                              	int3
  77bba9:	cc                                              	int3
  77bbaa:	cc                                              	int3
  77bbab:	cc                                              	int3
  77bbac:	cc                                              	int3
  77bbad:	cc                                              	int3
  77bbae:	cc                                              	int3
  77bbaf:	cc                                              	int3
