Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: FrameDrawable_SelectStateRow.
Paired actual Ghidra C: 00522C50_FrameDrawable_SelectStateRow.c
Owned intervals below are half-open and come from actual function metadata.
Original bytes/instructions are unchanged; no body/signature repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: FrameDrawable_SelectStateRow
Entry Point: 00522c50
Body: [[00522c50, 00522cd8]]
Parameter Count: 2
Return Type: int
Signature: int __thiscall FrameDrawable_SelectStateRow(void * this, uint packedState)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [00522C50,00522CD9); 137 bytes; original PE file offset 00122C50.
00522C50: 8b 54 24 04 8b c2 83 e0 07 83 f8 03 77 75 ff 24
00522C60: 85 dc 2c 52 00 f6 c2 08 74 69 83 79 2c 00 8d 41
00522C70: 2c 74 60 c2 04 00 f6 c2 08 74 09 83 79 34 00 8d
00522C80: 41 34 75 52 83 79 14 00 8d 41 14 74 46 c2 04 00
00522C90: f6 c2 08 74 12 83 79 3c 00 8d 41 3c 75 38 83 79
00522CA0: 2c 00 8d 41 2c 75 2f 83 79 1c 00 8d 41 1c 74 23
00522CB0: c2 04 00 f6 c2 08 74 12 83 79 44 00 8d 41 44 75
00522CC0: 15 83 79 2c 00 8d 41 2c 75 0c 83 79 24 00 8d 41
00522CD0: 24 75 03 8d 41 0c c2 04 00

Independent original PE instructions:
  522c50:	8b 54 24 04                                     	mov    edx,DWORD PTR [esp+0x4]
  522c54:	8b c2                                           	mov    eax,edx
  522c56:	83 e0 07                                        	and    eax,0x7
  522c59:	83 f8 03                                        	cmp    eax,0x3
  522c5c:	77 75                                           	ja     0x522cd3
  522c5e:	ff 24 85 dc 2c 52 00                            	jmp    DWORD PTR [eax*4+0x522cdc]
  522c65:	f6 c2 08                                        	test   dl,0x8
  522c68:	74 69                                           	je     0x522cd3
  522c6a:	83 79 2c 00                                     	cmp    DWORD PTR [ecx+0x2c],0x0
  522c6e:	8d 41 2c                                        	lea    eax,[ecx+0x2c]
  522c71:	74 60                                           	je     0x522cd3
  522c73:	c2 04 00                                        	ret    0x4
  522c76:	f6 c2 08                                        	test   dl,0x8
  522c79:	74 09                                           	je     0x522c84
  522c7b:	83 79 34 00                                     	cmp    DWORD PTR [ecx+0x34],0x0
  522c7f:	8d 41 34                                        	lea    eax,[ecx+0x34]
  522c82:	75 52                                           	jne    0x522cd6
  522c84:	83 79 14 00                                     	cmp    DWORD PTR [ecx+0x14],0x0
  522c88:	8d 41 14                                        	lea    eax,[ecx+0x14]
  522c8b:	74 46                                           	je     0x522cd3
  522c8d:	c2 04 00                                        	ret    0x4
  522c90:	f6 c2 08                                        	test   dl,0x8
  522c93:	74 12                                           	je     0x522ca7
  522c95:	83 79 3c 00                                     	cmp    DWORD PTR [ecx+0x3c],0x0
  522c99:	8d 41 3c                                        	lea    eax,[ecx+0x3c]
  522c9c:	75 38                                           	jne    0x522cd6
  522c9e:	83 79 2c 00                                     	cmp    DWORD PTR [ecx+0x2c],0x0
  522ca2:	8d 41 2c                                        	lea    eax,[ecx+0x2c]
  522ca5:	75 2f                                           	jne    0x522cd6
  522ca7:	83 79 1c 00                                     	cmp    DWORD PTR [ecx+0x1c],0x0
  522cab:	8d 41 1c                                        	lea    eax,[ecx+0x1c]
  522cae:	74 23                                           	je     0x522cd3
  522cb0:	c2 04 00                                        	ret    0x4
  522cb3:	f6 c2 08                                        	test   dl,0x8
  522cb6:	74 12                                           	je     0x522cca
  522cb8:	83 79 44 00                                     	cmp    DWORD PTR [ecx+0x44],0x0
  522cbc:	8d 41 44                                        	lea    eax,[ecx+0x44]
  522cbf:	75 15                                           	jne    0x522cd6
  522cc1:	83 79 2c 00                                     	cmp    DWORD PTR [ecx+0x2c],0x0
  522cc5:	8d 41 2c                                        	lea    eax,[ecx+0x2c]
  522cc8:	75 0c                                           	jne    0x522cd6
  522cca:	83 79 24 00                                     	cmp    DWORD PTR [ecx+0x24],0x0
  522cce:	8d 41 24                                        	lea    eax,[ecx+0x24]
  522cd1:	75 03                                           	jne    0x522cd6
  522cd3:	8d 41 0c                                        	lea    eax,[ecx+0xc]
  522cd6:	c2 04 00                                        	ret    0x4

