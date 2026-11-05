# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 /TS3W.exe existing owned body[00c10350,00c10464],277bytes/65instructions. Readonly GhidrAssist metadata/Listing and independent originalPE byte/start verification. No DB/body/prototype repair, analysis, annotation/save or original-byte mutation.

Physical ECX baseobject plus rawF32override, voidRET4. Existing helper at21C/74 supplies receiver; nullreturns. COMISSoverride,zero thenJA accepts only positiveordered override. Otherwise asks6FAA90 then6E8740, x87 FMUL102AF6C/narrowF32, or0 when absent. Thus0/negative/unordered override usesclock, not explicitmidnight. Remaining daylight remap/effectiveangle984→C159B0 retained; original child clockunits, interpolation, exceptional FP and full timeline not generalized.

ORIGINAL OWNED BYTES
00c10350: 56
00c10351: 8b f1
00c10353: 8b 86 1c 02 00 00
00c10359: 8b 48 74
00c1035c: 57
00c1035d: e8 2e 34 8a ff
00c10362: 8b f8
00c10364: 85 ff
00c10366: 0f 84 f4 00 00 00
00c1036c: f3 0f 10 44 24 0c
00c10372: 0f 2f 05 cc 4c 0f 01
00c10379: 77 27
00c1037b: 8b ce
00c1037d: e8 0e a7 ae ff
00c10382: 85 c0
00c10384: 74 19
00c10386: 8b c8
00c10388: e8 b3 83 ad ff
00c1038d: d8 0d 6c af 02 01
00c10393: d9 5c 24 0c
00c10397: f3 0f 10 44 24 0c
00c1039d: eb 03
00c1039f: 0f 57 c0
00c103a2: f3 0f 10 96 c4 09 00 00
00c103aa: f3 0f 58 96 74 09 00 00
00c103b2: f3 0f 10 8e c0 09 00 00
00c103ba: f3 0f 58 8e 78 09 00 00
00c103c2: f3 0f 10 25 30 4a ff 00
00c103ca: f3 0f 5c ca
00c103ce: f3 0f 5c c2
00c103d2: 0f 57 d2
00c103d5: 0f 2f d0
00c103d8: 0f 28 dc
00c103db: f3 0f 5c d9
00c103df: 76 04
00c103e1: f3 0f 58 c4
00c103e5: 0f 2f c8
00c103e8: 76 1f
00c103ea: f3 0f 5e c1
00c103ee: 0f 28 c8
00c103f1: f3 0f 59 0d 94 ad fa 00
00c103f9: f3 0f 58 0d 78 3f fb 00
00c10401: f3 0f 11 4c 24 0c
00c10407: eb 38
00c10409: f3 0f 5c c1
00c1040d: f3 0f 5e c3
00c10411: 0f 28 c8
00c10414: f3 0f 59 0d 94 ad fa 00
00c1041c: f3 0f 58 0d 64 4a ff 00
00c10424: 0f 2f cc
00c10427: f3 0f 11 4c 24 0c
00c1042d: 76 0a
00c1042f: f3 0f 5c cc
00c10433: f3 0f 11 4c 24 0c
00c10439: f3 0f 58 05 f8 98 f9 00
00c10441: f3 0f 59 05 e8 50 07 01
00c10449: d9 44 24 0c
00c1044d: 51
00c1044e: 8b cf
00c10450: d9 1c 24
00c10453: f3 0f 11 86 84 09 00 00
00c1045b: e8 50 55 00 00
00c10460: 5f
00c10461: 5e
00c10462: c2 04 00

GHIDRA OWNED LISTING
[Context] Operating on: TS3W.exe

Disassembly of function: FUN_00c10350
Entry Point: 00c10350

00c10350: PUSH ESI
00c10351: MOV ESI, ECX
00c10353: MOV EAX, dword ptr [ESI + 0x21c]
00c10359: MOV ECX, dword ptr [EAX + 0x74]
00c1035c: PUSH EDI
00c1035d: CALL 0x004b3790
00c10362: MOV EDI, EAX
00c10364: TEST EDI, EDI
00c10366: JZ 0x00c10460
00c1036c: MOVSS XMM0, dword ptr [ESP + 0xc]
00c10372: COMISS XMM0, dword ptr [0x010f4ccc]
00c10379: JA 0x00c103a2
00c1037b: MOV ECX, ESI
00c1037d: CALL 0x006faa90
00c10382: TEST EAX, EAX
00c10384: JZ 0x00c1039f
00c10386: MOV ECX, EAX
00c10388: CALL 0x006e8740
00c1038d: FMUL float ptr [0x0102af6c]
00c10393: FSTP float ptr [ESP + 0xc]
00c10397: MOVSS XMM0, dword ptr [ESP + 0xc]
00c1039d: JMP 0x00c103a2
00c1039f: XORPS XMM0, XMM0
00c103a2: MOVSS XMM2, dword ptr [ESI + 0x9c4]
00c103aa: ADDSS XMM2, dword ptr [ESI + 0x974]
00c103b2: MOVSS XMM1, dword ptr [ESI + 0x9c0]
00c103ba: ADDSS XMM1, dword ptr [ESI + 0x978]
00c103c2: MOVSS XMM4, dword ptr [0x00ff4a30]
00c103ca: SUBSS XMM1, XMM2
00c103ce: SUBSS XMM0, XMM2
00c103d2: XORPS XMM2, XMM2
00c103d5: COMISS XMM2, XMM0
00c103d8: MOVAPS XMM3, XMM4
00c103db: SUBSS XMM3, XMM1
00c103df: JBE 0x00c103e5
00c103e1: ADDSS XMM0, XMM4
00c103e5: COMISS XMM1, XMM0
00c103e8: JBE 0x00c10409
00c103ea: DIVSS XMM0, XMM1
00c103ee: MOVAPS XMM1, XMM0
00c103f1: MULSS XMM1, dword ptr [0x00faad94]
00c103f9: ADDSS XMM1, dword ptr [0x00fb3f78]
00c10401: MOVSS dword ptr [ESP + 0xc], XMM1
00c10407: JMP 0x00c10441
00c10409: SUBSS XMM0, XMM1
00c1040d: DIVSS XMM0, XMM3
00c10411: MOVAPS XMM1, XMM0
00c10414: MULSS XMM1, dword ptr [0x00faad94]
00c1041c: ADDSS XMM1, dword ptr [0x00ff4a64]
00c10424: COMISS XMM1, XMM4
00c10427: MOVSS dword ptr [ESP + 0xc], XMM1
00c1042d: JBE 0x00c10439
00c1042f: SUBSS XMM1, XMM4
00c10433: MOVSS dword ptr [ESP + 0xc], XMM1
00c10439: ADDSS XMM0, dword ptr [0x00f998f8]
00c10441: MULSS XMM0, dword ptr [0x010750e8]
00c10449: FLD float ptr [ESP + 0xc]
00c1044d: PUSH ECX
00c1044e: MOV ECX, EDI
00c10450: FSTP float ptr [ESP]
00c10453: MOVSS dword ptr [ESI + 0x984], XMM0
00c1045b: CALL 0x00c159b0
00c10460: POP EDI
00c10461: POP ESI
00c10462: RET 0x4

Total instructions: 65