# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077bcb0 (ScriptCore.UIManager::UIManager_GetVector2FloatPropertyImpl)
Paired Ghidra pseudocode: 0077BCB0_ScriptCore_UIManager_UIManager_GetVector2FloatPropertyImpl.c
Window: [0x0077bcb0, 0x0077bd90) (224 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077bd90
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077bcb0: 83 ec 50 e8 d8 d6 fe ff 8b 4c 24 54 8b d1 81 e2
0077bcc0: 00 00 00 ff 81 fa 00 00 00 30 0f 85 b1 00 00 00
0077bcd0: 8b 10 51 8b c8 8b 82 cc 00 00 00 ff d0 85 c0 0f
0077bce0: 84 9c 00 00 00 8b 10 56 8b c8 8b 42 0c 68 82 83
0077bcf0: c5 ee ff d0 8b f0 85 f6 0f 84 82 00 00 00 6a 00
0077bd00: 6a 00 6a 00 6a ff 6a 00 8d 4c 24 44 c7 44 24 40
0077bd10: a8 ee 00 01 e8 97 cf d6 ff 8b 16 8b 52 10 8d 44
0077bd20: 24 1c 50 8b ce ff d2 8b 4c 24 5c 8d 44 24 2c 50
0077bd30: 51 8d 54 24 0c 52 8d 4c 24 28 e8 61 5f d9 ff 85
0077bd40: c0 74 2c 8d 4c 24 2c 51 8d 54 24 08 52 8d 4c 24
0077bd50: 18 51 8b c8 e8 47 5d d9 ff 84 c0 74 12 8b 44 24
0077bd60: 14 d9 00 8b 4c 24 60 d9 19 d9 40 04 d9 59 04 8d
0077bd70: 4c 24 30 c7 44 24 2c a8 ee 00 01 e8 20 d0 d6 ff
0077bd80: 5e 83 c4 50 c3 cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077bcb0 <.text+0x37acb0>:
  77bcb0:	83 ec 50                                        	sub    esp,0x50
  77bcb3:	e8 d8 d6 fe ff                                  	call   0x769390
  77bcb8:	8b 4c 24 54                                     	mov    ecx,DWORD PTR [esp+0x54]
  77bcbc:	8b d1                                           	mov    edx,ecx
  77bcbe:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77bcc4:	81 fa 00 00 00 30                               	cmp    edx,0x30000000
  77bcca:	0f 85 b1 00 00 00                               	jne    0x77bd81
  77bcd0:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77bcd2:	51                                              	push   ecx
  77bcd3:	8b c8                                           	mov    ecx,eax
  77bcd5:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77bcdb:	ff d0                                           	call   eax
  77bcdd:	85 c0                                           	test   eax,eax
  77bcdf:	0f 84 9c 00 00 00                               	je     0x77bd81
  77bce5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77bce7:	56                                              	push   esi
  77bce8:	8b c8                                           	mov    ecx,eax
  77bcea:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77bced:	68 82 83 c5 ee                                  	push   0xeec58382
  77bcf2:	ff d0                                           	call   eax
  77bcf4:	8b f0                                           	mov    esi,eax
  77bcf6:	85 f6                                           	test   esi,esi
  77bcf8:	0f 84 82 00 00 00                               	je     0x77bd80
  77bcfe:	6a 00                                           	push   0x0
  77bd00:	6a 00                                           	push   0x0
  77bd02:	6a 00                                           	push   0x0
  77bd04:	6a ff                                           	push   0xffffffff
  77bd06:	6a 00                                           	push   0x0
  77bd08:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  77bd0c:	c7 44 24 40 a8 ee 00 01                         	mov    DWORD PTR [esp+0x40],0x100eea8
  77bd14:	e8 97 cf d6 ff                                  	call   0x4e8cb0
  77bd19:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77bd1b:	8b 52 10                                        	mov    edx,DWORD PTR [edx+0x10]
  77bd1e:	8d 44 24 1c                                     	lea    eax,[esp+0x1c]
  77bd22:	50                                              	push   eax
  77bd23:	8b ce                                           	mov    ecx,esi
  77bd25:	ff d2                                           	call   edx
  77bd27:	8b 4c 24 5c                                     	mov    ecx,DWORD PTR [esp+0x5c]
  77bd2b:	8d 44 24 2c                                     	lea    eax,[esp+0x2c]
  77bd2f:	50                                              	push   eax
  77bd30:	51                                              	push   ecx
  77bd31:	8d 54 24 0c                                     	lea    edx,[esp+0xc]
  77bd35:	52                                              	push   edx
  77bd36:	8d 4c 24 28                                     	lea    ecx,[esp+0x28]
  77bd3a:	e8 61 5f d9 ff                                  	call   0x511ca0
  77bd3f:	85 c0                                           	test   eax,eax
  77bd41:	74 2c                                           	je     0x77bd6f
  77bd43:	8d 4c 24 2c                                     	lea    ecx,[esp+0x2c]
  77bd47:	51                                              	push   ecx
  77bd48:	8d 54 24 08                                     	lea    edx,[esp+0x8]
  77bd4c:	52                                              	push   edx
  77bd4d:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77bd51:	51                                              	push   ecx
  77bd52:	8b c8                                           	mov    ecx,eax
  77bd54:	e8 47 5d d9 ff                                  	call   0x511aa0
  77bd59:	84 c0                                           	test   al,al
  77bd5b:	74 12                                           	je     0x77bd6f
  77bd5d:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  77bd61:	d9 00                                           	fld    DWORD PTR [eax]
  77bd63:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  77bd67:	d9 19                                           	fstp   DWORD PTR [ecx]
  77bd69:	d9 40 04                                        	fld    DWORD PTR [eax+0x4]
  77bd6c:	d9 59 04                                        	fstp   DWORD PTR [ecx+0x4]
  77bd6f:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77bd73:	c7 44 24 2c a8 ee 00 01                         	mov    DWORD PTR [esp+0x2c],0x100eea8
  77bd7b:	e8 20 d0 d6 ff                                  	call   0x4e8da0
  77bd80:	5e                                              	pop    esi
  77bd81:	83 c4 50                                        	add    esp,0x50
  77bd84:	c3                                              	ret
  77bd85:	cc                                              	int3
  77bd86:	cc                                              	int3
  77bd87:	cc                                              	int3
  77bd88:	cc                                              	int3
  77bd89:	cc                                              	int3
  77bd8a:	cc                                              	int3
  77bd8b:	cc                                              	int3
  77bd8c:	cc                                              	int3
  77bd8d:	cc                                              	int3
  77bd8e:	cc                                              	int3
  77bd8f:	cc                                              	int3
