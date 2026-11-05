# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077ccd0 (ScriptCore.UIManager::UIManager_ComboBoxGenericImpl)
Paired Ghidra pseudocode: 0077CCD0_ScriptCore_UIManager_UIManager_ComboBoxGenericImpl.c
Window: [0x0077ccd0, 0x0077ceb0) (480 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077ceb0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077ccd0: 83 ec 24 56 57 e8 b6 c6 fe ff 8b f8 8b 44 24 30
0077cce0: 8b c8 81 e1 00 00 00 ff 81 f9 00 00 00 30 0f 85
0077ccf0: 7e 01 00 00 8b 17 50 8b 82 cc 00 00 00 8b cf ff
0077cd00: d0 85 c0 0f 84 69 01 00 00 8b 10 8b c8 8b 42 0c
0077cd10: 68 d9 28 55 2f ff d0 8b f0 85 f6 0f 84 51 01 00
0077cd20: 00 8b 17 8b 44 24 3c 8b 52 58 50 8b cf ff d2 8b
0077cd30: 4c 24 34 83 f9 0a 0f 87 36 01 00 00 ff 24 8d 7c
0077cd40: ce 77 00 8b 16 50 8b 42 20 8b ce ff d0 8b 16 8b
0077cd50: 42 3c 8b ce ff d0 5f 83 e8 01 5e 83 c4 24 c3 8b
0077cd60: 16 8b 52 24 50 8b 44 24 3c 50 8b ce ff d2 5f b8
0077cd70: 01 00 00 00 5e 83 c4 24 c3 8b 4c 24 38 8b 06 8b
0077cd80: 50 28 51 8b ce ff d2 5f b8 01 00 00 00 5e 83 c4
0077cd90: 24 c3 8b 06 8b 50 2c 8b ce ff d2 5f b8 01 00 00
0077cda0: 00 5e 83 c4 24 c3 8b 16 8b 52 30 50 8b 44 24 3c
0077cdb0: 50 8b ce ff d2 5f b8 01 00 00 00 5e 83 c4 24 c3
0077cdc0: 8b 16 50 8b 42 38 8b ce ff d0 5f 5e 83 c4 24 c3
0077cdd0: 8b 16 8b 42 3c 5f 8b ce 5e 83 c4 24 ff e0 8b 16
0077cde0: 8b 42 40 5f 8b ce 5e 83 c4 24 ff e0 8b 16 8b 44
0077cdf0: 24 38 8b 52 44 6a 01 50 8b ce ff d2 5f b8 01 00
0077ce00: 00 00 5e 83 c4 24 c3 8d 44 24 08 53 c7 44 24 1c
0077ce10: 15 00 00 00 c7 44 24 20 00 00 00 00 89 44 24 2c
0077ce20: e8 6b e1 d8 ff 8b 16 8b d8 8b 3b 8b 42 10 6a 00
0077ce30: 8d 4c 24 18 51 8b ce 83 c7 10 ff d0 8b 16 50 8b
0077ce40: 42 10 8b ce ff d0 8b 17 50 8b cb ff d2 f3 0f 2c
0077ce50: 44 24 0c 5b 5f 5e 83 c4 24 c3 8b 06 8b 90 90 00
0077ce60: 00 00 8b ce ff d2 f6 d8 5f 5e 1b c0 f7 d8 83 c4
0077ce70: 24 c3 5f 33 c0 5e 83 c4 24 c3 8b ff 43 cd 77 00
0077ce80: 5f cd 77 00 79 cd 77 00 92 cd 77 00 a6 cd 77 00
0077ce90: c0 cd 77 00 d0 cd 77 00 de cd 77 00 ec cd 77 00
0077cea0: 07 ce 77 00 5a ce 77 00 cc cc cc cc cc cc cc cc

LINEAR DISASSEMBLY
0077ccd0 <.text+0x37bcd0>:
  77ccd0:	83 ec 24                                        	sub    esp,0x24
  77ccd3:	56                                              	push   esi
  77ccd4:	57                                              	push   edi
  77ccd5:	e8 b6 c6 fe ff                                  	call   0x769390
  77ccda:	8b f8                                           	mov    edi,eax
  77ccdc:	8b 44 24 30                                     	mov    eax,DWORD PTR [esp+0x30]
  77cce0:	8b c8                                           	mov    ecx,eax
  77cce2:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77cce8:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77ccee:	0f 85 7e 01 00 00                               	jne    0x77ce72
  77ccf4:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77ccf6:	50                                              	push   eax
  77ccf7:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77ccfd:	8b cf                                           	mov    ecx,edi
  77ccff:	ff d0                                           	call   eax
  77cd01:	85 c0                                           	test   eax,eax
  77cd03:	0f 84 69 01 00 00                               	je     0x77ce72
  77cd09:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77cd0b:	8b c8                                           	mov    ecx,eax
  77cd0d:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77cd10:	68 d9 28 55 2f                                  	push   0x2f5528d9
  77cd15:	ff d0                                           	call   eax
  77cd17:	8b f0                                           	mov    esi,eax
  77cd19:	85 f6                                           	test   esi,esi
  77cd1b:	0f 84 51 01 00 00                               	je     0x77ce72
  77cd21:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77cd23:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  77cd27:	8b 52 58                                        	mov    edx,DWORD PTR [edx+0x58]
  77cd2a:	50                                              	push   eax
  77cd2b:	8b cf                                           	mov    ecx,edi
  77cd2d:	ff d2                                           	call   edx
  77cd2f:	8b 4c 24 34                                     	mov    ecx,DWORD PTR [esp+0x34]
  77cd33:	83 f9 0a                                        	cmp    ecx,0xa
  77cd36:	0f 87 36 01 00 00                               	ja     0x77ce72
  77cd3c:	ff 24 8d 7c ce 77 00                            	jmp    DWORD PTR [ecx*4+0x77ce7c]
  77cd43:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cd45:	50                                              	push   eax
  77cd46:	8b 42 20                                        	mov    eax,DWORD PTR [edx+0x20]
  77cd49:	8b ce                                           	mov    ecx,esi
  77cd4b:	ff d0                                           	call   eax
  77cd4d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cd4f:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  77cd52:	8b ce                                           	mov    ecx,esi
  77cd54:	ff d0                                           	call   eax
  77cd56:	5f                                              	pop    edi
  77cd57:	83 e8 01                                        	sub    eax,0x1
  77cd5a:	5e                                              	pop    esi
  77cd5b:	83 c4 24                                        	add    esp,0x24
  77cd5e:	c3                                              	ret
  77cd5f:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cd61:	8b 52 24                                        	mov    edx,DWORD PTR [edx+0x24]
  77cd64:	50                                              	push   eax
  77cd65:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  77cd69:	50                                              	push   eax
  77cd6a:	8b ce                                           	mov    ecx,esi
  77cd6c:	ff d2                                           	call   edx
  77cd6e:	5f                                              	pop    edi
  77cd6f:	b8 01 00 00 00                                  	mov    eax,0x1
  77cd74:	5e                                              	pop    esi
  77cd75:	83 c4 24                                        	add    esp,0x24
  77cd78:	c3                                              	ret
  77cd79:	8b 4c 24 38                                     	mov    ecx,DWORD PTR [esp+0x38]
  77cd7d:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77cd7f:	8b 50 28                                        	mov    edx,DWORD PTR [eax+0x28]
  77cd82:	51                                              	push   ecx
  77cd83:	8b ce                                           	mov    ecx,esi
  77cd85:	ff d2                                           	call   edx
  77cd87:	5f                                              	pop    edi
  77cd88:	b8 01 00 00 00                                  	mov    eax,0x1
  77cd8d:	5e                                              	pop    esi
  77cd8e:	83 c4 24                                        	add    esp,0x24
  77cd91:	c3                                              	ret
  77cd92:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77cd94:	8b 50 2c                                        	mov    edx,DWORD PTR [eax+0x2c]
  77cd97:	8b ce                                           	mov    ecx,esi
  77cd99:	ff d2                                           	call   edx
  77cd9b:	5f                                              	pop    edi
  77cd9c:	b8 01 00 00 00                                  	mov    eax,0x1
  77cda1:	5e                                              	pop    esi
  77cda2:	83 c4 24                                        	add    esp,0x24
  77cda5:	c3                                              	ret
  77cda6:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cda8:	8b 52 30                                        	mov    edx,DWORD PTR [edx+0x30]
  77cdab:	50                                              	push   eax
  77cdac:	8b 44 24 3c                                     	mov    eax,DWORD PTR [esp+0x3c]
  77cdb0:	50                                              	push   eax
  77cdb1:	8b ce                                           	mov    ecx,esi
  77cdb3:	ff d2                                           	call   edx
  77cdb5:	5f                                              	pop    edi
  77cdb6:	b8 01 00 00 00                                  	mov    eax,0x1
  77cdbb:	5e                                              	pop    esi
  77cdbc:	83 c4 24                                        	add    esp,0x24
  77cdbf:	c3                                              	ret
  77cdc0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cdc2:	50                                              	push   eax
  77cdc3:	8b 42 38                                        	mov    eax,DWORD PTR [edx+0x38]
  77cdc6:	8b ce                                           	mov    ecx,esi
  77cdc8:	ff d0                                           	call   eax
  77cdca:	5f                                              	pop    edi
  77cdcb:	5e                                              	pop    esi
  77cdcc:	83 c4 24                                        	add    esp,0x24
  77cdcf:	c3                                              	ret
  77cdd0:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cdd2:	8b 42 3c                                        	mov    eax,DWORD PTR [edx+0x3c]
  77cdd5:	5f                                              	pop    edi
  77cdd6:	8b ce                                           	mov    ecx,esi
  77cdd8:	5e                                              	pop    esi
  77cdd9:	83 c4 24                                        	add    esp,0x24
  77cddc:	ff e0                                           	jmp    eax
  77cdde:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cde0:	8b 42 40                                        	mov    eax,DWORD PTR [edx+0x40]
  77cde3:	5f                                              	pop    edi
  77cde4:	8b ce                                           	mov    ecx,esi
  77cde6:	5e                                              	pop    esi
  77cde7:	83 c4 24                                        	add    esp,0x24
  77cdea:	ff e0                                           	jmp    eax
  77cdec:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77cdee:	8b 44 24 38                                     	mov    eax,DWORD PTR [esp+0x38]
  77cdf2:	8b 52 44                                        	mov    edx,DWORD PTR [edx+0x44]
  77cdf5:	6a 01                                           	push   0x1
  77cdf7:	50                                              	push   eax
  77cdf8:	8b ce                                           	mov    ecx,esi
  77cdfa:	ff d2                                           	call   edx
  77cdfc:	5f                                              	pop    edi
  77cdfd:	b8 01 00 00 00                                  	mov    eax,0x1
  77ce02:	5e                                              	pop    esi
  77ce03:	83 c4 24                                        	add    esp,0x24
  77ce06:	c3                                              	ret
  77ce07:	8d 44 24 08                                     	lea    eax,[esp+0x8]
  77ce0b:	53                                              	push   ebx
  77ce0c:	c7 44 24 1c 15 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x15
  77ce14:	c7 44 24 20 00 00 00 00                         	mov    DWORD PTR [esp+0x20],0x0
  77ce1c:	89 44 24 2c                                     	mov    DWORD PTR [esp+0x2c],eax
  77ce20:	e8 6b e1 d8 ff                                  	call   0x50af90
  77ce25:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77ce27:	8b d8                                           	mov    ebx,eax
  77ce29:	8b 3b                                           	mov    edi,DWORD PTR [ebx]
  77ce2b:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  77ce2e:	6a 00                                           	push   0x0
  77ce30:	8d 4c 24 18                                     	lea    ecx,[esp+0x18]
  77ce34:	51                                              	push   ecx
  77ce35:	8b ce                                           	mov    ecx,esi
  77ce37:	83 c7 10                                        	add    edi,0x10
  77ce3a:	ff d0                                           	call   eax
  77ce3c:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77ce3e:	50                                              	push   eax
  77ce3f:	8b 42 10                                        	mov    eax,DWORD PTR [edx+0x10]
  77ce42:	8b ce                                           	mov    ecx,esi
  77ce44:	ff d0                                           	call   eax
  77ce46:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77ce48:	50                                              	push   eax
  77ce49:	8b cb                                           	mov    ecx,ebx
  77ce4b:	ff d2                                           	call   edx
  77ce4d:	f3 0f 2c 44 24 0c                               	cvttss2si eax,DWORD PTR [esp+0xc]
  77ce53:	5b                                              	pop    ebx
  77ce54:	5f                                              	pop    edi
  77ce55:	5e                                              	pop    esi
  77ce56:	83 c4 24                                        	add    esp,0x24
  77ce59:	c3                                              	ret
  77ce5a:	8b 06                                           	mov    eax,DWORD PTR [esi]
  77ce5c:	8b 90 90 00 00 00                               	mov    edx,DWORD PTR [eax+0x90]
  77ce62:	8b ce                                           	mov    ecx,esi
  77ce64:	ff d2                                           	call   edx
  77ce66:	f6 d8                                           	neg    al
  77ce68:	5f                                              	pop    edi
  77ce69:	5e                                              	pop    esi
  77ce6a:	1b c0                                           	sbb    eax,eax
  77ce6c:	f7 d8                                           	neg    eax
  77ce6e:	83 c4 24                                        	add    esp,0x24
  77ce71:	c3                                              	ret
  77ce72:	5f                                              	pop    edi
  77ce73:	33 c0                                           	xor    eax,eax
  77ce75:	5e                                              	pop    esi
  77ce76:	83 c4 24                                        	add    esp,0x24
  77ce79:	c3                                              	ret
  77ce7a:	8b ff                                           	mov    edi,edi
  77ce7c:	43                                              	inc    ebx
  77ce7d:	cd 77                                           	int    0x77
  77ce7f:	00 5f cd                                        	add    BYTE PTR [edi-0x33],bl
  77ce82:	77 00                                           	ja     0x77ce84
  77ce84:	79 cd                                           	jns    0x77ce53
  77ce86:	77 00                                           	ja     0x77ce88
  77ce88:	92                                              	xchg   edx,eax
  77ce89:	cd 77                                           	int    0x77
  77ce8b:	00 a6 cd 77 00 c0                               	add    BYTE PTR [esi-0x3fff8833],ah
  77ce91:	cd 77                                           	int    0x77
  77ce93:	00 d0                                           	add    al,dl
  77ce95:	cd 77                                           	int    0x77
  77ce97:	00 de                                           	add    dh,bl
  77ce99:	cd 77                                           	int    0x77
  77ce9b:	00 ec                                           	add    ah,ch
  77ce9d:	cd 77                                           	int    0x77
  77ce9f:	00 07                                           	add    BYTE PTR [edi],al
  77cea1:	ce                                              	into
  77cea2:	77 00                                           	ja     0x77cea4
  77cea4:	5a                                              	pop    edx
  77cea5:	ce                                              	into
  77cea6:	77 00                                           	ja     0x77cea8
  77cea8:	cc                                              	int3
  77cea9:	cc                                              	int3
  77ceaa:	cc                                              	int3
  77ceab:	cc                                              	int3
  77ceac:	cc                                              	int3
  77cead:	cc                                              	int3
  77ceae:	cc                                              	int3
  77ceaf:	cc                                              	int3
