# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x0077adc0 (ScriptCore.UIManager::UIManager_RemoveChildImpl)
Paired Ghidra pseudocode: 0077ADC0_ScriptCore_UIManager_UIManager_RemoveChildImpl.c
Window: [0x0077adc0, 0x0077ae50) (144 bytes; stop exclusive)
Next defined Ghidra entry: 0x0077ae50
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
0077adc0: 56 e8 ca e5 fe ff 8b f0 8b 44 24 08 8b c8 81 e1
0077add0: 00 00 00 ff 81 f9 00 00 00 30 75 71 53 8b 5c 24
0077ade0: 10 8b d3 81 e2 00 00 00 ff 3b d1 75 5f 8b 16 57
0077adf0: 50 8b 82 cc 00 00 00 8b ce ff d0 85 c0 74 12 8b
0077ae00: 10 8b c8 8b 42 0c 68 18 82 ee ee ff d0 8b f8 eb
0077ae10: 02 33 ff 8b 16 8b 82 cc 00 00 00 53 8b ce ff d0
0077ae20: 85 c0 74 10 8b 10 8b c8 8b 42 0c 68 18 82 ee ee
0077ae30: ff d0 eb 02 33 c0 85 ff 74 11 85 c0 74 0d 8b 17
0077ae40: 50 8b 82 e0 00 00 00 8b cf ff d0 5f 5b 5e c3 cc

LINEAR DISASSEMBLY
0077adc0 <.text+0x379dc0>:
  77adc0:	56                                              	push   esi
  77adc1:	e8 ca e5 fe ff                                  	call   0x769390
  77adc6:	8b f0                                           	mov    esi,eax
  77adc8:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  77adcc:	8b c8                                           	mov    ecx,eax
  77adce:	81 e1 00 00 00 ff                               	and    ecx,0xff000000
  77add4:	81 f9 00 00 00 30                               	cmp    ecx,0x30000000
  77adda:	75 71                                           	jne    0x77ae4d
  77addc:	53                                              	push   ebx
  77addd:	8b 5c 24 10                                     	mov    ebx,DWORD PTR [esp+0x10]
  77ade1:	8b d3                                           	mov    edx,ebx
  77ade3:	81 e2 00 00 00 ff                               	and    edx,0xff000000
  77ade9:	3b d1                                           	cmp    edx,ecx
  77adeb:	75 5f                                           	jne    0x77ae4c
  77aded:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77adef:	57                                              	push   edi
  77adf0:	50                                              	push   eax
  77adf1:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77adf7:	8b ce                                           	mov    ecx,esi
  77adf9:	ff d0                                           	call   eax
  77adfb:	85 c0                                           	test   eax,eax
  77adfd:	74 12                                           	je     0x77ae11
  77adff:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ae01:	8b c8                                           	mov    ecx,eax
  77ae03:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ae06:	68 18 82 ee ee                                  	push   0xeeee8218
  77ae0b:	ff d0                                           	call   eax
  77ae0d:	8b f8                                           	mov    edi,eax
  77ae0f:	eb 02                                           	jmp    0x77ae13
  77ae11:	33 ff                                           	xor    edi,edi
  77ae13:	8b 16                                           	mov    edx,DWORD PTR [esi]
  77ae15:	8b 82 cc 00 00 00                               	mov    eax,DWORD PTR [edx+0xcc]
  77ae1b:	53                                              	push   ebx
  77ae1c:	8b ce                                           	mov    ecx,esi
  77ae1e:	ff d0                                           	call   eax
  77ae20:	85 c0                                           	test   eax,eax
  77ae22:	74 10                                           	je     0x77ae34
  77ae24:	8b 10                                           	mov    edx,DWORD PTR [eax]
  77ae26:	8b c8                                           	mov    ecx,eax
  77ae28:	8b 42 0c                                        	mov    eax,DWORD PTR [edx+0xc]
  77ae2b:	68 18 82 ee ee                                  	push   0xeeee8218
  77ae30:	ff d0                                           	call   eax
  77ae32:	eb 02                                           	jmp    0x77ae36
  77ae34:	33 c0                                           	xor    eax,eax
  77ae36:	85 ff                                           	test   edi,edi
  77ae38:	74 11                                           	je     0x77ae4b
  77ae3a:	85 c0                                           	test   eax,eax
  77ae3c:	74 0d                                           	je     0x77ae4b
  77ae3e:	8b 17                                           	mov    edx,DWORD PTR [edi]
  77ae40:	50                                              	push   eax
  77ae41:	8b 82 e0 00 00 00                               	mov    eax,DWORD PTR [edx+0xe0]
  77ae47:	8b cf                                           	mov    ecx,edi
  77ae49:	ff d0                                           	call   eax
  77ae4b:	5f                                              	pop    edi
  77ae4c:	5b                                              	pop    ebx
  77ae4d:	5e                                              	pop    esi
  77ae4e:	c3                                              	ret
  77ae4f:	cc                                              	int3
