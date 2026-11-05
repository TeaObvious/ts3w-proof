Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: NativeStructProperty_WriteFields.
Paired actual Ghidra C: 00511A10_NativeStructProperty_WriteFields.c
Owned intervals below are half-open and come from actual function metadata.
Original bytes/instructions are unchanged; no body/signature repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: NativeStructProperty_WriteFields
Entry Point: 00511a10
Body: [[00511a10, 00511a95]]
Parameter Count: 3
Return Type: undefined4
Signature: undefined4 __cdecl NativeStructProperty_WriteFields(int * destinationValueContext, int sourceValueContext, undefined4 allocator)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [00511A10,00511A96); 134 bytes; original PE file offset 00111A10.
00511A10: 83 ec 0c 53 8b 5c 24 1c 55 8b 6c 24 18 8b 45 00
00511A20: 56 8b 70 10 85 f6 57 8b 78 0c 74 56 8d 64 24 00
00511A30: 8b cf 0f b7 41 0c 8b d0 c1 ea 0f 83 ee 01 83 c7
00511A40: 14 f6 c2 01 75 38 25 ff 0f 00 00 83 f8 01 74 2e
00511A50: 0f bf 41 0e 8b 54 24 24 03 42 04 53 8d 54 24 14
00511A60: 89 44 24 18 8b 41 10 52 55 c7 44 24 1c 00 00 00
00511A70: 00 89 44 24 24 e8 c6 02 00 00 84 c0 74 0e 85 f6
00511A80: 75 ae 5f 5e 5d b0 01 5b 83 c4 0c c3 5f 5e 5d 32
00511A90: c0 5b 83 c4 0c c3

Independent original PE instructions:
  511a10:	83 ec 0c                                        	sub    esp,0xc
  511a13:	53                                              	push   ebx
  511a14:	8b 5c 24 1c                                     	mov    ebx,DWORD PTR [esp+0x1c]
  511a18:	55                                              	push   ebp
  511a19:	8b 6c 24 18                                     	mov    ebp,DWORD PTR [esp+0x18]
  511a1d:	8b 45 00                                        	mov    eax,DWORD PTR [ebp+0x0]
  511a20:	56                                              	push   esi
  511a21:	8b 70 10                                        	mov    esi,DWORD PTR [eax+0x10]
  511a24:	85 f6                                           	test   esi,esi
  511a26:	57                                              	push   edi
  511a27:	8b 78 0c                                        	mov    edi,DWORD PTR [eax+0xc]
  511a2a:	74 56                                           	je     0x511a82
  511a2c:	8d 64 24 00                                     	lea    esp,[esp+0x0]
  511a30:	8b cf                                           	mov    ecx,edi
  511a32:	0f b7 41 0c                                     	movzx  eax,WORD PTR [ecx+0xc]
  511a36:	8b d0                                           	mov    edx,eax
  511a38:	c1 ea 0f                                        	shr    edx,0xf
  511a3b:	83 ee 01                                        	sub    esi,0x1
  511a3e:	83 c7 14                                        	add    edi,0x14
  511a41:	f6 c2 01                                        	test   dl,0x1
  511a44:	75 38                                           	jne    0x511a7e
  511a46:	25 ff 0f 00 00                                  	and    eax,0xfff
  511a4b:	83 f8 01                                        	cmp    eax,0x1
  511a4e:	74 2e                                           	je     0x511a7e
  511a50:	0f bf 41 0e                                     	movsx  eax,WORD PTR [ecx+0xe]
  511a54:	8b 54 24 24                                     	mov    edx,DWORD PTR [esp+0x24]
  511a58:	03 42 04                                        	add    eax,DWORD PTR [edx+0x4]
  511a5b:	53                                              	push   ebx
  511a5c:	8d 54 24 14                                     	lea    edx,[esp+0x14]
  511a60:	89 44 24 18                                     	mov    DWORD PTR [esp+0x18],eax
  511a64:	8b 41 10                                        	mov    eax,DWORD PTR [ecx+0x10]
  511a67:	52                                              	push   edx
  511a68:	55                                              	push   ebp
  511a69:	c7 44 24 1c 00 00 00 00                         	mov    DWORD PTR [esp+0x1c],0x0
  511a71:	89 44 24 24                                     	mov    DWORD PTR [esp+0x24],eax
  511a75:	e8 c6 02 00 00                                  	call   0x511d40
  511a7a:	84 c0                                           	test   al,al
  511a7c:	74 0e                                           	je     0x511a8c
  511a7e:	85 f6                                           	test   esi,esi
  511a80:	75 ae                                           	jne    0x511a30
  511a82:	5f                                              	pop    edi
  511a83:	5e                                              	pop    esi
  511a84:	5d                                              	pop    ebp
  511a85:	b0 01                                           	mov    al,0x1
  511a87:	5b                                              	pop    ebx
  511a88:	83 c4 0c                                        	add    esp,0xc
  511a8b:	c3                                              	ret
  511a8c:	5f                                              	pop    edi
  511a8d:	5e                                              	pop    esi
  511a8e:	5d                                              	pop    ebp
  511a8f:	32 c0                                           	xor    al,al
  511a91:	5b                                              	pop    ebx
  511a92:	83 c4 0c                                        	add    esp,0xc
  511a95:	c3                                              	ret

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: NativeStructProperty_WriteFields
Entry Point: 00511a10

