# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077ad30 (ScriptCore.UIManager::UIManager_AddChildImpl)
Paired Ghidra pseudocode: 0077AD30_ScriptCore_UIManager_UIManager_AddChildImpl.c
Window: [0x0077ad30, 0x0077adc0) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077adc0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077ad30: 56 e8 5a e6 fe ff 8b f0 8b 44 24 08 8b c8 81 e1
0077ad40: 00 00 00 ff 81 f9 00 00 00 30 75 71 53 8b 5c 24
0077ad50: 10 8b d3 81 e2 00 00 00 ff 3b d1 75 5f 8b 16 57
0077ad60: 50 8b 82 cc 00 00 00 8b ce ff d0 85 c0 74 12 8b
0077ad70: 10 8b c8 8b 42 0c 68 18 82 ee ee ff d0 8b f8 eb
0077ad80: 02 33 ff 8b 16 8b 82 cc 00 00 00 53 8b ce ff d0
0077ad90: 85 c0 74 10 8b 10 8b c8 8b 42 0c 68 18 82 ee ee
0077ada0: ff d0 eb 02 33 c0 85 ff 74 11 85 c0 74 0d 8b 17
0077adb0: 50 8b 82 dc 00 00 00 8b cf ff d0 5f 5b 5e c3 cc

LINEAR DISASSEMBLY
0077ad30 <.text+0x379d30>:
  77ad30:	56                                              	push   esi
  77ad31:	e8 5a e6 fe ff                                  	call   0x769390
  77ad36:	8b f0                                           	mov    esi,eax
  77ad38:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77ad3c:	8b c8                                           	mov    ecx,eax
  77ad3e:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77ad44:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77ad4a:	75 71                                           	jne    0x77adbd
  77ad4c:	53                                              	push   ebx
  77ad4d:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  77ad51:	8b d3                                           	mov    edx,ebx
  77ad53:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77ad59:	3b d1                                           	cmp    edx,ecx
  77ad5b:	75 5f                                           	jne    0x77adbc
  77ad5d:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77ad5f:	57                                              	push   edi
  77ad60:	50                                              	push   eax
  77ad61:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77ad67:	8b ce                                           	mov    ecx,esi
  77ad69:	ff d0                                           	call   eax
  77ad6b:	85 c0                                           	test   eax,eax
  77ad6d:	74 12                                           	je     0x77ad81
  77ad6f:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ad71:	8b c8                                           	mov    ecx,eax
  77ad73:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ad76:	68 18 82 ee ee                                  	push   0xeeee8218
  77ad7b:	ff d0                                           	call   eax
  77ad7d:	8b f8                                           	mov    edi,eax
  77ad7f:	eb 02                                           	jmp    0x77ad83
  77ad81:	33 ff                                           	xor    edi,edi
  77ad83:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77ad85:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77ad8b:	53                                              	push   ebx
  77ad8c:	8b ce                                           	mov    ecx,esi
  77ad8e:	ff d0                                           	call   eax
  77ad90:	85 c0                                           	test   eax,eax
  77ad92:	74 10                                           	je     0x77ada4
  77ad94:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ad96:	8b c8                                           	mov    ecx,eax
  77ad98:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ad9b:	68 18 82 ee ee                                  	push   0xeeee8218
  77ada0:	ff d0                                           	call   eax
  77ada2:	eb 02                                           	jmp    0x77ada6
  77ada4:	33 c0                                           	xor    eax,eax
  77ada6:	85 ff                                           	test   edi,edi
  77ada8:	74 11                                           	je     0x77adbb
  77adaa:	85 c0                                           	test   eax,eax
  77adac:	74 0d                                           	je     0x77adbb
  77adae:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77adb0:	50                                              	push   eax
  77adb1:	8b 82 dc 00 00 00                               	mov    eax,DWORD PTR [edx+0xdc]
  77adb7:	8b cf                                           	mov    ecx,edi
  77adb9:	ff d0                                           	call   eax
  77adbb:	5f                                              	pop    edi
  77adbc:	5b                                              	pop    ebx
  77adbd:	5e                                              	pop    esi
  77adbe:	c3                                              	ret
  77adbf:	cc                                              	int3
