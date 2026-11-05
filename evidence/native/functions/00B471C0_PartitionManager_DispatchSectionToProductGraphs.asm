# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: PartitionManager_DispatchSectionToProductGraphs
; Owned ranges: [[00b471c0, 00b4727b]]
; Actual entry PLATE: PC1.67 complete75instructions/188ownedbytes. Physical ECX owner plus2stackDWORD inputs(section and productKey), RET8, no meaningful return. ProductExistsC5B640 false dispatches same section to all6consecutive graph pointers+54..+68. Otherwise C5B8C0 selects graph+60(slot3) or+64(slot4); C5BF10 lowbyte admits+5C(slot2), C5BF40 admits+58(slot1), C5BF70 admits+54(slot0). Those helpers test product partition flags100/200/400 and admit missing catalog products. BearsLoad lowbyte retained inBL also gates optional ownerlot+290 dispatchA918F0. Graph insertionC43C60 and optional listener internals are separate; no assumption this is rendering or world travel. Existing function types/ABI preserved.

00b471c0  53  PUSH EBX
00b471c1  55  PUSH EBP
00b471c2  8b6c2410  MOV EBP,dword ptr [ESP + 0x10]
00b471c6  56  PUSH ESI
00b471c7  57  PUSH EDI
00b471c8  55  PUSH EBP
00b471c9  8bf1  MOV ESI,ECX
00b471cb  e870441100  CALL 0x00c5b640
00b471d0  83c404  ADD ESP,0x4
00b471d3  84c0  TEST AL,AL
00b471d5  7523  JNZ 0x00b471fa
00b471d7  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00b471db  83c654  ADD ESI,0x54
00b471de  bf06000000  MOV EDI,0x6
00b471e3  8b0e  MOV ECX,dword ptr [ESI]
00b471e5  53  PUSH EBX
00b471e6  e875ca0f00  CALL 0x00c43c60
00b471eb  83c604  ADD ESI,0x4
00b471ee  83ef01  SUB EDI,0x1
00b471f1  75f0  JNZ 0x00b471e3
00b471f3  5f  POP EDI
00b471f4  5e  POP ESI
00b471f5  5d  POP EBP
00b471f6  5b  POP EBX
00b471f7  c20800  RET 0x8
00b471fa  55  PUSH EBP
00b471fb  e8c0461100  CALL 0x00c5b8c0
00b47200  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
00b47204  83c404  ADD ESP,0x4
00b47207  84c0  TEST AL,AL
00b47209  57  PUSH EDI
00b4720a  7405  JZ 0x00b47211
00b4720c  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00b4720f  eb03  JMP 0x00b47214
00b47211  8b4e64  MOV ECX,dword ptr [ESI + 0x64]
00b47214  e847ca0f00  CALL 0x00c43c60
00b47219  55  PUSH EBP
00b4721a  e8f14c1100  CALL 0x00c5bf10
00b4721f  83c404  ADD ESP,0x4
00b47222  84c0  TEST AL,AL
00b47224  7409  JZ 0x00b4722f
00b47226  8b4e5c  MOV ECX,dword ptr [ESI + 0x5c]
00b47229  57  PUSH EDI
00b4722a  e831ca0f00  CALL 0x00c43c60
00b4722f  55  PUSH EBP
00b47230  e80b4d1100  CALL 0x00c5bf40
00b47235  8ad8  MOV BL,AL
00b47237  83c404  ADD ESP,0x4
00b4723a  84db  TEST BL,BL
00b4723c  7409  JZ 0x00b47247
00b4723e  8b4e58  MOV ECX,dword ptr [ESI + 0x58]
00b47241  57  PUSH EDI
00b47242  e819ca0f00  CALL 0x00c43c60
00b47247  55  PUSH EBP
00b47248  e8234d1100  CALL 0x00c5bf70
00b4724d  83c404  ADD ESP,0x4
00b47250  84c0  TEST AL,AL
00b47252  7409  JZ 0x00b4725d
00b47254  8b4e54  MOV ECX,dword ptr [ESI + 0x54]
00b47257  57  PUSH EDI
00b47258  e803ca0f00  CALL 0x00c43c60
00b4725d  84db  TEST BL,BL
00b4725f  7414  JZ 0x00b47275
00b47261  8b460c  MOV EAX,dword ptr [ESI + 0xc]
00b47264  8b8890020000  MOV ECX,dword ptr [EAX + 0x290]
00b4726a  85c9  TEST ECX,ECX
00b4726c  7407  JZ 0x00b47275
00b4726e  55  PUSH EBP
00b4726f  57  PUSH EDI
00b47270  e87ba6f4ff  CALL 0x00a918f0
00b47275  5f  POP EDI
00b47276  5e  POP ESI
00b47277  5d  POP EBP
00b47278  5b  POP EBX
00b47279  c20800  RET 0x8
