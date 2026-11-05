# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077fe60 (ScriptCore.UIManager::UIManager_ComboBoxGetValueImpl)
Paired Ghidra pseudocode: 0077FE60_ScriptCore_UIManager_UIManager_ComboBoxGetValueImpl.c
Window: [0x0077fe60, 0x0077ffa0) (320 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077ffa0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077fe60: 83 ec 50 56 57 e8 26 95 fe ff 8b f8 8b 44 24 5c
0077fe70: 8b c8 81 e1 00 00 00 ff 81 f9 00 00 00 30 0f 85
0077fe80: 08 01 00 00 8b 17 50 8b 82 cc 00 00 00 8b cf ff
0077fe90: d0 33 f6 3b c6 0f 84 f1 00 00 00 8b 10 8b c8 8b
0077fea0: 42 0c 68 d9 28 55 2f ff d0 3b c6 0f 84 db 00 00
0077feb0: 00 8b 4c 24 60 8b 10 8b 52 34 55 51 8b c8 ff d2
0077fec0: 50 8d 4c 24 10 89 74 24 10 89 74 24 14 89 74 24
0077fed0: 18 c7 44 24 1c 24 fb 00 01 e8 b2 b6 c8 ff 6a 01
0077fee0: 6a 10 8d 44 24 14 50 6a 09 bd f4 a6 fb 00 6a 13
0077fef0: 8d 4c 24 30 89 6c 24 30 66 89 74 24 38 66 89 74
0077ff00: 24 3a e8 b9 5a d7 ff 8d 4c 24 1c 51 8d 4c 24 40
0077ff10: 89 6c 24 40 66 89 74 24 48 66 89 74 24 4a e8 8d
0077ff20: 65 d7 ff f6 44 24 24 04 89 6c 24 1c 74 0a 56 8d
0077ff30: 4c 24 20 e8 28 58 d7 ff 8b 54 24 14 8b 44 24 0c
0077ff40: 2b d0 83 e2 fe 83 fa 02 7e 0d 3b c6 74 09 50 e8
0077ff50: 8c 45 d6 ff 83 c4 04 8b 07 8b 40 50 8d 4c 24 60
0077ff60: 51 8d 54 24 40 52 8b cf ff d0 f6 44 24 44 04 8b
0077ff70: 7c 24 60 89 6c 24 3c 5d 74 0a 56 8d 4c 24 3c e8
0077ff80: dc 57 d7 ff 8b c7 5f 5e 83 c4 50 c3 5f 33 c0 5e
0077ff90: 83 c4 50 c3 cc cc cc cc cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077fe60 <.text+0x37ee60>:
  77fe60:	83 ec 50                                        	sub    esp,0x50
  77fe63:	56                                              	push   esi
  77fe64:	57                                              	push   edi
  77fe65:	e8 26 95 fe ff                                  	call   0x769390
  77fe6a:	8b f8                                           	mov    edi,eax
  77fe6c:	8b 44 24 5c                                     	mov    eax,DWORD PTR [esp+0x5c]
  77fe70:	8b c8                                           	mov    ecx,eax
  77fe72:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77fe78:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77fe7e:	0f 85 08 01 00 00                               	jne    0x77ff8c
  77fe84:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77fe86:	50                                              	push   eax
  77fe87:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77fe8d:	8b cf                                           	mov    ecx,edi
  77fe8f:	ff d0                                           	call   eax
  77fe91:	33 f6                                           	xor    esi,esi
  77fe93:	3b c6                                           	cmp    eax,esi
  77fe95:	0f 84 f1 00 00 00                               	je     0x77ff8c
  77fe9b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77fe9d:	8b c8                                           	mov    ecx,eax
  77fe9f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77fea2:	68 d9 28 55 2f                                  	push   0x2f5528d9
  77fea7:	ff d0                                           	call   eax
  77fea9:	3b c6                                           	cmp    eax,esi
  77feab:	0f 84 db 00 00 00                               	je     0x77ff8c
  77feb1:	8b 4c 24 60                                     	mov    ecx,DWORD PTR [esp+0x60]
  77feb5:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77feb7:	8b 52 34                                        	mov    edx,DWORD PTR [edx+0x34]
  77feba:	55                                              	push   ebp
  77febb:	51                                              	push   ecx
  77febc:	8b c8                                           	mov    ecx,eax
  77febe:	ff d2                                           	call   edx
  77fec0:	50                                              	push   eax
  77fec1:	8d 4c 24 10                                     	lea    ecx,[esp+0x10]
  77fec5:	89 74 24 10                                     	mov    DWORD PTR [esp+0x10],esi
  77fec9:	89 74 24 14                                     	mov    DWORD PTR [esp+0x14],esi
  77fecd:	89 74 24 18                                     	mov    DWORD PTR [esp+0x18],esi
  77fed1:	c7 44 24 1c 24 fb 00 01                         	mov    DWORD PTR [esp+0x1c],0x100fb24
  77fed9:	e8 b2 b6 c8 ff                                  	call   0x40b590
  77fede:	6a 01                                           	push   0x1
  77fee0:	6a 10                                           	push   0x10
  77fee2:	8d 44 24 14                                     	lea    eax,[esp+0x14]
  77fee6:	50                                              	push   eax
  77fee7:	6a 09                                           	push   0x9
  77fee9:	bd f4 a6 fb 00                                  	mov    ebp,0xfba6f4
  77feee:	6a 13                                           	push   0x13
  77fef0:	8d 4c 24 30                                     	lea    ecx,[esp+0x30]
  77fef4:	89 6c 24 30                                     	mov    DWORD PTR [esp+0x30],ebp
  77fef8:	66 89 74 24 38                                  	mov    WORD PTR [esp+0x38],si
  77fefd:	66 89 74 24 3a                                  	mov    WORD PTR [esp+0x3a],si
  77ff02:	e8 b9 5a d7 ff                                  	call   0x4f59c0
  77ff07:	8d 4c 24 1c                                     	lea    ecx,[esp+0x1c]
  77ff0b:	51                                              	push   ecx
  77ff0c:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  77ff10:	89 6c 24 40                                     	mov    DWORD PTR [esp+0x40],ebp
  77ff14:	66 89 74 24 48                                  	mov    WORD PTR [esp+0x48],si
  77ff19:	66 89 74 24 4a                                  	mov    WORD PTR [esp+0x4a],si
  77ff1e:	e8 8d 65 d7 ff                                  	call   0x4f64b0
  77ff23:	f6 44 24 24 04                                  	test   BYTE PTR [esp+0x24],0x4
  77ff28:	89 6c 24 1c                                     	mov    DWORD PTR [esp+0x1c],ebp
  77ff2c:	74 0a                                           	je     0x77ff38
  77ff2e:	56                                              	push   esi
  77ff2f:	8d 4c 24 20                                     	lea    ecx,[esp+0x20]
  77ff33:	e8 28 58 d7 ff                                  	call   0x4f5760
  77ff38:	8b 54 24 14                                     	mov    edx,DWORD PTR [esp+0x14]
  77ff3c:	8b 44 24 0c                                     	mov    eax,DWORD PTR [esp+0xc]
  77ff40:	2b d0                                           	sub    edx,eax
  77ff42:	83 e2 fe                                        	and    edx,0xfffffffe
  77ff45:	83 fa 02                                        	cmp    edx,0x2
  77ff48:	7e 0d                                           	jle    0x77ff57
  77ff4a:	3b c6                                           	cmp    eax,esi
  77ff4c:	74 09                                           	je     0x77ff57
  77ff4e:	50                                              	push   eax
  77ff4f:	e8 8c 45 d6 ff                                  	call   0x4e44e0
  77ff54:	83 c4 04                                        	add    esp,0x4
  77ff57:	8b 07                                           	mov    eax,DWORD PTR [edi]
  77ff59:	8b 40 50                                        	mov    eax,DWORD PTR [eax+0x50]
  77ff5c:	8d 4c 24 60                                     	lea    ecx,[esp+0x60]
  77ff60:	51                                              	push   ecx
  77ff61:	8d 54 24 40                                     	lea    edx,[esp+0x40]
  77ff65:	52                                              	push   edx
  77ff66:	8b cf                                           	mov    ecx,edi
  77ff68:	ff d0                                           	call   eax
  77ff6a:	f6 44 24 44 04                                  	test   BYTE PTR [esp+0x44],0x4
  77ff6f:	8b 7c 24 60                                     	mov    edi,DWORD PTR [esp+0x60]
  77ff73:	89 6c 24 3c                                     	mov    DWORD PTR [esp+0x3c],ebp
  77ff77:	5d                                              	pop    ebp
  77ff78:	74 0a                                           	je     0x77ff84
  77ff7a:	56                                              	push   esi
  77ff7b:	8d 4c 24 3c                                     	lea    ecx,[esp+0x3c]
  77ff7f:	e8 dc 57 d7 ff                                  	call   0x4f5760
  77ff84:	8b c7                                           	mov    eax,edi
  77ff86:	5f                                              	pop    edi
  77ff87:	5e                                              	pop    esi
  77ff88:	83 c4 50                                        	add    esp,0x50
  77ff8b:	c3                                              	ret
  77ff8c:	5f                                              	pop    edi
  77ff8d:	33 c0                                           	xor    eax,eax
  77ff8f:	5e                                              	pop    esi
  77ff90:	83 c4 50                                        	add    esp,0x50
  77ff93:	c3                                              	ret
  77ff94:	cc                                              	int3
  77ff95:	cc                                              	int3
  77ff96:	cc                                              	int3
  77ff97:	cc                                              	int3
  77ff98:	cc                                              	int3
  77ff99:	cc                                              	int3
  77ff9a:	cc                                              	int3
  77ff9b:	cc                                              	int3
  77ff9c:	cc                                              	int3
  77ff9d:	cc                                              	int3
  77ff9e:	cc                                              	int3
  77ff9f:	cc                                              	int3
