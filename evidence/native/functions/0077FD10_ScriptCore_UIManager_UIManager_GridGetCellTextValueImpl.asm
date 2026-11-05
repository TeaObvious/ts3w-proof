# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077fd10 (ScriptCore.UIManager::UIManager_GridGetCellTextValueImpl)
Paired Ghidra pseudocode: 0077FD10_ScriptCore_UIManager_UIManager_GridGetCellTextValueImpl.c
Window: [0x0077fd10, 0x0077fe60) (336 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077fe60
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077fd10: 83 ec 54 56 57 e8 76 96 fe ff 8b f0 8b 44 24 60
0077fd20: 8b c8 81 e1 00 00 00 ff 81 f9 00 00 00 30 0f 85
0077fd30: 21 01 00 00 8b 16 50 8b 82 cc 00 00 00 8b ce ff
0077fd40: d0 33 ff 3b c7 0f 84 0a 01 00 00 8b 10 8b c8 8b
0077fd50: 42 0c 68 02 e9 1e af ff d0 3b c7 0f 84 f4 00 00
0077fd60: 00 8b 10 8b 92 d8 01 00 00 55 8d 4c 24 64 51 8b
0077fd70: 4c 24 70 51 8b 4c 24 70 51 8b c8 c7 44 24 70 c4
0077fd80: a6 fb 00 ff d2 8b 44 24 64 50 8d 4c 24 14 89 7c
0077fd90: 24 14 89 7c 24 18 89 7c 24 1c c7 44 24 20 1c fb
0077fda0: 00 01 e8 e9 b7 c8 ff 6a 01 6a 10 8d 4c 24 18 51
0077fdb0: 6a 09 bd f4 a6 fb 00 6a 13 8d 4c 24 34 89 6c 24
0077fdc0: 34 66 89 7c 24 3c 66 89 7c 24 3e e8 f0 5b d7 ff
0077fdd0: 8d 54 24 20 52 8d 4c 24 44 89 6c 24 44 66 89 7c
0077fde0: 24 4c 66 89 7c 24 4e e8 c4 66 d7 ff f6 44 24 28
0077fdf0: 04 89 6c 24 20 74 0a 57 8d 4c 24 24 e8 5f 59 d7
0077fe00: ff 8b 4c 24 18 8b 44 24 10 2b c8 83 e1 fe 83 f9
0077fe10: 02 7e 0d 3b c7 74 09 50 e8 c3 46 d6 ff 83 c4 04
0077fe20: 8b 16 8b 52 50 8d 44 24 0c 50 8d 4c 24 44 51 8b
0077fe30: ce ff d2 f6 44 24 48 04 8b 74 24 0c 89 6c 24 40
0077fe40: 5d 74 0a 57 8d 4c 24 40 e8 13 59 d7 ff 5f 8b c6
0077fe50: 5e 83 c4 54 c3 5f 33 c0 5e 83 c4 54 c3 cc cc cc

LINEAR DISASSEMBLY
0077fd10 <.text+0x37ed10>:
  77fd10:	83 ec 54                                        	sub    esp,0x54
  77fd13:	56                                              	push   esi
  77fd14:	57                                              	push   edi
  77fd15:	e8 76 96 fe ff                                  	call   0x769390
  77fd1a:	8b f0                                           	mov    esi,eax
  77fd1c:	8b 44 24 60                                     	mov    eax,DWORD PTR [esp+0x60]
  77fd20:	8b c8                                           	mov    ecx,eax
  77fd22:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77fd28:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77fd2e:	0f 85 21 01 00 00                               	jne    0x77fe55
  77fd34:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77fd36:	50                                              	push   eax
  77fd37:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77fd3d:	8b ce                                           	mov    ecx,esi
  77fd3f:	ff d0                                           	call   eax
  77fd41:	33 ff                                           	xor    edi,edi
  77fd43:	3b c7                                           	cmp    eax,edi
  77fd45:	0f 84 0a 01 00 00                               	je     0x77fe55
  77fd4b:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77fd4d:	8b c8                                           	mov    ecx,eax
  77fd4f:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77fd52:	68 02 e9 1e af                                  	push   0xaf1ee902
  77fd57:	ff d0                                           	call   eax
  77fd59:	3b c7                                           	cmp    eax,edi
  77fd5b:	0f 84 f4 00 00 00                               	je     0x77fe55
  77fd61:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77fd63:	8b 92 d8 01 00 00                               	mov    edx,DWORD PTR [edx+0x1d8]
  77fd69:	55                                              	push   ebp
  77fd6a:	8d 4c 24 64                                     	lea    ecx,[esp+0x64]
  77fd6e:	51                                              	push   ecx
  77fd6f:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
  77fd73:	51                                              	push   ecx
  77fd74:	8b 4c 24 70                                     	mov    ecx,DWORD PTR [esp+0x70]
  77fd78:	51                                              	push   ecx
  77fd79:	8b c8                                           	mov    ecx,eax
  77fd7b:	c7 44 24 70 c4 a6 fb 00                         	mov    DWORD PTR [esp+0x70],0xfba6c4
  77fd83:	ff d2                                           	call   edx
  77fd85:	8b 44 24 64                                     	mov    eax,DWORD PTR [esp+0x64]
  77fd89:	50                                              	push   eax
  77fd8a:	8d 4c 24 14                                     	lea    ecx,[esp+0x14]
  77fd8e:	89 7c 24 14                                     	mov    DWORD PTR [esp+0x14],edi
  77fd92:	89 7c 24 18                                     	mov    DWORD PTR [esp+0x18],edi
  77fd96:	89 7c 24 1c                                     	mov    DWORD PTR [esp+0x1c],edi
  77fd9a:	c7 44 24 20 1c fb 00 01                         	mov    DWORD PTR [esp+0x20],0x100fb1c
  77fda2:	e8 e9 b7 c8 ff                                  	call   0x40b590
  77fda7:	6a 01                                           	push   0x1
  77fda9:	6a 10                                           	push   0x10
  77fdab:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77fdaf:	51                                              	push   ecx
  77fdb0:	6a 09                                           	push   0x9
  77fdb2:	bd f4 a6 fb 00                                  	mov    ebp,0xfba6f4
  77fdb7:	6a 13                                           	push   0x13
  77fdb9:	8d 4c 24 34                                     	lea    ecx,[esp+0x34]
  77fdbd:	89 6c 24 34                                     	mov    DWORD PTR [esp+0x34],ebp
  77fdc1:	66 89 7c 24 3c                                  	mov    WORD PTR [esp+0x3c],di
  77fdc6:	66 89 7c 24 3e                                  	mov    WORD PTR [esp+0x3e],di
  77fdcb:	e8 f0 5b d7 ff                                  	call   0x4f59c0
  77fdd0:	8d 54 24 20                                     	lea    edx,[esp+0x20]
  77fdd4:	52                                              	push   edx
  77fdd5:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  77fdd9:	89 6c 24 44                                     	mov    DWORD PTR [esp+0x44],ebp
  77fddd:	66 89 7c 24 4c                                  	mov    WORD PTR [esp+0x4c],di
  77fde2:	66 89 7c 24 4e                                  	mov    WORD PTR [esp+0x4e],di
  77fde7:	e8 c4 66 d7 ff                                  	call   0x4f64b0
  77fdec:	f6 44 24 28 04                                  	test   BYTE PTR [esp+0x28],0x4
  77fdf1:	89 6c 24 20                                     	mov    DWORD PTR [esp+0x20],ebp
  77fdf5:	74 0a                                           	je     0x77fe01
  77fdf7:	57                                              	push   edi
  77fdf8:	8d 4c 24 24                                     	lea    ecx,[esp+0x24]
  77fdfc:	e8 5f 59 d7 ff                                  	call   0x4f5760
  77fe01:	8b 4c 24 18                                     	mov    ecx,DWORD PTR [esp+0x18]
  77fe05:	8b 44 24 10                                     	mov    eax,DWORD PTR [esp+0x10]
  77fe09:	2b c8                                           	sub    ecx,eax
  77fe0b:	83 e1 fe                                        	and    ecx,0xfffffffe
  77fe0e:	83 f9 02                                        	cmp    ecx,0x2
  77fe11:	7e 0d                                           	jle    0x77fe20
  77fe13:	3b c7                                           	cmp    eax,edi
  77fe15:	74 09                                           	je     0x77fe20
  77fe17:	50                                              	push   eax
  77fe18:	e8 c3 46 d6 ff                                  	call   0x4e44e0
  77fe1d:	83 c4 04                                        	add    esp,0x4
  77fe20:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77fe22:	8b 52 50                                        	mov    edx,DWORD PTR [edx+0x50]
  77fe25:	8d 44 24 0c                                     	lea    eax,[esp+0xc]
  77fe29:	50                                              	push   eax
  77fe2a:	8d 4c 24 44                                     	lea    ecx,[esp+0x44]
  77fe2e:	51                                              	push   ecx
  77fe2f:	8b ce                                           	mov    ecx,esi
  77fe31:	ff d2                                           	call   edx
  77fe33:	f6 44 24 48 04                                  	test   BYTE PTR [esp+0x48],0x4
  77fe38:	8b 74 24 0c                                     	mov    esi,DWORD PTR [esp+0xc]
  77fe3c:	89 6c 24 40                                     	mov    DWORD PTR [esp+0x40],ebp
  77fe40:	5d                                              	pop    ebp
  77fe41:	74 0a                                           	je     0x77fe4d
  77fe43:	57                                              	push   edi
  77fe44:	8d 4c 24 40                                     	lea    ecx,[esp+0x40]
  77fe48:	e8 13 59 d7 ff                                  	call   0x4f5760
  77fe4d:	5f                                              	pop    edi
  77fe4e:	8b c6                                           	mov    eax,esi
  77fe50:	5e                                              	pop    esi
  77fe51:	83 c4 54                                        	add    esp,0x54
  77fe54:	c3                                              	ret
  77fe55:	5f                                              	pop    edi
  77fe56:	33 c0                                           	xor    eax,eax
  77fe58:	5e                                              	pop    esi
  77fe59:	83 c4 54                                        	add    esp,0x54
  77fe5c:	c3                                              	ret
  77fe5d:	cc                                              	int3
  77fe5e:	cc                                              	int3
  77fe5f:	cc                                              	int3