00511a10: SUB ESP, 0xc
00511a13: PUSH EBX
00511a14: MOV EBX, dword ptr [ESP + 0x1c]
00511a18: PUSH EBP
00511a19: MOV EBP, dword ptr [ESP + 0x18]
00511a1d: MOV EAX, dword ptr [EBP]
00511a20: PUSH ESI
00511a21: MOV ESI, dword ptr [EAX + 0x10] ; Destination type metadata+10 supplies subfield count; metadata+C supplies20byte descriptor rows.
00511a24: TEST ESI, ESI
00511a26: PUSH EDI
00511a27: MOV EDI, dword ptr [EAX + 0xc]
00511a2a: JZ 0x00511a82
00511a2c: LEA ESP, [ESP]
00511a30: MOV ECX, EDI
00511a32: MOVZX EAX, word ptr [ECX + 0xc]
00511a36: MOV EDX, EAX
00511a38: SHR EDX, 0xf
00511a3b: SUB ESI, 0x1
00511a3e: ADD EDI, 0x14
00511a41: TEST DL, 0x1
00511a44: JNZ 0x00511a7e ; Skip readonly flag8000 rows; low12bit tag1 rows are skipped at the next comparison too.
00511a46: AND EAX, 0xfff
00511a4b: CMP EAX, 0x1
00511a4e: JZ 0x00511a7e
00511a50: MOVSX EAX, word ptr [ECX + 0xe] ; Signed16 source offset from row+E is added to source value address, not an unsigned field key.
00511a54: MOV EDX, dword ptr [ESP + 0x24]
00511a58: ADD EAX, dword ptr [EDX + 0x4]
00511a5b: PUSH EBX
00511a5c: LEA EDX, [ESP + 0x14]
00511a60: MOV dword ptr [ESP + 0x18], EAX
00511a64: MOV EAX, dword ptr [ECX + 0x10]
00511a67: PUSH EDX
00511a68: PUSH EBP
00511a69: MOV dword ptr [ESP + 0x1c], 0x0
00511a71: MOV dword ptr [ESP + 0x24], EAX
00511a75: CALL 0x00511d40 ; Write this subfield through generic descriptor writer; previous successful field writes are not rolled back on later failure.
00511a7a: TEST AL, AL ; Only child AL is tested; stop immediately on failed field write.
00511a7c: JZ 0x00511a8c
00511a7e: TEST ESI, ESI
00511a80: JNZ 0x00511a30
00511a82: POP EDI
00511a83: POP ESI
00511a84: POP EBP
00511a85: MOV AL, 0x1 ; Success is AL1 only, including zero-fields/all-skipped; inherited upperEAX is not a normalized boolean.
00511a87: POP EBX
00511a88: ADD ESP, 0xc
00511a8b: RET
00511a8c: POP EDI
00511a8d: POP ESI
00511a8e: POP EBP
00511a8f: XOR AL, AL ; Failure clears AL only; previously written subfields can remain changed.
00511a91: POP EBX
00511a92: ADD ESP, 0xc
00511a95: RET

Total instructions: 54