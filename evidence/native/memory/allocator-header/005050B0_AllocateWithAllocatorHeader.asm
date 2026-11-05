Original TS3W PC 1.67; identity: evidence/reference.json.
Current saved Ghidra function: AllocateWithAllocatorHeader.
Paired actual Ghidra C: 005050B0_AllocateWithAllocatorHeader.c
Owned intervals below are half-open and come from actual function metadata.
Original bytes/instructions are unchanged; no body/signature repair or runtime observation.

CURRENT GHIDRA INFORMATION
[Context] Operating on: TS3W.exe

Function Information:
Name: AllocateWithAllocatorHeader
Entry Point: 005050b0
Body: [[005050b0, 00505104]]
Parameter Count: 4
Return Type: uint *
Signature: uint * __cdecl AllocateWithAllocatorHeader(int requestedBytes, int rawRoundedWord, undefined4 allocationLabel, int * allocatorInterface)

ORIGINAL OWNED BYTES AND INDEPENDENT PE DISASSEMBLY

Owned interval [005050B0,00505105); 85 bytes; original PE file offset 001050B0.
005050B0: 8b 44 24 08 83 c0 0f 56 8b 74 24 14 83 e0 f0 85
005050C0: f6 74 1d 8b 4c 24 08 8b 16 8b 52 04 6a 10 50 8b
005050D0: 44 24 18 6a 00 83 c1 10 50 51 8b ce ff d2 eb 18
005050E0: 8b 0d 64 c8 1c 01 6a 00 6a 10 50 8b 44 24 14 83
005050F0: c0 10 50 e8 78 1e fe ff 85 c0 75 02 5e c3 89 30
00505100: 83 c0 10 5e c3

Independent original PE instructions:
  5050b0:	8b 44 24 08                                     	mov    eax,DWORD PTR [esp+0x8]
  5050b4:	83 c0 0f                                        	add    eax,0xf
  5050b7:	56                                              	push   esi
  5050b8:	8b 74 24 14                                     	mov    esi,DWORD PTR [esp+0x14]
  5050bc:	83 e0 f0                                        	and    eax,0xfffffff0
  5050bf:	85 f6                                           	test   esi,esi
  5050c1:	74 1d                                           	je     0x5050e0
  5050c3:	8b 4c 24 08                                     	mov    ecx,DWORD PTR [esp+0x8]
  5050c7:	8b 16                                           	mov    edx,DWORD PTR [esi]
  5050c9:	8b 52 04                                        	mov    edx,DWORD PTR [edx+0x4]
  5050cc:	6a 10                                           	push   0x10
  5050ce:	50                                              	push   eax
  5050cf:	8b 44 24 18                                     	mov    eax,DWORD PTR [esp+0x18]
  5050d3:	6a 00                                           	push   0x0
  5050d5:	83 c1 10                                        	add    ecx,0x10
  5050d8:	50                                              	push   eax
  5050d9:	51                                              	push   ecx
  5050da:	8b ce                                           	mov    ecx,esi
  5050dc:	ff d2                                           	call   edx
  5050de:	eb 18                                           	jmp    0x5050f8
  5050e0:	8b 0d 64 c8 1c 01                               	mov    ecx,DWORD PTR ds:0x11cc864
  5050e6:	6a 00                                           	push   0x0
  5050e8:	6a 10                                           	push   0x10
  5050ea:	50                                              	push   eax
  5050eb:	8b 44 24 14                                     	mov    eax,DWORD PTR [esp+0x14]
  5050ef:	83 c0 10                                        	add    eax,0x10
  5050f2:	50                                              	push   eax
  5050f3:	e8 78 1e fe ff                                  	call   0x4e6f70
  5050f8:	85 c0                                           	test   eax,eax
  5050fa:	75 02                                           	jne    0x5050fe
  5050fc:	5e                                              	pop    esi
  5050fd:	c3                                              	ret
  5050fe:	89 30                                           	mov    DWORD PTR [eax],esi
  505100:	83 c0 10                                        	add    eax,0x10
  505103:	5e                                              	pop    esi
  505104:	c3                                              	ret

CURRENT SAVED GHIDRA LISTING (as returned)
[Context] Operating on: TS3W.exe

Disassembly of function: AllocateWithAllocatorHeader
Entry Point: 005050b0

005050b0: MOV EAX, dword ptr [ESP + 0x8]
005050b4: ADD EAX, 0xf ; DWORD add0F then maskFFFFFFF0 rounds raw second argument to a16multiple with unchecked wraparound.
005050b7: PUSH ESI
005050b8: MOV ESI, dword ptr [ESP + 0x14]
005050bc: AND EAX, 0xfffffff0
005050bf: TEST ESI, ESI
005050c1: JZ 0x005050e0
005050c3: MOV ECX, dword ptr [ESP + 0x8]
005050c7: MOV EDX, dword ptr [ESI]
005050c9: MOV EDX, dword ptr [EDX + 0x4]
005050cc: PUSH 0x10
005050ce: PUSH EAX
005050cf: MOV EAX, dword ptr [ESP + 0x18]
005050d3: PUSH 0x0
005050d5: ADD ECX, 0x10
005050d8: PUSH EAX
005050d9: PUSH ECX
005050da: MOV ECX, ESI
005050dc: CALL EDX ; Custom allocator virtual+4 receives size+16,label,0,rounded rawarg2,16; return is allocation base.
005050de: JMP 0x005050f8
005050e0: MOV ECX, dword ptr [0x011cc864]
005050e6: PUSH 0x0
005050e8: PUSH 0x10
005050ea: PUSH EAX
005050eb: MOV EAX, dword ptr [ESP + 0x14]
005050ef: ADD EAX, 0x10
005050f2: PUSH EAX
005050f3: CALL 0x004e6f70 ; Null allocator uses current default global011CC864 through4E6F70; backend allocation contract stays separate.
005050f8: TEST EAX, EAX ; Null allocation returns0 without writing a header.
005050fa: JNZ 0x005050fe
005050fc: POP ESI
005050fd: RET
005050fe: MOV dword ptr [EAX], ESI ; Store allocator identity at allocation baseDWORD0, then return base+16; other header bytes untouched.
00505100: ADD EAX, 0x10
00505103: POP ESI
00505104: RET

Total instructions: 36