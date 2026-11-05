# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe; actual Ghidra Listing and preserved non-owned envelope gaps.
Owned ranges: [[004eb900, 004eba7c] [004eba80, 004ebc9c]]
Signature: int RefPack_ExpandCommands(byte * param_1, uint param_2, byte * param_3, uint param_4)

004eb900  83ec10  SUB ESP,0x10
004eb903  8b4c241c  MOV ECX,dword ptr [ESP + 0x1c]
004eb907  85c9  TEST ECX,ECX
004eb909  53  PUSH EBX
004eb90a  55  PUSH EBP
004eb90b  56  PUSH ESI
004eb90c  8b742420  MOV ESI,dword ptr [ESP + 0x20]
004eb910  57  PUSH EDI
004eb911  c744241c00000000  MOV dword ptr [ESP + 0x1c],0x0
004eb919  0f8472030000  JZ 0x004ebc91
004eb91f  8b7c2430  MOV EDI,dword ptr [ESP + 0x30]
004eb923  83ff02  CMP EDI,0x2
004eb926  8b442428  MOV EAX,dword ptr [ESP + 0x28]
004eb92a  89442414  MOV dword ptr [ESP + 0x14],EAX
004eb92e  0f822c030000  JC 0x004ebc60
004eb934  0fb601  MOVZX EAX,byte ptr [ECX]
004eb937  0fb65101  MOVZX EDX,byte ptr [ECX + 0x1]
004eb93b  83c101  ADD ECX,0x1
004eb93e  c1e008  SHL EAX,0x8
004eb941  03c2  ADD EAX,EDX
004eb943  83c7fe  ADD EDI,-0x2
004eb946  83c101  ADD ECX,0x1
004eb949  a900800000  TEST EAX,0x8000
004eb94e  7433  JZ 0x004eb983
004eb950  a900010000  TEST EAX,0x100
004eb955  740f  JZ 0x004eb966
004eb957  83ff04  CMP EDI,0x4
004eb95a  0f8200030000  JC 0x004ebc60
004eb960  83ef04  SUB EDI,0x4
004eb963  83c104  ADD ECX,0x4
004eb966  83ff04  CMP EDI,0x4
004eb969  0f82f1020000  JC 0x004ebc60
004eb96f  0fb601  MOVZX EAX,byte ptr [ECX]
004eb972  0fb65101  MOVZX EDX,byte ptr [ECX + 0x1]
004eb976  83c101  ADD ECX,0x1
004eb979  c1e008  SHL EAX,0x8
004eb97c  83ef04  SUB EDI,0x4
004eb97f  03c2  ADD EAX,EDX
004eb981  eb25  JMP 0x004eb9a8
004eb983  a900010000  TEST EAX,0x100
004eb988  740f  JZ 0x004eb999
004eb98a  83ff03  CMP EDI,0x3
004eb98d  0f82cd020000  JC 0x004ebc60
004eb993  83ef03  SUB EDI,0x3
004eb996  83c103  ADD ECX,0x3
004eb999  83ff03  CMP EDI,0x3
004eb99c  0f82be020000  JC 0x004ebc60
004eb9a2  0fb601  MOVZX EAX,byte ptr [ECX]
004eb9a5  83ef03  SUB EDI,0x3
004eb9a8  0fb65101  MOVZX EDX,byte ptr [ECX + 0x1]
004eb9ac  83c101  ADD ECX,0x1
004eb9af  c1e008  SHL EAX,0x8
004eb9b2  03c2  ADD EAX,EDX
004eb9b4  0fb65101  MOVZX EDX,byte ptr [ECX + 0x1]
004eb9b8  83c101  ADD ECX,0x1
004eb9bb  c1e008  SHL EAX,0x8
004eb9be  03c2  ADD EAX,EDX
004eb9c0  83c101  ADD ECX,0x1
004eb9c3  83ff01  CMP EDI,0x1
004eb9c6  8944241c  MOV dword ptr [ESP + 0x1c],EAX
004eb9ca  0f8290020000  JC 0x004ebc60
004eb9d0  8a01  MOV AL,byte ptr [ECX]
004eb9d2  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
004eb9d6  83ef01  SUB EDI,0x1
004eb9d9  83c101  ADD ECX,0x1
004eb9dc  84c0  TEST AL,AL
004eb9de  0f88b2000000  JS 0x004eba96
004eb9e4  83ff01  CMP EDI,0x1
004eb9e7  0f8273020000  JC 0x004ebc60
004eb9ed  8a11  MOV DL,byte ptr [ECX]
004eb9ef  0fb6e8  MOVZX EBP,AL
004eb9f2  8854242c  MOV byte ptr [ESP + 0x2c],DL
004eb9f6  8bd5  MOV EDX,EBP
004eb9f8  83e203  AND EDX,0x3
004eb9fb  83ef01  SUB EDI,0x1
004eb9fe  83c101  ADD ECX,0x1
004eba01  3bd3  CMP EDX,EBX
004eba03  0f8757020000  JA 0x004ebc60
004eba09  2bda  SUB EBX,EDX
004eba0b  3bfa  CMP EDI,EDX
004eba0d  0f824d020000  JC 0x004ebc60
004eba13  2bfa  SUB EDI,EDX
004eba15  85d2  TEST EDX,EDX
004eba17  897c2418  MOV dword ptr [ESP + 0x18],EDI
004eba1b  7414  JZ 0x004eba31
004eba1d  8d4900  LEA ECX,[ECX]
004eba20  8a01  MOV AL,byte ptr [ECX]
004eba22  83ea01  SUB EDX,0x1
004eba25  8806  MOV byte ptr [ESI],AL
004eba27  83c601  ADD ESI,0x1
004eba2a  83c101  ADD ECX,0x1
004eba2d  85d2  TEST EDX,EDX
004eba2f  75ef  JNZ 0x004eba20
004eba31  8bc5  MOV EAX,EBP
004eba33  83e060  AND EAX,0x60
004eba36  03c0  ADD EAX,EAX
004eba38  03c0  ADD EAX,EAX
004eba3a  03c0  ADD EAX,EAX
004eba3c  8bd6  MOV EDX,ESI
004eba3e  2bd0  SUB EDX,EAX
004eba40  0fb644242c  MOVZX EAX,byte ptr [ESP + 0x2c]
004eba45  2bd0  SUB EDX,EAX
004eba47  83ea01  SUB EDX,0x1
004eba4a  3b542424  CMP EDX,dword ptr [ESP + 0x24]
004eba4e  0f820c020000  JC 0x004ebc60
004eba54  3bd6  CMP EDX,ESI
004eba56  0f8304020000  JNC 0x004ebc60
004eba5c  c1ed02  SHR EBP,0x2
004eba5f  83e507  AND EBP,0x7
004eba62  83c503  ADD EBP,0x3
004eba65  3beb  CMP EBP,EBX
004eba67  0f87f3010000  JA 0x004ebc60
004eba6d  2bdd  SUB EBX,EBP
004eba6f  85ed  TEST EBP,EBP
004eba71  895c2414  MOV dword ptr [ESP + 0x14],EBX
004eba75  0f84d8010000  JZ 0x004ebc53
004eba7b  eb03  JMP 0x004eba80
004eba7d  8d4900  .byte ; non-owned envelope gap
004eba80  8a02  MOV AL,byte ptr [EDX] ; Forward byte copy from earlier output permits overlapping RefPack back references; same rule in medium/long loops.
004eba82  83ed01  SUB EBP,0x1
004eba85  8806  MOV byte ptr [ESI],AL
004eba87  83c601  ADD ESI,0x1
004eba8a  83c201  ADD EDX,0x1
004eba8d  85ed  TEST EBP,EBP
004eba8f  75ef  JNZ 0x004eba80
004eba91  e9bd010000  JMP 0x004ebc53
004eba96  a840  TEST AL,0x40
004eba98  0f85bd000000  JNZ 0x004ebb5b
004eba9e  83ff02  CMP EDI,0x2
004ebaa1  0f82b9010000  JC 0x004ebc60
004ebaa7  0fb611  MOVZX EDX,byte ptr [ECX]
004ebaaa  8854242c  MOV byte ptr [ESP + 0x2c],DL
004ebaae  0fb65101  MOVZX EDX,byte ptr [ECX + 0x1]
004ebab2  0fb66c242c  MOVZX EBP,byte ptr [ESP + 0x2c]
004ebab7  83c101  ADD ECX,0x1
004ebaba  88542413  MOV byte ptr [ESP + 0x13],DL
004ebabe  8bd5  MOV EDX,EBP
004ebac0  c1ea06  SHR EDX,0x6
004ebac3  83ef02  SUB EDI,0x2
004ebac6  83c101  ADD ECX,0x1
004ebac9  3bd3  CMP EDX,EBX
004ebacb  0f878f010000  JA 0x004ebc60
004ebad1  2bda  SUB EBX,EDX
004ebad3  3bfa  CMP EDI,EDX
004ebad5  895c2414  MOV dword ptr [ESP + 0x14],EBX
004ebad9  0f8281010000  JC 0x004ebc60
004ebadf  2bfa  SUB EDI,EDX
004ebae1  85d2  TEST EDX,EDX
004ebae3  897c2418  MOV dword ptr [ESP + 0x18],EDI
004ebae7  7418  JZ 0x004ebb01
004ebae9  8da42400000000  LEA ESP,[ESP]
004ebaf0  8a19  MOV BL,byte ptr [ECX]
004ebaf2  83ea01  SUB EDX,0x1
004ebaf5  881e  MOV byte ptr [ESI],BL
004ebaf7  83c601  ADD ESI,0x1
004ebafa  83c101  ADD ECX,0x1
004ebafd  85d2  TEST EDX,EDX
004ebaff  75ef  JNZ 0x004ebaf0
004ebb01  0fb67c2413  MOVZX EDI,byte ptr [ESP + 0x13]
004ebb06  83e53f  AND EBP,0x3f
004ebb09  c1e508  SHL EBP,0x8
004ebb0c  8bd6  MOV EDX,ESI
004ebb0e  2bd5  SUB EDX,EBP
004ebb10  2bd7  SUB EDX,EDI
004ebb12  83ea01  SUB EDX,0x1
004ebb15  3b542424  CMP EDX,dword ptr [ESP + 0x24]
004ebb19  0f8241010000  JC 0x004ebc60
004ebb1f  3bd6  CMP EDX,ESI
004ebb21  0f8339010000  JNC 0x004ebc60
004ebb27  83e03f  AND EAX,0x3f
004ebb2a  83c004  ADD EAX,0x4
004ebb2d  8bf8  MOV EDI,EAX
004ebb2f  3b7c2414  CMP EDI,dword ptr [ESP + 0x14]
004ebb33  0f8727010000  JA 0x004ebc60
004ebb39  297c2414  SUB dword ptr [ESP + 0x14],EDI
004ebb3d  85ff  TEST EDI,EDI
004ebb3f  0f840e010000  JZ 0x004ebc53
004ebb45  8a02  MOV AL,byte ptr [EDX]
004ebb47  83ef01  SUB EDI,0x1
004ebb4a  8806  MOV byte ptr [ESI],AL
004ebb4c  83c601  ADD ESI,0x1
004ebb4f  83c201  ADD EDX,0x1
004ebb52  85ff  TEST EDI,EDI
004ebb54  75ef  JNZ 0x004ebb45
004ebb56  e9f8000000  JMP 0x004ebc53
004ebb5b  a820  TEST AL,0x20
004ebb5d  0f85b5000000  JNZ 0x004ebc18
004ebb63  83ff03  CMP EDI,0x3
004ebb66  0f82f4000000  JC 0x004ebc60
004ebb6c  8a19  MOV BL,byte ptr [ECX]
004ebb6e  0fb65101  MOVZX EDX,byte ptr [ECX + 0x1]
004ebb72  83c101  ADD ECX,0x1
004ebb75  83c101  ADD ECX,0x1
004ebb78  88542413  MOV byte ptr [ESP + 0x13],DL
004ebb7c  0fb611  MOVZX EDX,byte ptr [ECX]
004ebb7f  0fb6e8  MOVZX EBP,AL
004ebb82  8854242c  MOV byte ptr [ESP + 0x2c],DL
004ebb86  8bd5  MOV EDX,EBP
004ebb88  83e203  AND EDX,0x3
004ebb8b  83ef03  SUB EDI,0x3
004ebb8e  83c101  ADD ECX,0x1
004ebb91  3b542414  CMP EDX,dword ptr [ESP + 0x14]
004ebb95  0f87c5000000  JA 0x004ebc60
004ebb9b  29542414  SUB dword ptr [ESP + 0x14],EDX
004ebb9f  3bfa  CMP EDI,EDX
004ebba1  0f82b9000000  JC 0x004ebc60
004ebba7  2bfa  SUB EDI,EDX
004ebba9  85d2  TEST EDX,EDX
004ebbab  897c2418  MOV dword ptr [ESP + 0x18],EDI
004ebbaf  7411  JZ 0x004ebbc2
004ebbb1  8a01  MOV AL,byte ptr [ECX]
004ebbb3  83ea01  SUB EDX,0x1
004ebbb6  8806  MOV byte ptr [ESI],AL
004ebbb8  83c601  ADD ESI,0x1
004ebbbb  83c101  ADD ECX,0x1
004ebbbe  85d2  TEST EDX,EDX
004ebbc0  75ef  JNZ 0x004ebbb1
004ebbc2  33c0  XOR EAX,EAX
004ebbc4  8bd5  MOV EDX,EBP
004ebbc6  83e210  AND EDX,0x10
004ebbc9  8ae3  MOV AH,BL
004ebbcb  c1e20c  SHL EDX,0xc
004ebbce  8bfe  MOV EDI,ESI
004ebbd0  2bfa  SUB EDI,EDX
004ebbd2  0fb6542413  MOVZX EDX,byte ptr [ESP + 0x13]
004ebbd7  2bf8  SUB EDI,EAX
004ebbd9  2bfa  SUB EDI,EDX
004ebbdb  83ef01  SUB EDI,0x1
004ebbde  3b7c2424  CMP EDI,dword ptr [ESP + 0x24]
004ebbe2  727c  JC 0x004ebc60
004ebbe4  3bfe  CMP EDI,ESI
004ebbe6  7378  JNC 0x004ebc60
004ebbe8  0fb644242c  MOVZX EAX,byte ptr [ESP + 0x2c]
004ebbed  83e50c  AND EBP,0xc
004ebbf0  c1e506  SHL EBP,0x6
004ebbf3  8d6c2805  LEA EBP,[EAX + EBP*0x1 + 0x5]
004ebbf7  3b6c2414  CMP EBP,dword ptr [ESP + 0x14]
004ebbfb  7763  JA 0x004ebc60
004ebbfd  296c2414  SUB dword ptr [ESP + 0x14],EBP
004ebc01  85ed  TEST EBP,EBP
004ebc03  744e  JZ 0x004ebc53
004ebc05  8a17  MOV DL,byte ptr [EDI]
004ebc07  83ed01  SUB EBP,0x1
004ebc0a  8816  MOV byte ptr [ESI],DL
004ebc0c  83c601  ADD ESI,0x1
004ebc0f  83c701  ADD EDI,0x1
004ebc12  85ed  TEST EBP,EBP
004ebc14  75ef  JNZ 0x004ebc05
004ebc16  eb3b  JMP 0x004ebc53
004ebc18  0fb6d0  MOVZX EDX,AL
004ebc1b  83e21f  AND EDX,0x1f
004ebc1e  8d149504000000  LEA EDX,[EDX*0x4 + 0x4]
004ebc25  83fa70  CMP EDX,0x70
004ebc28  7740  JA 0x004ebc6a
004ebc2a  3bd3  CMP EDX,EBX
004ebc2c  7732  JA 0x004ebc60
004ebc2e  2bda  SUB EBX,EDX
004ebc30  3bfa  CMP EDI,EDX
004ebc32  895c2414  MOV dword ptr [ESP + 0x14],EBX
004ebc36  7228  JC 0x004ebc60
004ebc38  2bfa  SUB EDI,EDX
004ebc3a  85d2  TEST EDX,EDX
004ebc3c  897c2418  MOV dword ptr [ESP + 0x18],EDI
004ebc40  7411  JZ 0x004ebc53
004ebc42  8a01  MOV AL,byte ptr [ECX]
004ebc44  83ea01  SUB EDX,0x1
004ebc47  8806  MOV byte ptr [ESI],AL
004ebc49  83c601  ADD ESI,0x1
004ebc4c  83c101  ADD ECX,0x1
004ebc4f  85d2  TEST EDX,EDX
004ebc51  75ef  JNZ 0x004ebc42
004ebc53  8b7c2418  MOV EDI,dword ptr [ESP + 0x18]
004ebc57  83ff01  CMP EDI,0x1 ; Remaining input exhausted without FC..FF terminal falls to failure0, irrespective of produced output length.
004ebc5a  0f8370fdffff  JNC 0x004eb9d0
004ebc60  5f  POP EDI
004ebc61  5e  POP ESI
004ebc62  5d  POP EBP
004ebc63  33c0  XOR EAX,EAX
004ebc65  5b  POP EBX
004ebc66  83c410  ADD ESP,0x10
004ebc69  c3  RET
004ebc6a  83e003  AND EAX,0x3 ; FC..FF terminal: final literal count b0&3; capacity/input checked; subsequent stored bytes ignored.
004ebc6d  3bc3  CMP EAX,EBX
004ebc6f  77ef  JA 0x004ebc60
004ebc71  3bf8  CMP EDI,EAX
004ebc73  72eb  JC 0x004ebc60
004ebc75  85c0  TEST EAX,EAX
004ebc77  7418  JZ 0x004ebc91
004ebc79  8da42400000000  LEA ESP,[ESP]
004ebc80  8a11  MOV DL,byte ptr [ECX]
004ebc82  83e801  SUB EAX,0x1
004ebc85  8816  MOV byte ptr [ESI],DL
004ebc87  83c601  ADD ESI,0x1
004ebc8a  83c101  ADD ECX,0x1
004ebc8d  85c0  TEST EAX,EAX
004ebc8f  75ef  JNZ 0x004ebc80
004ebc91  8b44241c  MOV EAX,dword ptr [ESP + 0x1c] ; Returns header-declared expanded size, not measured produced byte count; native does not establish full-output equality here.
004ebc95  5f  POP EDI
004ebc96  5e  POP ESI
004ebc97  5d  POP EBP
004ebc98  5b  POP EBX
004ebc99  83c410  ADD ESP,0x10
004ebc9c  c3  RET
