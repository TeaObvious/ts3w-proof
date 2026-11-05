# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: Lot_LoadRoutingResources
; Owned ranges: [[00ab3030, 00ab30c3]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. ECX lot pointer plus lot-ID low/high words in two stack slots, RET8; no return-value contract claimed. Build stream from lot+3A8 and require nonnull reader/sticky status; obtain existing routing interface via828CF0. Within scoped tracker, compute DWORDlot+408==1 and+40C==50hex predicate, explicitly normalize fullECX0/1 by XOR/SETNZ, and push it as loadContext into82C4A0 atAB30A5. Existing82C4A0 forwards it unchanged to63D100, which retains fullcontext at lotrecord+170 and stores low16context+4 at+16C. Therefore selectedcomponent4 is ordinary and5 commercial diving; this is not a min-floor-derived index. Release scoped tracker and stream auxiliary. Pointer-looking GUID parameter in C is inferred; actual two DWORD stack loads/PUSHes andRET8 establish physical transport. Complete148bytes/47instructions, no ABI/types/bytes edited.

00ab3030  83ec20  SUB ESP,0x20
00ab3033  56  PUSH ESI
00ab3034  8bf1  MOV ESI,ECX
00ab3036  8d86a8030000  LEA EAX,[ESI + 0x3a8]
00ab303c  50  PUSH EAX
00ab303d  8d4c2410  LEA ECX,[ESP + 0x10]
00ab3041  e80a49d2ff  CALL 0x007d7950
00ab3046  837c240c00  CMP dword ptr [ESP + 0xc],0x0
00ab304b  7467  JZ 0x00ab30b4
00ab304d  807c242000  CMP byte ptr [ESP + 0x20],0x0
00ab3052  7460  JZ 0x00ab30b4
00ab3054  57  PUSH EDI
00ab3055  e8965cd7ff  CALL 0x00828cf0
00ab305a  8bf8  MOV EDI,EAX
00ab305c  85ff  TEST EDI,EDI
00ab305e  7453  JZ 0x00ab30b3
00ab3060  56  PUSH ESI
00ab3061  6826356c04  PUSH 0x46c3526
00ab3066  6820356c04  PUSH 0x46c3520
00ab306b  8d4c2414  LEA ECX,[ESP + 0x14]
00ab306f  e8fc00d2ff  CALL 0x007d3170
00ab3074  b801000000  MOV EAX,0x1
00ab3079  398608040000  CMP dword ptr [ESI + 0x408],EAX
00ab307f  7509  JNZ 0x00ab308a
00ab3081  83be0c04000050  CMP dword ptr [ESI + 0x40c],0x50
00ab3088  7402  JZ 0x00ab308c
00ab308a  33c0  XOR EAX,EAX
00ab308c  33c9  XOR ECX,ECX
00ab308e  84c0  TEST AL,AL
00ab3090  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00ab3094  0f95c1  SETNZ CL
00ab3097  8d542410  LEA EDX,[ESP + 0x10]
00ab309b  51  PUSH ECX
00ab309c  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00ab30a0  52  PUSH EDX
00ab30a1  50  PUSH EAX
00ab30a2  51  PUSH ECX
00ab30a3  8bcf  MOV ECX,EDI
00ab30a5  e8f693d7ff  CALL 0x0082c4a0
00ab30aa  8d4c2408  LEA ECX,[ESP + 0x8]
00ab30ae  e8fd00d2ff  CALL 0x007d31b0
00ab30b3  5f  POP EDI
00ab30b4  8d4c240c  LEA ECX,[ESP + 0xc]
00ab30b8  e8d348d2ff  CALL 0x007d7990
00ab30bd  5e  POP ESI
00ab30be  83c420  ADD ESP,0x20
00ab30c1  c20800  RET 0x8
