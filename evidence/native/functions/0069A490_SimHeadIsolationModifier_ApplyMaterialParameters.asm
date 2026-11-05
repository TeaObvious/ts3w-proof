# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: SimHeadIsolationModifier_ApplyMaterialParameters
; Owned ranges: [[0069a490, 0069a720]]
; Actual entry PLATE: Static PC1.67: ECX modifier plus four stack arguments, RET16. Meaningful status is AL only: success MOV AL1, failed clone XOR AL0; upper EAX is cleanup residue, stored undefined4 return is preserved. Builds original material parameter hashes FadeYThreshold=0x937F9649 always and FadeZThreshold=0x1960A61C when speciesCF00 (zero->100) is not100;69A1C0 provides x87 Y and Zout, initialized+0 before call. Always appends PieMenuHeadRadius=0xCD4836B4 from global01159A0C multiplied by exact F32bits3E800000 (.25), independent of camera zoom. LOD first stack argument byte+72 selects retained in-place006DB170 material substitution or006DB3D0 clone-with-substitutions, whose AL is checked. Publishes successful result through second stack output, retains output and releases local before scratch cleanup. No shader-space cutoff or vertex/index deletion is established by this body; shader hardclip/hairfade interpretation belongs to separate original shader comparison.

0069a490  81ecbc000000  SUB ESP,0xbc
0069a496  f6058c111d0101  TEST byte ptr [0x011d118c],0x1
0069a49d  53  PUSH EBX
0069a49e  56  PUSH ESI
0069a49f  57  PUSH EDI
0069a4a0  8bf1  MOV ESI,ECX
0069a4a2  bf01000000  MOV EDI,0x1
0069a4a7  7518  JNZ 0x0069a4c1
0069a4a9  093d8c111d01  OR dword ptr [0x011d118c],EDI
0069a4af  68e040ff00  PUSH 0xff40e0
0069a4b4  e8375c1300  CALL 0x007d00f0
0069a4b9  83c404  ADD ESP,0x4
0069a4bc  a388111d01  MOV [0x011d1188],EAX
0069a4c1  f6058c111d0102  TEST byte ptr [0x011d118c],0x2
0069a4c8  7519  JNZ 0x0069a4e3
0069a4ca  830d8c111d0102  OR dword ptr [0x011d118c],0x2
0069a4d1  68d040ff00  PUSH 0xff40d0
0069a4d6  e8155c1300  CALL 0x007d00f0
0069a4db  83c404  ADD ESP,0x4
0069a4de  a384111d01  MOV [0x011d1184],EAX
0069a4e3  b804000000  MOV EAX,0x4
0069a4e8  84058c111d01  TEST byte ptr [0x011d118c],AL
0069a4ee  7518  JNZ 0x0069a508
0069a4f0  09058c111d01  OR dword ptr [0x011d118c],EAX
0069a4f6  68bc40ff00  PUSH 0xff40bc
0069a4fb  e8f05b1300  CALL 0x007d00f0
0069a500  83c404  ADD ESP,0x4
0069a503  a380111d01  MOV [0x011d1180],EAX
0069a508  33db  XOR EBX,EBX
0069a50a  8d4c241c  LEA ECX,[ESP + 0x1c]
0069a50e  895c2460  MOV dword ptr [ESP + 0x60],EBX
0069a512  895c2464  MOV dword ptr [ESP + 0x64],EBX
0069a516  895c2468  MOV dword ptr [ESP + 0x68],EBX
0069a51a  895c246c  MOV dword ptr [ESP + 0x6c],EBX
0069a51e  899c2488000000  MOV dword ptr [ESP + 0x88],EBX
0069a525  899c248c000000  MOV dword ptr [ESP + 0x8c],EBX
0069a52c  899c2490000000  MOV dword ptr [ESP + 0x90],EBX
0069a533  899c2494000000  MOV dword ptr [ESP + 0x94],EBX
0069a53a  899c24b0000000  MOV dword ptr [ESP + 0xb0],EBX
0069a541  899c24b4000000  MOV dword ptr [ESP + 0xb4],EBX
0069a548  899c24b8000000  MOV dword ptr [ESP + 0xb8],EBX
0069a54f  899c24bc000000  MOV dword ptr [ESP + 0xbc],EBX
0069a556  e8450b0400  CALL 0x006db0a0
0069a55b  8b8c24d4000000  MOV ECX,dword ptr [ESP + 0xd4]
0069a562  0f57c0  XORPS XMM0,XMM0
0069a565  8d542410  LEA EDX,[ESP + 0x10]
0069a569  8d442450  LEA EAX,[ESP + 0x50]
0069a56d  894c2424  MOV dword ptr [ESP + 0x24],ECX
0069a571  52  PUSH EDX
0069a572  8bce  MOV ECX,ESI
0069a574  895c2424  MOV dword ptr [ESP + 0x24],EBX
0069a578  89442420  MOV dword ptr [ESP + 0x20],EAX
0069a57c  c644243001  MOV byte ptr [ESP + 0x30],0x1
0069a581  f30f11442414  MOVSS dword ptr [ESP + 0x14],XMM0
0069a587  e834fcffff  CALL 0x0069a1c0
0069a58c  d95c2414  FSTP float ptr [ESP + 0x14]
0069a590  a188111d01  MOV EAX,[0x011d1188]
0069a595  8b5608  MOV EDX,dword ptr [ESI + 0x8]
0069a598  8d4c2414  LEA ECX,[ESP + 0x14]
0069a59c  89442454  MOV dword ptr [ESP + 0x54],EAX
0069a5a0  894c2470  MOV dword ptr [ESP + 0x70],ECX
0069a5a4  897c2474  MOV dword ptr [ESP + 0x74],EDI
0069a5a8  897c2450  MOV dword ptr [ESP + 0x50],EDI
0069a5ac  8b4238  MOV EAX,dword ptr [EDX + 0x38]
0069a5af  2500cf0000  AND EAX,0xcf00
0069a5b4  a900cf0000  TEST EAX,0xcf00
0069a5b9  8bcf  MOV ECX,EDI
0069a5bb  7505  JNZ 0x0069a5c2
0069a5bd  0d00010000  OR EAX,0x100
0069a5c2  2500cf0000  AND EAX,0xcf00
0069a5c7  3d00010000  CMP EAX,0x100
0069a5cc  7424  JZ 0x0069a5f2
0069a5ce  a184111d01  MOV EAX,[0x011d1184]
0069a5d3  8d4c2410  LEA ECX,[ESP + 0x10]
0069a5d7  898c2498000000  MOV dword ptr [ESP + 0x98],ECX
0069a5de  8944247c  MOV dword ptr [ESP + 0x7c],EAX
0069a5e2  89bc249c000000  MOV dword ptr [ESP + 0x9c],EDI
0069a5e9  897c2478  MOV dword ptr [ESP + 0x78],EDI
0069a5ed  b902000000  MOV ECX,0x2
0069a5f2  8b1580111d01  MOV EDX,dword ptr [0x011d1180]
0069a5f8  8bb424cc000000  MOV ESI,dword ptr [ESP + 0xcc]
0069a5ff  f30f10050c9a1501  MOVSS XMM0,dword ptr [0x01159a0c]
0069a607  f30f59054040ff00  MULSS XMM0,dword ptr [0x00ff4040]
0069a60f  8d0489  LEA EAX,[ECX + ECX*0x4]
0069a612  03c0  ADD EAX,EAX
0069a614  03c0  ADD EAX,EAX
0069a616  03c0  ADD EAX,EAX
0069a618  89540454  MOV dword ptr [ESP + EAX*0x1 + 0x54],EDX
0069a61c  83c101  ADD ECX,0x1
0069a61f  385e72  CMP byte ptr [ESI + 0x72],BL
0069a622  8d542418  LEA EDX,[ESP + 0x18]
0069a626  f30f11442418  MOVSS dword ptr [ESP + 0x18],XMM0
0069a62c  89540470  MOV dword ptr [ESP + EAX*0x1 + 0x70],EDX
0069a630  897c0474  MOV dword ptr [ESP + EAX*0x1 + 0x74],EDI
0069a634  897c0450  MOV dword ptr [ESP + EAX*0x1 + 0x50],EDI
0069a638  894c2420  MOV dword ptr [ESP + 0x20],ECX
0069a63c  895c240c  MOV dword ptr [ESP + 0xc],EBX
0069a640  747b  JZ 0x0069a6bd
0069a642  8b06  MOV EAX,dword ptr [ESI]
0069a644  8b10  MOV EDX,dword ptr [EAX]
0069a646  8bce  MOV ECX,ESI
0069a648  ffd2  CALL EDX
0069a64a  8b8424d8000000  MOV EAX,dword ptr [ESP + 0xd8]
0069a651  50  PUSH EAX
0069a652  8d4c2420  LEA ECX,[ESP + 0x20]
0069a656  51  PUSH ECX
0069a657  56  PUSH ESI
0069a658  8bce  MOV ECX,ESI
0069a65a  89742418  MOV dword ptr [ESP + 0x18],ESI
0069a65e  e80d0b0400  CALL 0x006db170
0069a663  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0069a667  8b9424d0000000  MOV EDX,dword ptr [ESP + 0xd0]
0069a66e  890a  MOV dword ptr [EDX],ECX
0069a670  8b01  MOV EAX,dword ptr [ECX]
0069a672  8b10  MOV EDX,dword ptr [EAX]
0069a674  ffd2  CALL EDX
0069a676  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0069a67a  3bcb  CMP ECX,EBX
0069a67c  7407  JZ 0x0069a685
0069a67e  8b01  MOV EAX,dword ptr [ECX]
0069a680  8b5004  MOV EDX,dword ptr [EAX + 0x4]
0069a683  ffd2  CALL EDX
0069a685  8b442438  MOV EAX,dword ptr [ESP + 0x38]
0069a689  8b4c2434  MOV ECX,dword ptr [ESP + 0x34]
0069a68d  50  PUSH EAX
0069a68e  51  PUSH ECX
0069a68f  8d4c2438  LEA ECX,[ESP + 0x38]
0069a693  e848450a00  CALL 0x0073ebe0
0069a698  397c2438  CMP dword ptr [ESP + 0x38],EDI
0069a69c  895c243c  MOV dword ptr [ESP + 0x3c],EBX
0069a6a0  760d  JBE 0x0069a6af
0069a6a2  8b542434  MOV EDX,dword ptr [ESP + 0x34]
0069a6a6  52  PUSH EDX
0069a6a7  e8349ee4ff  CALL 0x004e44e0
0069a6ac  83c404  ADD ESP,0x4
0069a6af  5f  POP EDI
0069a6b0  5e  POP ESI
0069a6b1  b001  MOV AL,0x1
0069a6b3  5b  POP EBX
0069a6b4  81c4bc000000  ADD ESP,0xbc
0069a6ba  c21000  RET 0x10
0069a6bd  8b9424d8000000  MOV EDX,dword ptr [ESP + 0xd8]
0069a6c4  52  PUSH EDX
0069a6c5  8d442420  LEA EAX,[ESP + 0x20]
0069a6c9  50  PUSH EAX
0069a6ca  8d4c2414  LEA ECX,[ESP + 0x14]
0069a6ce  51  PUSH ECX
0069a6cf  8bce  MOV ECX,ESI
0069a6d1  e8fa0c0400  CALL 0x006db3d0
0069a6d6  84c0  TEST AL,AL
0069a6d8  7589  JNZ 0x0069a663
0069a6da  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
0069a6de  3bcb  CMP ECX,EBX
0069a6e0  7407  JZ 0x0069a6e9
0069a6e2  8b11  MOV EDX,dword ptr [ECX]
0069a6e4  8b4204  MOV EAX,dword ptr [EDX + 0x4]
0069a6e7  ffd0  CALL EAX
0069a6e9  8b4c2438  MOV ECX,dword ptr [ESP + 0x38]
0069a6ed  8b542434  MOV EDX,dword ptr [ESP + 0x34]
0069a6f1  51  PUSH ECX
0069a6f2  52  PUSH EDX
0069a6f3  8d4c2438  LEA ECX,[ESP + 0x38]
0069a6f7  e8e4440a00  CALL 0x0073ebe0
0069a6fc  397c2438  CMP dword ptr [ESP + 0x38],EDI
0069a700  895c243c  MOV dword ptr [ESP + 0x3c],EBX
0069a704  760d  JBE 0x0069a713
0069a706  8b442434  MOV EAX,dword ptr [ESP + 0x34]
0069a70a  50  PUSH EAX
0069a70b  e8d09de4ff  CALL 0x004e44e0
0069a710  83c404  ADD ESP,0x4
0069a713  5f  POP EDI
0069a714  5e  POP ESI
0069a715  32c0  XOR AL,AL
0069a717  5b  POP EBX
0069a718  81c4bc000000  ADD ESP,0xbc
0069a71e  c21000  RET 0x10