Following four-DWORD mode table [00522CDC,00522CEC) is separate data.

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: FrameDrawable_SelectStateRow
Entry Point: 00522c50

00522c50: MOV EDX, dword ptr [ESP + 0x4]
00522c54: MOV EAX, EDX
00522c56: AND EAX, 0x7 ; Only low3bits select cases; low values4..7 fall directly to normal row+C.
00522c59: CMP EAX, 0x3
00522c5c: JA 0x00522cd3
00522c5e: JMP dword ptr [EAX*0x4 + 0x522cdc]
00522c65: TEST DL, 0x8 ; Mask0x08 requests checked variant; this physical mask is separate from managed state ordinal4.
00522c68: JZ 0x00522cd3
00522c6a: CMP dword ptr [ECX + 0x2c], 0x0 ; A candidate row is present only when its styleDWORD is nonzero; color is not tested.
00522c6e: LEA EAX, [ECX + 0x2c]
00522c71: JZ 0x00522cd3
00522c73: RET 0x4
00522c76: TEST DL, 0x8
00522c79: JZ 0x00522c84
00522c7b: CMP dword ptr [ECX + 0x34], 0x0
00522c7f: LEA EAX, [ECX + 0x34]
00522c82: JNZ 0x00522cd6
00522c84: CMP dword ptr [ECX + 0x14], 0x0
00522c88: LEA EAX, [ECX + 0x14]
00522c8b: JZ 0x00522cd3
00522c8d: RET 0x4
00522c90: TEST DL, 0x8
00522c93: JZ 0x00522ca7
00522c95: CMP dword ptr [ECX + 0x3c], 0x0
00522c99: LEA EAX, [ECX + 0x3c]
00522c9c: JNZ 0x00522cd6
00522c9e: CMP dword ptr [ECX + 0x2c], 0x0 ; Checked highlighted fallback checks checked-normal style before unchecked highlighted.
00522ca2: LEA EAX, [ECX + 0x2c]
00522ca5: JNZ 0x00522cd6
00522ca7: CMP dword ptr [ECX + 0x1c], 0x0
00522cab: LEA EAX, [ECX + 0x1c]
00522cae: JZ 0x00522cd3
00522cb0: RET 0x4
00522cb3: TEST DL, 0x8
00522cb6: JZ 0x00522cca
00522cb8: CMP dword ptr [ECX + 0x44], 0x0
00522cbc: LEA EAX, [ECX + 0x44]
00522cbf: JNZ 0x00522cd6
00522cc1: CMP dword ptr [ECX + 0x2c], 0x0 ; Checked active fallback checks checked-normal style before unchecked active.
00522cc5: LEA EAX, [ECX + 0x2c]
00522cc8: JNZ 0x00522cd6
00522cca: CMP dword ptr [ECX + 0x24], 0x0
00522cce: LEA EAX, [ECX + 0x24]
00522cd1: JNZ 0x00522cd6
00522cd3: LEA EAX, [ECX + 0xc] ; Unconditional normal-row fallback, without testing its style or color; EAX aliases receiver+C.
00522cd6: RET 0x4 ; Return selected interior row pointer in EAX; RET4 consumes packed-state input only.

Total instructions: 46