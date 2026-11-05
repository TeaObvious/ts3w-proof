# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined LotBasement_SetRequestedQuarterParts(void * this, char * param_1, char param_2)
Owned ranges: [[00ac46b0, 00ac4771]]

00ac46b0  51  PUSH ECX
00ac46b1  57  PUSH EDI
00ac46b2  8b7c240c  MOV EDI,dword ptr [ESP + 0xc]
00ac46b6  8a4702  MOV AL,byte ptr [EDI + 0x2]
00ac46b9  3cff  CMP AL,0xff
00ac46bb  894c2404  MOV dword ptr [ESP + 0x4],ECX
00ac46bf  0f8fa8000000  JG 0x00ac476d
00ac46c5  8b89a8020000  MOV ECX,dword ptr [ECX + 0x2a8]
00ac46cb  53  PUSH EBX
00ac46cc  0fbe5f01  MOVSX EBX,byte ptr [EDI + 0x1]
00ac46d0  55  PUSH EBP
00ac46d1  0fbe2f  MOVSX EBP,byte ptr [EDI]
00ac46d4  56  PUSH ESI
00ac46d5  0fbec0  MOVSX EAX,AL
00ac46d8  83ceff  OR ESI,0xffffffff
00ac46db  2bf0  SUB ESI,EAX
00ac46dd  56  PUSH ESI
00ac46de  53  PUSH EBX
00ac46df  55  PUSH EBP
00ac46e0  e8cb6cfcff  CALL 0x00a8b3b0
00ac46e5  0fb608  MOVZX ECX,byte ptr [EAX]
00ac46e8  8a4703  MOV AL,byte ptr [EDI + 0x3]
00ac46eb  a801  TEST AL,0x1
00ac46ed  884c2418  MOV byte ptr [ESP + 0x18],CL
00ac46f1  8a4c241c  MOV CL,byte ptr [ESP + 0x1c]
00ac46f5  7410  JZ 0x00ac4707
00ac46f7  84c9  TEST CL,CL
00ac46f9  7407  JZ 0x00ac4702
00ac46fb  804c241801  OR byte ptr [ESP + 0x18],0x1
00ac4700  eb05  JMP 0x00ac4707
00ac4702  80642418fe  AND byte ptr [ESP + 0x18],0xfe
00ac4707  a802  TEST AL,0x2
00ac4709  7410  JZ 0x00ac471b
00ac470b  84c9  TEST CL,CL
00ac470d  7407  JZ 0x00ac4716
00ac470f  804c241802  OR byte ptr [ESP + 0x18],0x2
00ac4714  eb05  JMP 0x00ac471b
00ac4716  80642418fd  AND byte ptr [ESP + 0x18],0xfd
00ac471b  a804  TEST AL,0x4
00ac471d  7410  JZ 0x00ac472f
00ac471f  84c9  TEST CL,CL
00ac4721  7407  JZ 0x00ac472a
00ac4723  804c241804  OR byte ptr [ESP + 0x18],0x4
00ac4728  eb05  JMP 0x00ac472f
00ac472a  80642418fb  AND byte ptr [ESP + 0x18],0xfb
00ac472f  a808  TEST AL,0x8
00ac4731  7410  JZ 0x00ac4743
00ac4733  84c9  TEST CL,CL
00ac4735  7407  JZ 0x00ac473e
00ac4737  804c241808  OR byte ptr [ESP + 0x18],0x8
00ac473c  eb05  JMP 0x00ac4743
00ac473e  80642418f7  AND byte ptr [ESP + 0x18],0xf7
00ac4743  8b442410  MOV EAX,dword ptr [ESP + 0x10]
00ac4747  8b88a8020000  MOV ECX,dword ptr [EAX + 0x2a8]
00ac474d  56  PUSH ESI
00ac474e  53  PUSH EBX
00ac474f  55  PUSH EBP
00ac4750  8d542424  LEA EDX,[ESP + 0x24]
00ac4754  52  PUSH EDX
00ac4755  e8d605fdff  CALL 0x00a94d30
00ac475a  8b4c2410  MOV ECX,dword ptr [ESP + 0x10]
00ac475e  8b8990020000  MOV ECX,dword ptr [ECX + 0x290]
00ac4764  57  PUSH EDI
00ac4765  e836d3fcff  CALL 0x00a91aa0
00ac476a  5e  POP ESI
00ac476b  5d  POP EBP
00ac476c  5b  POP EBX
00ac476d  5f  POP EDI
00ac476e  59  POP ECX
00ac476f  c20800  RET 0x8
