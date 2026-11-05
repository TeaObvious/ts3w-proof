# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: FloorPatternMap_Initialize
; Owned ranges: [[00aa5030, 00aa50bd]]
; Actual entry PLATE: Original PC1.67; descriptive analyst name. Physical input is ECX map owner; no incomingEDX read, no stack words/plainRET. Initializes forward and reverse map heads/count/capacity/debug labels, copies16DWORDs from initial nullquad011EC8E0 into owner+40, clears byte+80 and associated fields+84/+88/+8C, and sets nondeletable-key label+90. Thus all four implicit default keys start as nullquad. AA5490 later overwrites only the inline16-byte default key at+40 while reading resources. Default data is original initial-memory zero-fill evidence, not physically backed disk bytes. Existing inferredfastcall metadata is unchanged; no return-value contract claimed. Complete142ownedbytes.

00aa5030  f30f1005f898f900  MOVSS XMM0,dword ptr [0x00f998f8]
00aa5038  f30f100d88fd0301  MOVSS XMM1,dword ptr [0x0103fd88]
00aa5040  8bc1  MOV EAX,ECX
00aa5042  f30f114010  MOVSS dword ptr [EAX + 0x10],XMM0
00aa5047  f30f114814  MOVSS dword ptr [EAX + 0x14],XMM1
00aa504c  c7401c344d0601  MOV dword ptr [EAX + 0x1c],0x1064d34
00aa5053  33d2  XOR EDX,EDX
00aa5055  89500c  MOV dword ptr [EAX + 0xc],EDX
00aa5058  895018  MOV dword ptr [EAX + 0x18],EDX
00aa505b  56  PUSH ESI
00aa505c  be01000000  MOV ESI,0x1
00aa5061  897008  MOV dword ptr [EAX + 0x8],ESI
00aa5064  b900d91401  MOV ECX,0x114d900
00aa5069  894804  MOV dword ptr [EAX + 0x4],ECX
00aa506c  f30f114030  MOVSS dword ptr [EAX + 0x30],XMM0
00aa5071  f30f114834  MOVSS dword ptr [EAX + 0x34],XMM1
00aa5076  c7403c104d0601  MOV dword ptr [EAX + 0x3c],0x1064d10
00aa507d  897028  MOV dword ptr [EAX + 0x28],ESI
00aa5080  894824  MOV dword ptr [EAX + 0x24],ECX
00aa5083  57  PUSH EDI
00aa5084  89502c  MOV dword ptr [EAX + 0x2c],EDX
00aa5087  895038  MOV dword ptr [EAX + 0x38],EDX
00aa508a  8d7840  LEA EDI,[EAX + 0x40]
00aa508d  b910000000  MOV ECX,0x10
00aa5092  bee0c81e01  MOV ESI,0x11ec8e0
00aa5097  f3a5  MOVSD.REP ES:EDI,ESI
00aa5099  889080000000  MOV byte ptr [EAX + 0x80],DL
00aa509f  5f  POP EDI
00aa50a0  899084000000  MOV dword ptr [EAX + 0x84],EDX
00aa50a6  899088000000  MOV dword ptr [EAX + 0x88],EDX
00aa50ac  89908c000000  MOV dword ptr [EAX + 0x8c],EDX
00aa50b2  c78090000000e44c0601  MOV dword ptr [EAX + 0x90],0x1064ce4
00aa50bc  5e  POP ESI
00aa50bd  c3  RET
