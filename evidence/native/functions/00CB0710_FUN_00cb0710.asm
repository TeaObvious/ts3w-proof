# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe owned ranges [(13305616, 13306632)]; 1016 owned bytes/371 instructions. Internal unowned gaps excluded. All bytes/starts checked against authoritative pristine PE.

cdecl seven physical stack words, plain RET; only AL Boolean is returned. Packed point reads sign-extended X/Z/level bytes. CAF0F0 validity always first. Locked-border, edit-zone and shell gates precede height no-op gates; later selected checks require byte01187934 nonzero. Null error destination returns at first failure; nonnull records failure and continues, returning accumulated AL. Both recursive above/below checks receive bit6-adjusted flags; fence uses original flags. Exact called children, diagnostic destination layout, global byte writers and all concrete rule semantics remain separate.

ORIGINAL OWNED BYTES
00cb0710: 55
00cb0711: 8b ec
00cb0713: 83 e4 f0
00cb0716: 83 ec 14
00cb0719: 53
00cb071a: 8b 5d 08
00cb071d: 56
00cb071e: 8b 75 18
00cb0721: 57
00cb0722: 8b 7d 0c
00cb0725: 56
00cb0726: 57
00cb0727: 53
00cb0728: c6 44 24 22 01
00cb072d: e8 be e9 ff ff
00cb0732: 83 c4 0c
00cb0735: 84 c0
00cb0737: 75 09
00cb0739: 32 c0
00cb073b: 5f
00cb073c: 5e
00cb073d: 5b
00cb073e: 8b e5
00cb0740: 5d
00cb0741: c3
00cb0742: f6 45 14 01
00cb0746: 74 18
00cb0748: 56
00cb0749: 57
00cb074a: 53
00cb074b: e8 a0 eb ff ff
00cb0750: 83 c4 0c
00cb0753: 84 c0
00cb0755: 74 09
00cb0757: 85 f6
00cb0759: 74 de
00cb075b: c6 44 24 16 00
00cb0760: 8b 45 14
00cb0763: c1 e8 13
00cb0766: a8 01
00cb0768: 74 18
00cb076a: 56
00cb076b: 57
00cb076c: 53
00cb076d: e8 ee 3a db ff
00cb0772: 83 c4 0c
00cb0775: 84 c0
00cb0777: 74 09
00cb0779: 85 f6
00cb077b: 74 bc
00cb077d: c6 44 24 16 00
00cb0782: 8b 4d 14
00cb0785: c1 e9 14
00cb0788: f6 c1 01
00cb078b: 74 18
00cb078d: 56
00cb078e: 57
00cb078f: 53
00cb0790: e8 0b ec ff ff
00cb0795: 83 c4 0c
00cb0798: 84 c0
00cb079a: 74 09
00cb079c: 85 f6
00cb079e: 74 99
00cb07a0: c6 44 24 16 00
00cb07a5: 8b 8b 90 02 00 00
00cb07ab: 8a 57 02
00cb07ae: 8b 41 24
00cb07b1: 0f be da
00cb07b4: 2b 59 10
00cb07b7: 0f be 0f
00cb07ba: 0f af 58 04
00cb07be: 03 d9
00cb07c0: 0f af 58 08
00cb07c4: 0f be 4f 01
00cb07c8: 8b 40 10
00cb07cb: 03 d9
00cb07cd: f3 0f 10 04 98
00cb07d2: f3 0f 11 44 24 1c
00cb07d8: f3 0f 5c 45 10
00cb07dd: f3 0f 10 c8
00cb07e1: f3 0f 11 44 24 18
00cb07e7: f3 0f 10 05 18 b2 fa 00
00cb07ef: 0f c6 c9 00
00cb07f3: 0f c6 c0 00
00cb07f7: 0f 59 c1
00cb07fa: 0f 5f c1
00cb07fd: f3 0f 10 0d f4 e9 07 01
00cb0805: 0f c6 c9 00
00cb0809: 0f c2 c1 02
00cb080d: 0f 50 c8
00cb0810: 83 f9 0f
00cb0813: 0f 94 c0
00cb0816: 84 c0
00cb0818: 88 44 24 17
00cb081c: 74 0e
00cb081e: 8b 45 14
00cb0821: c1 e8 12
00cb0824: a8 01
00cb0826: 0f 85 d1 02 00 00
00cb082c: 8b 4d 14
00cb082f: 8b c1
00cb0831: c1 e8 11
00cb0834: a8 01
00cb0836: 75 16
00cb0838: d9 44 24 18
00cb083c: d9 e1
00cb083e: d9 05 70 e9 07 01
00cb0844: df f1
00cb0846: dd d8
00cb0848: 0f 87 af 02 00 00
00cb084e: 84 d2
00cb0850: 7f 2f
00cb0852: d1 e9
00cb0854: f6 c1 01
00cb0857: 74 28
00cb0859: d9 45 10
00cb085c: 8b 5d 08
00cb085f: 56
00cb0860: 51
00cb0861: d9 1c 24
00cb0864: 57
00cb0865: 53
00cb0866: e8 15 e9 ff ff
00cb086b: 83 c4 10
00cb086e: 84 c0
00cb0870: 74 12
00cb0872: 85 f6
00cb0874: 0f 84 bf fe ff ff
00cb087a: c6 44 24 16 00
00cb087f: eb 03
00cb0881: 8b 5d 08
00cb0884: 80 3d 34 79 18 01 00
00cb088b: 0f 84 6c 02 00 00
00cb0891: 8b 4d 14
00cb0894: c1 e9 03
00cb0897: f6 c1 01
00cb089a: 74 1c
00cb089c: 56
00cb089d: 57
00cb089e: 53
00cb089f: e8 cc ec ff ff
00cb08a4: 83 c4 0c
00cb08a7: 84 c0
00cb08a9: 74 0d
00cb08ab: 85 f6
00cb08ad: 0f 84 86 fe ff ff
00cb08b3: c6 44 24 16 00
00cb08b8: 8b 55 14
00cb08bb: c1 ea 02
00cb08be: f6 c2 01
00cb08c1: 74 1c
00cb08c3: 56
00cb08c4: 57
00cb08c5: 53
00cb08c6: e8 75 eb ff ff
00cb08cb: 83 c4 0c
00cb08ce: 84 c0
00cb08d0: 74 0d
00cb08d2: 85 f6
00cb08d4: 0f 84 5f fe ff ff
00cb08da: c6 44 24 16 00
00cb08df: 8b 45 14
00cb08e2: c1 e8 07
00cb08e5: a8 01
00cb08e7: 74 32
00cb08e9: 80 7c 24 17 00
00cb08ee: 75 2b
00cb08f0: 8b 4d 20
00cb08f3: d9 45 10
00cb08f6: 8b 55 1c
00cb08f9: 51
00cb08fa: 52
00cb08fb: 56
00cb08fc: 51
00cb08fd: d9 1c 24
00cb0900: 57
00cb0901: 53
00cb0902: e8 b9 f2 ff ff
00cb0907: 83 c4 18
00cb090a: 84 c0
00cb090c: 74 0d
00cb090e: 85 f6
00cb0910: 0f 84 23 fe ff ff
00cb0916: c6 44 24 16 00
00cb091b: 8b 5d 14
00cb091e: 8b c3
00cb0920: 8b c8
00cb0922: c1 e9 06
00cb0925: f6 c1 01
00cb0928: 74 03
00cb092a: 83 cb 08
00cb092d: c1 e8 04
00cb0930: a8 01
00cb0932: 74 27
00cb0934: d9 45 10
00cb0937: 8b 55 08
00cb093a: 56
00cb093b: 53
00cb093c: 51
00cb093d: d9 1c 24
00cb0940: 57
00cb0941: 52
00cb0942: e8 49 f5 ff ff
00cb0947: 83 c4 14
00cb094a: 84 c0
00cb094c: 74 0d
00cb094e: 85 f6
00cb0950: 0f 84 e3 fd ff ff
00cb0956: c6 44 24 16 00
00cb095b: 8b 45 14
00cb095e: c1 e8 05
00cb0961: a8 01
00cb0963: 74 27
00cb0965: d9 45 10
00cb0968: 56
00cb0969: 53
00cb096a: 51
00cb096b: 8b 4d 08
00cb096e: d9 1c 24
00cb0971: 57
00cb0972: 51
00cb0973: e8 98 f6 ff ff
00cb0978: 83 c4 14
00cb097b: 84 c0
00cb097d: 74 0d
00cb097f: 85 f6
00cb0981: 0f 84 b2 fd ff ff
00cb0987: c6 44 24 16 00
00cb098c: 8b 55 14
00cb098f: 8b 5d 08
00cb0992: c1 ea 08
00cb0995: f6 c2 01
00cb0998: 74 1c
00cb099a: 56
00cb099b: 57
00cb099c: 53
00cb099d: e8 ee f9 ff ff
00cb09a2: 83 c4 0c
00cb09a5: 84 c0
00cb09a7: 74 0d
00cb09a9: 85 f6
00cb09ab: 0f 84 88 fd ff ff
00cb09b1: c6 44 24 16 00
00cb09b6: 8b 45 14
00cb09b9: c1 e8 09
00cb09bc: a8 01
00cb09be: 74 1c
00cb09c0: 56
00cb09c1: 57
00cb09c2: 53
00cb09c3: e8 58 e8 ff ff
00cb09c8: 83 c4 0c
00cb09cb: 84 c0
00cb09cd: 74 0d
00cb09cf: 85 f6
00cb09d1: 0f 84 62 fd ff ff
00cb09d7: c6 44 24 16 00
00cb09dc: 8b 4d 14
00cb09df: c1 e9 0a
00cb09e2: f6 c1 01
00cb09e5: 74 2d
00cb09e7: d9 45 10
00cb09ea: 56
00cb09eb: 83 ec 08
00cb09ee: d9 5c 24 04
00cb09f2: d9 44 24 28
00cb09f6: d9 1c 24
00cb09f9: 57
00cb09fa: 53
00cb09fb: e8 80 ee ff ff
00cb0a00: 83 c4 14
00cb0a03: 84 c0
00cb0a05: 74 0d
00cb0a07: 85 f6
00cb0a09: 0f 84 2a fd ff ff
00cb0a0f: c6 44 24 16 00
00cb0a14: 8b 55 14
00cb0a17: c1 ea 0b
00cb0a1a: f6 c2 01
00cb0a1d: 74 1c
00cb0a1f: 56
00cb0a20: 57
00cb0a21: 53
00cb0a22: e8 a9 f0 ff ff
00cb0a27: 83 c4 0c
00cb0a2a: 84 c0
00cb0a2c: 74 0d
00cb0a2e: 85 f6
00cb0a30: 0f 84 03 fd ff ff
00cb0a36: c6 44 24 16 00
00cb0a3b: 8b 45 14
00cb0a3e: 8b c8
00cb0a40: c1 e9 0c
00cb0a43: f6 c1 01
00cb0a46: 75 0a
00cb0a48: 8b d0
00cb0a4a: c1 ea 0d
00cb0a4d: f6 c2 01
00cb0a50: 74 24
00cb0a52: d9 45 10
00cb0a55: 56
00cb0a56: 50
00cb0a57: 51
00cb0a58: d9 1c 24
00cb0a5b: 57
00cb0a5c: 53
00cb0a5d: e8 ae 00 00 00
00cb0a62: 83 c4 14
00cb0a65: 84 c0
00cb0a67: 74 0d
00cb0a69: 85 f6
00cb0a6b: 0f 84 c8 fc ff ff
00cb0a71: c6 44 24 16 00
00cb0a76: 8b 45 14
00cb0a79: c1 e8 0e
00cb0a7c: a8 01
00cb0a7e: 74 22
00cb0a80: d9 45 10
00cb0a83: 51
00cb0a84: d9 1c 24
00cb0a87: 57
00cb0a88: 53
00cb0a89: e8 a2 f9 ff ff
00cb0a8e: 83 c4 0c
00cb0a91: 84 c0
00cb0a93: 74 0d
00cb0a95: 85 f6
00cb0a97: 0f 84 9c fc ff ff
00cb0a9d: c6 44 24 16 00
00cb0aa2: 8b 4d 14
00cb0aa5: c1 e9 0f
00cb0aa8: f6 c1 01
00cb0aab: 74 23
00cb0aad: d9 45 10
00cb0ab0: 56
00cb0ab1: 51
00cb0ab2: d9 1c 24
00cb0ab5: 57
00cb0ab6: 53
00cb0ab7: e8 a4 fa ff ff
00cb0abc: 83 c4 10
00cb0abf: 84 c0
00cb0ac1: 74 0d
00cb0ac3: 85 f6
00cb0ac5: 0f 84 6e fc ff ff
00cb0acb: c6 44 24 16 00
00cb0ad0: 8b 45 14
00cb0ad3: c1 e8 10
00cb0ad6: a8 01
00cb0ad8: 74 23
00cb0ada: d9 45 10
00cb0add: 56
00cb0ade: 51
00cb0adf: d9 1c 24
00cb0ae2: 57
00cb0ae3: 53
00cb0ae4: e8 97 e7 ff ff
00cb0ae9: 83 c4 10
00cb0aec: 84 c0
00cb0aee: 74 0d
00cb0af0: 85 f6
00cb0af2: 0f 84 41 fc ff ff
00cb0af8: c6 44 24 16 00
00cb0afd: 8a 44 24 16
00cb0b01: 5f
00cb0b02: 5e
00cb0b03: 5b
00cb0b04: 8b e5
00cb0b06: 5d
00cb0b07: c3

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00cb0710
Entry Point: 00cb0710

