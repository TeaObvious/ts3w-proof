Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: FrameDrawable_GetPropertyContext.
Paired actual Ghidra C: 00522D90_FrameDrawable_GetPropertyContext.c
Owned intervals below are half-open and come from actual function metadata.
Original bytes/instructions are unchanged; no body/signature repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: FrameDrawable_GetPropertyContext
Entry Point: 00522d90
Body: [[00522d90, 00522db5]]
Parameter Count: 2
Return Type: undefined
Signature: undefined __thiscall FrameDrawable_GetPropertyContext(void * this, undefined4 * outPropertyContext)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [00522D90,00522DB6); 38 bytes; original PE file offset 00122D90.
00522D90: 56 8b 74 24 08 8d 41 fc 89 46 04 c7 06 10 d9 fb
00522DA0: 00 c7 46 08 01 00 00 00 8b 11 8b 42 14 ff d0 89
00522DB0: 46 0c 5e c2 04 00

Independent original PE instructions:
  522d90:	56                                              	push   esi
  522d91:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  522d95:	8d 41 fc                                        	lea    eax,[ecx-0x4]
  522d98:	89 46 04                                        	mov    DWORD PTR [esi+0x4],eax
  522d9b:	c7 06 10 d9 fb 00                               	mov    DWORD PTR [esi],0xfbd910
  522da1:	c7 46 08 01 00 00 00                            	mov    DWORD PTR [esi+0x8],0x1
  522da8:	8b 11                                           	mov    edx,DWORD PTR [ecx]
  522daa:	8b 42 14                                        	mov    eax,DWORD PTR [edx+0x14]
  522dad:	ff d0                                           	call   eax
  522daf:	89 46 0c                                        	mov    DWORD PTR [esi+0xc],eax
  522db2:	5e                                              	pop    esi
  522db3:	c2 04 00                                        	ret    0x4

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: FrameDrawable_GetPropertyContext
Entry Point: 00522d90

00522d90: PUSH ESI
00522d91: MOV ESI, dword ptr [ESP + 0x8]
00522d95: LEA EAX, [ECX + -0x4] ; ECX is secondary interface object+4; complete receiver is ECX-4, copied into output+4.
00522d98: MOV dword ptr [ESI + 0x4], EAX
00522d9b: MOV dword ptr [ESI], 0xfbd910 ; Output descriptor pointer FBD910 contains rowsFBD8D4/count3 and class ID030D54B9.
00522da1: MOV dword ptr [ESI + 0x8], 0x1
00522da8: MOV EDX, dword ptr [ECX]
00522daa: MOV EAX, dword ptr [EDX + 0x14]
00522dad: CALL EAX ; Invoke secondary virtual+14 for class ID; output+C receives EAX, distinct from function return semantics.
00522daf: MOV dword ptr [ESI + 0xc], EAX
00522db2: POP ESI
00522db3: RET 0x4 ; RET4 consumes one output pointer; output context aliases receiver storage and does not retain it.

Total instructions: 12