00cb0710: PUSH EBP
00cb0711: MOV EBP, ESP
00cb0713: AND ESP, 0xfffffff0
00cb0716: SUB ESP, 0x14
00cb0719: PUSH EBX
00cb071a: MOV EBX, dword ptr [EBP + 0x8]
00cb071d: PUSH ESI
00cb071e: MOV ESI, dword ptr [EBP + 0x18]
00cb0721: PUSH EDI
00cb0722: MOV EDI, dword ptr [EBP + 0xc]
00cb0725: PUSH ESI
00cb0726: PUSH EDI
00cb0727: PUSH EBX
00cb0728: MOV byte ptr [ESP + 0x22], 0x1
00cb072d: CALL 0x00caf0f0
00cb0732: ADD ESP, 0xc
00cb0735: TEST AL, AL
00cb0737: JNZ 0x00cb0742
00cb0739: XOR AL, AL
00cb073b: POP EDI
00cb073c: POP ESI
00cb073d: POP EBX
00cb073e: MOV ESP, EBP
00cb0740: POP EBP
00cb0741: RET
00cb0742: TEST byte ptr [EBP + 0x14], 0x1
00cb0746: JZ 0x00cb0760
00cb0748: PUSH ESI
00cb0749: PUSH EDI
00cb074a: PUSH EBX
00cb074b: CALL 0x00caf2f0
00cb0750: ADD ESP, 0xc
00cb0753: TEST AL, AL
00cb0755: JZ 0x00cb0760
00cb0757: TEST ESI, ESI
00cb0759: JZ 0x00cb0739
00cb075b: MOV byte ptr [ESP + 0x16], 0x0
00cb0760: MOV EAX, dword ptr [EBP + 0x14]
00cb0763: SHR EAX, 0x13
00cb0766: TEST AL, 0x1
00cb0768: JZ 0x00cb0782
00cb076a: PUSH ESI
00cb076b: PUSH EDI
00cb076c: PUSH EBX
00cb076d: CALL 0x00a64260
00cb0772: ADD ESP, 0xc
00cb0775: TEST AL, AL
00cb0777: JZ 0x00cb0782
00cb0779: TEST ESI, ESI
00cb077b: JZ 0x00cb0739
00cb077d: MOV byte ptr [ESP + 0x16], 0x0
00cb0782: MOV ECX, dword ptr [EBP + 0x14]
00cb0785: SHR ECX, 0x14
00cb0788: TEST CL, 0x1
00cb078b: JZ 0x00cb07a5
00cb078d: PUSH ESI
00cb078e: PUSH EDI
00cb078f: PUSH EBX
00cb0790: CALL 0x00caf3a0
00cb0795: ADD ESP, 0xc
00cb0798: TEST AL, AL
00cb079a: JZ 0x00cb07a5
00cb079c: TEST ESI, ESI
00cb079e: JZ 0x00cb0739
00cb07a0: MOV byte ptr [ESP + 0x16], 0x0
00cb07a5: MOV ECX, dword ptr [EBX + 0x290]
00cb07ab: MOV DL, byte ptr [EDI + 0x2]
00cb07ae: MOV EAX, dword ptr [ECX + 0x24]
00cb07b1: MOVSX EBX, DL
00cb07b4: SUB EBX, dword ptr [ECX + 0x10]
00cb07b7: MOVSX ECX, byte ptr [EDI]
00cb07ba: IMUL EBX, dword ptr [EAX + 0x4]
00cb07be: ADD EBX, ECX
00cb07c0: IMUL EBX, dword ptr [EAX + 0x8]
00cb07c4: MOVSX ECX, byte ptr [EDI + 0x1]
00cb07c8: MOV EAX, dword ptr [EAX + 0x10]
00cb07cb: ADD EBX, ECX
00cb07cd: MOVSS XMM0, dword ptr [EAX + EBX*0x4]
00cb07d2: MOVSS dword ptr [ESP + 0x1c], XMM0
00cb07d8: SUBSS XMM0, dword ptr [EBP + 0x10]
00cb07dd: MOVSS XMM1, XMM0
00cb07e1: MOVSS dword ptr [ESP + 0x18], XMM0
00cb07e7: MOVSS XMM0, dword ptr [0x00fab218]
00cb07ef: SHUFPS XMM1, XMM1, 0x0
00cb07f3: SHUFPS XMM0, XMM0, 0x0
00cb07f7: MULPS XMM0, XMM1
00cb07fa: MAXPS XMM0, XMM1
00cb07fd: MOVSS XMM1, dword ptr [0x0107e9f4]
00cb0805: SHUFPS XMM1, XMM1, 0x0
00cb0809: CMPLEPS XMM0, XMM1, 
00cb080d: MOVMSKPS ECX, XMM0
00cb0810: CMP ECX, 0xf
00cb0813: SETZ AL
00cb0816: TEST AL, AL
00cb0818: MOV byte ptr [ESP + 0x17], AL
00cb081c: JZ 0x00cb082c
00cb081e: MOV EAX, dword ptr [EBP + 0x14]
00cb0821: SHR EAX, 0x12
00cb0824: TEST AL, 0x1
00cb0826: JNZ 0x00cb0afd
00cb082c: MOV ECX, dword ptr [EBP + 0x14]
00cb082f: MOV EAX, ECX
00cb0831: SHR EAX, 0x11
00cb0834: TEST AL, 0x1
00cb0836: JNZ 0x00cb084e
00cb0838: FLD float ptr [ESP + 0x18]
00cb083c: FABS
00cb083e: FLD float ptr [0x0107e970]
00cb0844: FCOMIP ST0, ST1
00cb0846: FSTP ST0
00cb0848: JA 0x00cb0afd
00cb084e: TEST DL, DL
00cb0850: JG 0x00cb0881
00cb0852: SHR ECX, 0x1
00cb0854: TEST CL, 0x1
00cb0857: JZ 0x00cb0881
00cb0859: FLD float ptr [EBP + 0x10]
00cb085c: MOV EBX, dword ptr [EBP + 0x8]
00cb085f: PUSH ESI
00cb0860: PUSH ECX
00cb0861: FSTP float ptr [ESP]
00cb0864: PUSH EDI
00cb0865: PUSH EBX
00cb0866: CALL 0x00caf180
00cb086b: ADD ESP, 0x10
00cb086e: TEST AL, AL
00cb0870: JZ 0x00cb0884
00cb0872: TEST ESI, ESI
00cb0874: JZ 0x00cb0739
00cb087a: MOV byte ptr [ESP + 0x16], 0x0
00cb087f: JMP 0x00cb0884
00cb0881: MOV EBX, dword ptr [EBP + 0x8]
00cb0884: CMP byte ptr [0x01187934], 0x0
00cb088b: JZ 0x00cb0afd
00cb0891: MOV ECX, dword ptr [EBP + 0x14]
00cb0894: SHR ECX, 0x3
00cb0897: TEST CL, 0x1
00cb089a: JZ 0x00cb08b8
00cb089c: PUSH ESI
00cb089d: PUSH EDI
00cb089e: PUSH EBX
00cb089f: CALL 0x00caf570
00cb08a4: ADD ESP, 0xc
00cb08a7: TEST AL, AL
00cb08a9: JZ 0x00cb08b8
00cb08ab: TEST ESI, ESI
00cb08ad: JZ 0x00cb0739
00cb08b3: MOV byte ptr [ESP + 0x16], 0x0
00cb08b8: MOV EDX, dword ptr [EBP + 0x14]
00cb08bb: SHR EDX, 0x2
00cb08be: TEST DL, 0x1
00cb08c1: JZ 0x00cb08df
00cb08c3: PUSH ESI
00cb08c4: PUSH EDI
00cb08c5: PUSH EBX
00cb08c6: CALL 0x00caf440
00cb08cb: ADD ESP, 0xc
00cb08ce: TEST AL, AL
00cb08d0: JZ 0x00cb08df
00cb08d2: TEST ESI, ESI
00cb08d4: JZ 0x00cb0739
00cb08da: MOV byte ptr [ESP + 0x16], 0x0
00cb08df: MOV EAX, dword ptr [EBP + 0x14]
00cb08e2: SHR EAX, 0x7
00cb08e5: TEST AL, 0x1
00cb08e7: JZ 0x00cb091b
00cb08e9: CMP byte ptr [ESP + 0x17], 0x0
00cb08ee: JNZ 0x00cb091b
00cb08f0: MOV ECX, dword ptr [EBP + 0x20]
00cb08f3: FLD float ptr [EBP + 0x10]
00cb08f6: MOV EDX, dword ptr [EBP + 0x1c]
00cb08f9: PUSH ECX
00cb08fa: PUSH EDX
00cb08fb: PUSH ESI
00cb08fc: PUSH ECX
00cb08fd: FSTP float ptr [ESP]
00cb0900: PUSH EDI
00cb0901: PUSH EBX
00cb0902: CALL 0x00cafbc0
00cb0907: ADD ESP, 0x18
00cb090a: TEST AL, AL
00cb090c: JZ 0x00cb091b
00cb090e: TEST ESI, ESI
00cb0910: JZ 0x00cb0739
00cb0916: MOV byte ptr [ESP + 0x16], 0x0
00cb091b: MOV EBX, dword ptr [EBP + 0x14]
00cb091e: MOV EAX, EBX
00cb0920: MOV ECX, EAX
00cb0922: SHR ECX, 0x6
00cb0925: TEST CL, 0x1
00cb0928: JZ 0x00cb092d
00cb092a: OR EBX, 0x8
00cb092d: SHR EAX, 0x4
00cb0930: TEST AL, 0x1
00cb0932: JZ 0x00cb095b
00cb0934: FLD float ptr [EBP + 0x10]
00cb0937: MOV EDX, dword ptr [EBP + 0x8]
00cb093a: PUSH ESI
00cb093b: PUSH EBX
00cb093c: PUSH ECX
00cb093d: FSTP float ptr [ESP]
00cb0940: PUSH EDI
00cb0941: PUSH EDX
00cb0942: CALL 0x00cafe90
00cb0947: ADD ESP, 0x14
00cb094a: TEST AL, AL
00cb094c: JZ 0x00cb095b
00cb094e: TEST ESI, ESI
00cb0950: JZ 0x00cb0739
00cb0956: MOV byte ptr [ESP + 0x16], 0x0
00cb095b: MOV EAX, dword ptr [EBP + 0x14]
00cb095e: SHR EAX, 0x5
00cb0961: TEST AL, 0x1
00cb0963: JZ 0x00cb098c
00cb0965: FLD float ptr [EBP + 0x10]
00cb0968: PUSH ESI
00cb0969: PUSH EBX
00cb096a: PUSH ECX
00cb096b: MOV ECX, dword ptr [EBP + 0x8]
00cb096e: FSTP float ptr [ESP]
00cb0971: PUSH EDI
00cb0972: PUSH ECX
00cb0973: CALL 0x00cb0010
00cb0978: ADD ESP, 0x14
00cb097b: TEST AL, AL
00cb097d: JZ 0x00cb098c
00cb097f: TEST ESI, ESI
00cb0981: JZ 0x00cb0739
00cb0987: MOV byte ptr [ESP + 0x16], 0x0
00cb098c: MOV EDX, dword ptr [EBP + 0x14]
00cb098f: MOV EBX, dword ptr [EBP + 0x8]
00cb0992: SHR EDX, 0x8
00cb0995: TEST DL, 0x1
00cb0998: JZ 0x00cb09b6
00cb099a: PUSH ESI
00cb099b: PUSH EDI
00cb099c: PUSH EBX
00cb099d: CALL 0x00cb0390
00cb09a2: ADD ESP, 0xc
00cb09a5: TEST AL, AL
00cb09a7: JZ 0x00cb09b6
00cb09a9: TEST ESI, ESI
00cb09ab: JZ 0x00cb0739
00cb09b1: MOV byte ptr [ESP + 0x16], 0x0
00cb09b6: MOV EAX, dword ptr [EBP + 0x14]
00cb09b9: SHR EAX, 0x9
00cb09bc: TEST AL, 0x1
00cb09be: JZ 0x00cb09dc
00cb09c0: PUSH ESI
00cb09c1: PUSH EDI
00cb09c2: PUSH EBX
00cb09c3: CALL 0x00caf220
00cb09c8: ADD ESP, 0xc
00cb09cb: TEST AL, AL
00cb09cd: JZ 0x00cb09dc
00cb09cf: TEST ESI, ESI
00cb09d1: JZ 0x00cb0739
00cb09d7: MOV byte ptr [ESP + 0x16], 0x0
00cb09dc: MOV ECX, dword ptr [EBP + 0x14]
00cb09df: SHR ECX, 0xa
00cb09e2: TEST CL, 0x1
00cb09e5: JZ 0x00cb0a14
00cb09e7: FLD float ptr [EBP + 0x10]
00cb09ea: PUSH ESI
00cb09eb: SUB ESP, 0x8
00cb09ee: FSTP float ptr [ESP + 0x4]
00cb09f2: FLD float ptr [ESP + 0x28]
00cb09f6: FSTP float ptr [ESP]
00cb09f9: PUSH EDI
00cb09fa: PUSH EBX
00cb09fb: CALL 0x00caf880
00cb0a00: ADD ESP, 0x14
00cb0a03: TEST AL, AL
00cb0a05: JZ 0x00cb0a14
00cb0a07: TEST ESI, ESI
00cb0a09: JZ 0x00cb0739
00cb0a0f: MOV byte ptr [ESP + 0x16], 0x0
00cb0a14: MOV EDX, dword ptr [EBP + 0x14]
00cb0a17: SHR EDX, 0xb
00cb0a1a: TEST DL, 0x1
00cb0a1d: JZ 0x00cb0a3b
00cb0a1f: PUSH ESI
00cb0a20: PUSH EDI
00cb0a21: PUSH EBX
00cb0a22: CALL 0x00cafad0
00cb0a27: ADD ESP, 0xc
00cb0a2a: TEST AL, AL
00cb0a2c: JZ 0x00cb0a3b
00cb0a2e: TEST ESI, ESI
00cb0a30: JZ 0x00cb0739
00cb0a36: MOV byte ptr [ESP + 0x16], 0x0
00cb0a3b: MOV EAX, dword ptr [EBP + 0x14]
00cb0a3e: MOV ECX, EAX
00cb0a40: SHR ECX, 0xc
00cb0a43: TEST CL, 0x1
00cb0a46: JNZ 0x00cb0a52
00cb0a48: MOV EDX, EAX
00cb0a4a: SHR EDX, 0xd
00cb0a4d: TEST DL, 0x1
00cb0a50: JZ 0x00cb0a76
00cb0a52: FLD float ptr [EBP + 0x10]
00cb0a55: PUSH ESI
00cb0a56: PUSH EAX
00cb0a57: PUSH ECX
00cb0a58: FSTP float ptr [ESP]
00cb0a5b: PUSH EDI
00cb0a5c: PUSH EBX
00cb0a5d: CALL 0x00cb0b10
00cb0a62: ADD ESP, 0x14
00cb0a65: TEST AL, AL
00cb0a67: JZ 0x00cb0a76
00cb0a69: TEST ESI, ESI
00cb0a6b: JZ 0x00cb0739
00cb0a71: MOV byte ptr [ESP + 0x16], 0x0
00cb0a76: MOV EAX, dword ptr [EBP + 0x14]
00cb0a79: SHR EAX, 0xe
00cb0a7c: TEST AL, 0x1
00cb0a7e: JZ 0x00cb0aa2
00cb0a80: FLD float ptr [EBP + 0x10]
00cb0a83: PUSH ECX
00cb0a84: FSTP float ptr [ESP]
00cb0a87: PUSH EDI
00cb0a88: PUSH EBX
00cb0a89: CALL 0x00cb0430
00cb0a8e: ADD ESP, 0xc
00cb0a91: TEST AL, AL
00cb0a93: JZ 0x00cb0aa2
00cb0a95: TEST ESI, ESI
00cb0a97: JZ 0x00cb0739
00cb0a9d: MOV byte ptr [ESP + 0x16], 0x0
00cb0aa2: MOV ECX, dword ptr [EBP + 0x14]
00cb0aa5: SHR ECX, 0xf
00cb0aa8: TEST CL, 0x1
00cb0aab: JZ 0x00cb0ad0
00cb0aad: FLD float ptr [EBP + 0x10]
00cb0ab0: PUSH ESI
00cb0ab1: PUSH ECX
00cb0ab2: FSTP float ptr [ESP]
00cb0ab5: PUSH EDI
00cb0ab6: PUSH EBX
00cb0ab7: CALL 0x00cb0560
00cb0abc: ADD ESP, 0x10
00cb0abf: TEST AL, AL
00cb0ac1: JZ 0x00cb0ad0
00cb0ac3: TEST ESI, ESI
00cb0ac5: JZ 0x00cb0739
00cb0acb: MOV byte ptr [ESP + 0x16], 0x0
00cb0ad0: MOV EAX, dword ptr [EBP + 0x14]
00cb0ad3: SHR EAX, 0x10
00cb0ad6: TEST AL, 0x1
00cb0ad8: JZ 0x00cb0afd
00cb0ada: FLD float ptr [EBP + 0x10]
00cb0add: PUSH ESI
00cb0ade: PUSH ECX
00cb0adf: FSTP float ptr [ESP]
00cb0ae2: PUSH EDI
00cb0ae3: PUSH EBX
00cb0ae4: CALL 0x00caf280
00cb0ae9: ADD ESP, 0x10
00cb0aec: TEST AL, AL
00cb0aee: JZ 0x00cb0afd
00cb0af0: TEST ESI, ESI
00cb0af2: JZ 0x00cb0739
00cb0af8: MOV byte ptr [ESP + 0x16], 0x0
00cb0afd: MOV AL, byte ptr [ESP + 0x16]
00cb0b01: POP EDI
00cb0b02: POP ESI
00cb0b03: POP EBX
00cb0b04: MOV ESP, EBP
00cb0b06: POP EBP
00cb0b07: RET

Total instructions: 371