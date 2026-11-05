# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: void LotFloorFeatures_SetTile(void * this, char * location, byte flags, byte set, ushort mask)
Owned ranges: [[00abb5f0, 00abbac8]]

00abb5f0  83ec0c  SUB ESP,0xc
00abb5f3  53  PUSH EBX
00abb5f4  8b5c2414  MOV EBX,dword ptr [ESP + 0x14]
00abb5f8  0fbe03  MOVSX EAX,byte ptr [EBX]
00abb5fb  85c0  TEST EAX,EAX
00abb5fd  56  PUSH ESI
00abb5fe  8bf1  MOV ESI,ECX
00abb600  0fbe4b01  MOVSX ECX,byte ptr [EBX + 0x1]
00abb604  0f8ca5040000  JL 0x00abbaaf
00abb60a  3b8674010000  CMP EAX,dword ptr [ESI + 0x174]
00abb610  0f8d99040000  JGE 0x00abbaaf
00abb616  85c9  TEST ECX,ECX
00abb618  0f8c91040000  JL 0x00abbaaf
00abb61e  3b8e78010000  CMP ECX,dword ptr [ESI + 0x178]
00abb624  0f8d85040000  JGE 0x00abbaaf
00abb62a  0fbe4302  MOVSX EAX,byte ptr [EBX + 0x2]
00abb62e  3b867c010000  CMP EAX,dword ptr [ESI + 0x17c]
00abb634  0f8c75040000  JL 0x00abbaaf
00abb63a  3b8680010000  CMP EAX,dword ptr [ESI + 0x180]
00abb640  0f8f69040000  JG 0x00abbaaf
00abb646  807c242000  CMP byte ptr [ESP + 0x20],0x0
00abb64b  0f84e6000000  JZ 0x00abb737
00abb651  83be9c02000000  CMP dword ptr [ESI + 0x29c],0x0
00abb658  0f85d9000000  JNZ 0x00abb737
00abb65e  6a00  PUSH 0x0
00abb660  6a00  PUSH 0x0
00abb662  6a00  PUSH 0x0
00abb664  6a00  PUSH 0x0
00abb666  6840320601  PUSH 0x1063240
00abb66b  6a20  PUSH 0x20
00abb66d  e88e8ea2ff  CALL 0x004e4500
00abb672  83c418  ADD ESP,0x18
00abb675  85c0  TEST EAX,EAX
00abb677  740e  JZ 0x00abb687
00abb679  6840320601  PUSH 0x1063240
00abb67e  8bc8  MOV ECX,EAX
00abb680  e8db59fcff  CALL 0x00a81060
00abb685  eb02  JMP 0x00abb689
00abb687  33c0  XOR EAX,EAX
00abb689  85c0  TEST EAX,EAX
00abb68b  89869c020000  MOV dword ptr [ESI + 0x29c],EAX
00abb691  0f8418040000  JZ 0x00abbaaf
00abb697  8b8e84010000  MOV ECX,dword ptr [ESI + 0x184]
00abb69d  8b9678010000  MOV EDX,dword ptr [ESI + 0x178]
00abb6a3  51  PUSH ECX
00abb6a4  8b8e74010000  MOV ECX,dword ptr [ESI + 0x174]
00abb6aa  52  PUSH EDX
00abb6ab  51  PUSH ECX
00abb6ac  8bc8  MOV ECX,EAX
00abb6ae  e88d211b00  CALL 0x00c6d840
00abb6b3  8b869c020000  MOV EAX,dword ptr [ESI + 0x29c]
00abb6b9  8b4810  MOV ECX,dword ptr [EAX + 0x10]
00abb6bc  8b5014  MOV EDX,dword ptr [EAX + 0x14]
00abb6bf  2bd1  SUB EDX,ECX
00abb6c1  52  PUSH EDX
00abb6c2  6a00  PUSH 0x0
00abb6c4  51  PUSH ECX
00abb6c5  e8ce3b4c00  CALL 0x00f7f298
00abb6ca  6a00  PUSH 0x0
00abb6cc  6a00  PUSH 0x0
00abb6ce  6a00  PUSH 0x0
00abb6d0  6a00  PUSH 0x0
00abb6d2  6824320601  PUSH 0x1063224
00abb6d7  6a20  PUSH 0x20
00abb6d9  e8228ea2ff  CALL 0x004e4500
00abb6de  83c424  ADD ESP,0x24
00abb6e1  85c0  TEST EAX,EAX
00abb6e3  740e  JZ 0x00abb6f3
00abb6e5  6824320601  PUSH 0x1063224
00abb6ea  8bc8  MOV ECX,EAX
00abb6ec  e89f59fcff  CALL 0x00a81090
00abb6f1  eb02  JMP 0x00abb6f5
00abb6f3  33c0  XOR EAX,EAX
00abb6f5  85c0  TEST EAX,EAX
00abb6f7  8986a0020000  MOV dword ptr [ESI + 0x2a0],EAX
00abb6fd  0f84ac030000  JZ 0x00abbaaf
00abb703  8b8e84010000  MOV ECX,dword ptr [ESI + 0x184]
00abb709  8b9678010000  MOV EDX,dword ptr [ESI + 0x178]
00abb70f  51  PUSH ECX
00abb710  8b8e74010000  MOV ECX,dword ptr [ESI + 0x174]
00abb716  52  PUSH EDX
00abb717  51  PUSH ECX
00abb718  8bc8  MOV ECX,EAX
00abb71a  e821211b00  CALL 0x00c6d840
00abb71f  8b8ea0020000  MOV ECX,dword ptr [ESI + 0x2a0]
00abb725  8d542410  LEA EDX,[ESP + 0x10]
00abb729  52  PUSH EDX
00abb72a  c7442414ffff0000  MOV dword ptr [ESP + 0x14],0xffff
00abb732  e88959fcff  CALL 0x00a810c0
00abb737  8b869c020000  MOV EAX,dword ptr [ESI + 0x29c]
00abb73d  85c0  TEST EAX,EAX
00abb73f  55  PUSH EBP
00abb740  57  PUSH EDI
00abb741  c644241200  MOV byte ptr [ESP + 0x12],0x0
00abb746  c644241300  MOV byte ptr [ESP + 0x13],0x0
00abb74b  c644241400  MOV byte ptr [ESP + 0x14],0x0
00abb750  c644241500  MOV byte ptr [ESP + 0x15],0x0
00abb755  c644241600  MOV byte ptr [ESP + 0x16],0x0
00abb75a  c644241700  MOV byte ptr [ESP + 0x17],0x0
00abb75f  0f848b010000  JZ 0x00abb8f0
00abb765  0fbe7b02  MOVSX EDI,byte ptr [EBX + 0x2]
00abb769  2bbe7c010000  SUB EDI,dword ptr [ESI + 0x17c]
00abb76f  8b4804  MOV ECX,dword ptr [EAX + 0x4]
00abb772  0fbe2b  MOVSX EBP,byte ptr [EBX]
00abb775  0fafcf  IMUL ECX,EDI
00abb778  0fbe5301  MOVSX EDX,byte ptr [EBX + 0x1]
00abb77c  03cd  ADD ECX,EBP
00abb77e  0faf4808  IMUL ECX,dword ptr [EAX + 0x8]
00abb782  034810  ADD ECX,dword ptr [EAX + 0x10]
00abb785  8a0c11  MOV CL,byte ptr [ECX + EDX*0x1]
00abb788  884c2411  MOV byte ptr [ESP + 0x11],CL
00abb78c  8b8ea0020000  MOV ECX,dword ptr [ESI + 0x2a0]
00abb792  8b5904  MOV EBX,dword ptr [ECX + 0x4]
00abb795  0fafdf  IMUL EBX,EDI
00abb798  03dd  ADD EBX,EBP
00abb79a  0faf5908  IMUL EBX,dword ptr [ECX + 0x8]
00abb79e  03da  ADD EBX,EDX
00abb7a0  807c242800  CMP byte ptr [ESP + 0x28],0x0
00abb7a5  8b5110  MOV EDX,dword ptr [ECX + 0x10]
00abb7a8  0fb70c5a  MOVZX ECX,word ptr [EDX + EBX*0x2]
00abb7ac  894c2418  MOV dword ptr [ESP + 0x18],ECX
00abb7b0  0fb7d1  MOVZX EDX,CX
00abb7b3  8a4c2424  MOV CL,byte ptr [ESP + 0x24]
00abb7b7  7426  JZ 0x00abb7df
00abb7b9  0a4c2411  OR CL,byte ptr [ESP + 0x11]
00abb7bd  f644242401  TEST byte ptr [ESP + 0x24],0x1
00abb7c2  742d  JZ 0x00abb7f1
00abb7c4  f644241101  TEST byte ptr [ESP + 0x11],0x1
00abb7c9  740d  JZ 0x00abb7d8
00abb7cb  8b542418  MOV EDX,dword ptr [ESP + 0x18]
00abb7cf  0b54242c  OR EDX,dword ptr [ESP + 0x2c]
00abb7d3  0fb7d2  MOVZX EDX,DX
00abb7d6  eb19  JMP 0x00abb7f1
00abb7d8  0fb754242c  MOVZX EDX,word ptr [ESP + 0x2c]
00abb7dd  eb12  JMP 0x00abb7f1
00abb7df  f6d1  NOT CL
00abb7e1  224c2411  AND CL,byte ptr [ESP + 0x11]
00abb7e5  f644242401  TEST byte ptr [ESP + 0x24],0x1
00abb7ea  7405  JZ 0x00abb7f1
00abb7ec  baffff0000  MOV EDX,0xffff
00abb7f1  8b5804  MOV EBX,dword ptr [EAX + 0x4]
00abb7f4  0fafdf  IMUL EBX,EDI
00abb7f7  03dd  ADD EBX,EBP
00abb7f9  0faf5808  IMUL EBX,dword ptr [EAX + 0x8]
00abb7fd  035810  ADD EBX,dword ptr [EAX + 0x10]
00abb800  8beb  MOV EBP,EBX
00abb802  8b5c2420  MOV EBX,dword ptr [ESP + 0x20]
00abb806  0fbe4301  MOVSX EAX,byte ptr [EBX + 0x1]
00abb80a  880c28  MOV byte ptr [EAX + EBP*0x1],CL
00abb80d  8b86a0020000  MOV EAX,dword ptr [ESI + 0x2a0]
00abb813  8b6804  MOV EBP,dword ptr [EAX + 0x4]
00abb816  0fafef  IMUL EBP,EDI
00abb819  0fbe3b  MOVSX EDI,byte ptr [EBX]
00abb81c  03ef  ADD EBP,EDI
00abb81e  0faf6808  IMUL EBP,dword ptr [EAX + 0x8]
00abb822  0fbe7b01  MOVSX EDI,byte ptr [EBX + 0x1]
00abb826  8b4010  MOV EAX,dword ptr [EAX + 0x10]
00abb829  03ef  ADD EBP,EDI
00abb82b  66891468  MOV word ptr [EAX + EBP*0x2],DX
00abb82f  8a442411  MOV AL,byte ptr [ESP + 0x11]
00abb833  2401  AND AL,0x1
00abb835  740c  JZ 0x00abb843
00abb837  f6c101  TEST CL,0x1
00abb83a  7507  JNZ 0x00abb843
00abb83c  c644241301  MOV byte ptr [ESP + 0x13],0x1
00abb841  eb15  JMP 0x00abb858
00abb843  84c0  TEST AL,AL
00abb845  7407  JZ 0x00abb84e
00abb847  6639542418  CMP word ptr [ESP + 0x18],DX
00abb84c  740a  JZ 0x00abb858
00abb84e  f6c101  TEST CL,0x1
00abb851  7405  JZ 0x00abb858
00abb853  c644241201  MOV byte ptr [ESP + 0x12],0x1
00abb858  8a542411  MOV DL,byte ptr [ESP + 0x11]
00abb85c  8ac2  MOV AL,DL
00abb85e  2402  AND AL,0x2
00abb860  740c  JZ 0x00abb86e
00abb862  f6c102  TEST CL,0x2
00abb865  7507  JNZ 0x00abb86e
00abb867  c644241501  MOV byte ptr [ESP + 0x15],0x1
00abb86c  eb0e  JMP 0x00abb87c
00abb86e  84c0  TEST AL,AL
00abb870  750a  JNZ 0x00abb87c
00abb872  f6c102  TEST CL,0x2
00abb875  7405  JZ 0x00abb87c
00abb877  c644241401  MOV byte ptr [ESP + 0x14],0x1
00abb87c  8ac2  MOV AL,DL
00abb87e  2408  AND AL,0x8
00abb880  740c  JZ 0x00abb88e
00abb882  f6c108  TEST CL,0x8
00abb885  7507  JNZ 0x00abb88e
00abb887  c644241701  MOV byte ptr [ESP + 0x17],0x1
00abb88c  eb0e  JMP 0x00abb89c
00abb88e  84c0  TEST AL,AL
00abb890  750a  JNZ 0x00abb89c
00abb892  f6c108  TEST CL,0x8
00abb895  7405  JZ 0x00abb89c
00abb897  c644241601  MOV byte ptr [ESP + 0x16],0x1
00abb89c  84d2  TEST DL,DL
00abb89e  7450  JZ 0x00abb8f0
00abb8a0  84c9  TEST CL,CL
00abb8a2  754c  JNZ 0x00abb8f0
00abb8a4  8b8e9c020000  MOV ECX,dword ptr [ESI + 0x29c]
00abb8aa  8b5114  MOV EDX,dword ptr [ECX + 0x14]
00abb8ad  8b4110  MOV EAX,dword ptr [ECX + 0x10]
00abb8b0  3bc2  CMP EAX,EDX
00abb8b2  7410  JZ 0x00abb8c4
00abb8b4  803800  CMP byte ptr [EAX],0x0
00abb8b7  7507  JNZ 0x00abb8c0
00abb8b9  83c001  ADD EAX,0x1
00abb8bc  3bc2  CMP EAX,EDX
00abb8be  75f4  JNZ 0x00abb8b4
00abb8c0  3bc2  CMP EAX,EDX
00abb8c2  752c  JNZ 0x00abb8f0
00abb8c4  33ff  XOR EDI,EDI
00abb8c6  3bcf  CMP ECX,EDI
00abb8c8  7408  JZ 0x00abb8d2
00abb8ca  8b11  MOV EDX,dword ptr [ECX]
00abb8cc  8b02  MOV EAX,dword ptr [EDX]
00abb8ce  6a01  PUSH 0x1
00abb8d0  ffd0  CALL EAX
00abb8d2  8b8ea0020000  MOV ECX,dword ptr [ESI + 0x2a0]
00abb8d8  3bcf  CMP ECX,EDI
00abb8da  89be9c020000  MOV dword ptr [ESI + 0x29c],EDI
00abb8e0  7408  JZ 0x00abb8ea
00abb8e2  8b11  MOV EDX,dword ptr [ECX]
00abb8e4  8b02  MOV EAX,dword ptr [EDX]
00abb8e6  6a01  PUSH 0x1
00abb8e8  ffd0  CALL EAX
00abb8ea  89bea0020000  MOV dword ptr [ESI + 0x2a0],EDI
00abb8f0  e8fb0b99ff  CALL 0x0044c4f0
00abb8f5  8be8  MOV EBP,EAX
00abb8f7  85ed  TEST EBP,EBP
00abb8f9  0f84ae010000  JZ 0x00abbaad
00abb8ff  807c241200  CMP byte ptr [ESP + 0x12],0x0
00abb904  750b  JNZ 0x00abb911
00abb906  807c241300  CMP byte ptr [ESP + 0x13],0x0
00abb90b  0f8482000000  JZ 0x00abb993
00abb911  6a18  PUSH 0x18
00abb913  e838380200  CALL 0x00adf150
00abb918  83c404  ADD ESP,0x4
00abb91b  85c0  TEST EAX,EAX
00abb91d  0f8494010000  JZ 0x00abbab7
00abb923  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abb929  33c9  XOR ECX,ECX
00abb92b  8d5004  LEA EDX,[EAX + 0x4]
00abb92e  870a  XCHG dword ptr [EDX],ECX
00abb930  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abb936  c64010ff  MOV byte ptr [EAX + 0x10],0xff
00abb93a  c64011ff  MOV byte ptr [EAX + 0x11],0xff
00abb93e  c6401200  MOV byte ptr [EAX + 0x12],0x0
00abb942  8b10  MOV EDX,dword ptr [EAX]
00abb944  8bf8  MOV EDI,EAX
00abb946  8bc8  MOV ECX,EAX
00abb948  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00abb94b  ffd0  CALL EAX
00abb94d  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00abb950  894f08  MOV dword ptr [EDI + 0x8],ECX
00abb953  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00abb956  89570c  MOV dword ptr [EDI + 0xc],EDX
00abb959  0fb703  MOVZX EAX,word ptr [EBX]
00abb95c  8a542428  MOV DL,byte ptr [ESP + 0x28]
00abb960  66894710  MOV word ptr [EDI + 0x10],AX
00abb964  8a4b02  MOV CL,byte ptr [EBX + 0x2]
00abb967  668b44242c  MOV AX,word ptr [ESP + 0x2c]
00abb96c  6a00  PUSH 0x0
00abb96e  6a00  PUSH 0x0
00abb970  884f12  MOV byte ptr [EDI + 0x12],CL
00abb973  66894714  MOV word ptr [EDI + 0x14],AX
00abb977  885716  MOV byte ptr [EDI + 0x16],DL
00abb97a  8b5500  MOV EDX,dword ptr [EBP]
00abb97d  8b421c  MOV EAX,dword ptr [EDX + 0x1c]
00abb980  57  PUSH EDI
00abb981  68cfdc3d14  PUSH 0x143ddccf
00abb986  8bcd  MOV ECX,EBP
00abb988  ffd0  CALL EAX
00abb98a  8b17  MOV EDX,dword ptr [EDI]
00abb98c  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00abb98f  8bcf  MOV ECX,EDI
00abb991  ffd0  CALL EAX
00abb993  807c241400  CMP byte ptr [ESP + 0x14],0x0
00abb998  7507  JNZ 0x00abb9a1
00abb99a  807c241500  CMP byte ptr [ESP + 0x15],0x0
00abb99f  747f  JZ 0x00abba20
00abb9a1  6a18  PUSH 0x18
00abb9a3  e8a8370200  CALL 0x00adf150
00abb9a8  83c404  ADD ESP,0x4
00abb9ab  85c0  TEST EAX,EAX
00abb9ad  0f840b010000  JZ 0x00abbabe
00abb9b3  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abb9b9  33c9  XOR ECX,ECX
00abb9bb  8d5004  LEA EDX,[EAX + 0x4]
00abb9be  870a  XCHG dword ptr [EDX],ECX
00abb9c0  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abb9c6  c64010ff  MOV byte ptr [EAX + 0x10],0xff
00abb9ca  c64011ff  MOV byte ptr [EAX + 0x11],0xff
00abb9ce  c6401200  MOV byte ptr [EAX + 0x12],0x0
00abb9d2  8b10  MOV EDX,dword ptr [EAX]
00abb9d4  8bf8  MOV EDI,EAX
00abb9d6  8bc8  MOV ECX,EAX
00abb9d8  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00abb9db  ffd0  CALL EAX
00abb9dd  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00abb9e0  894f08  MOV dword ptr [EDI + 0x8],ECX
00abb9e3  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00abb9e6  89570c  MOV dword ptr [EDI + 0xc],EDX
00abb9e9  668b03  MOV AX,word ptr [EBX]
00abb9ec  8a542428  MOV DL,byte ptr [ESP + 0x28]
00abb9f0  66894710  MOV word ptr [EDI + 0x10],AX
00abb9f4  8a4b02  MOV CL,byte ptr [EBX + 0x2]
00abb9f7  6a00  PUSH 0x0
00abb9f9  6a00  PUSH 0x0
00abb9fb  884f12  MOV byte ptr [EDI + 0x12],CL
00abb9fe  885716  MOV byte ptr [EDI + 0x16],DL
00abba01  66c74714ffff  MOV word ptr [EDI + 0x14],0xffff
00abba07  8b4500  MOV EAX,dword ptr [EBP]
00abba0a  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
00abba0d  57  PUSH EDI
00abba0e  6810f0f10c  PUSH 0xcf1f010
00abba13  8bcd  MOV ECX,EBP
00abba15  ffd2  CALL EDX
00abba17  8b07  MOV EAX,dword ptr [EDI]
00abba19  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00abba1c  8bcf  MOV ECX,EDI
00abba1e  ffd2  CALL EDX
00abba20  807c241600  CMP byte ptr [ESP + 0x16],0x0
00abba25  7507  JNZ 0x00abba2e
00abba27  807c241700  CMP byte ptr [ESP + 0x17],0x0
00abba2c  747f  JZ 0x00abbaad
00abba2e  6a18  PUSH 0x18
00abba30  e81b370200  CALL 0x00adf150
00abba35  83c404  ADD ESP,0x4
00abba38  85c0  TEST EAX,EAX
00abba3a  0f8485000000  JZ 0x00abbac5
00abba40  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abba46  33c9  XOR ECX,ECX
00abba48  8d5004  LEA EDX,[EAX + 0x4]
00abba4b  870a  XCHG dword ptr [EDX],ECX
00abba4d  c7008c5f0601  MOV dword ptr [EAX],0x1065f8c
00abba53  c64010ff  MOV byte ptr [EAX + 0x10],0xff
00abba57  c64011ff  MOV byte ptr [EAX + 0x11],0xff
00abba5b  c6401200  MOV byte ptr [EAX + 0x12],0x0
00abba5f  8b10  MOV EDX,dword ptr [EAX]
00abba61  8bf8  MOV EDI,EAX
00abba63  8bc8  MOV ECX,EAX
00abba65  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00abba68  ffd0  CALL EAX
00abba6a  8b4e48  MOV ECX,dword ptr [ESI + 0x48]
00abba6d  894f08  MOV dword ptr [EDI + 0x8],ECX
00abba70  8b564c  MOV EDX,dword ptr [ESI + 0x4c]
00abba73  89570c  MOV dword ptr [EDI + 0xc],EDX
00abba76  668b03  MOV AX,word ptr [EBX]
00abba79  8a542428  MOV DL,byte ptr [ESP + 0x28]
00abba7d  66894710  MOV word ptr [EDI + 0x10],AX
00abba81  8a4b02  MOV CL,byte ptr [EBX + 0x2]
00abba84  6a00  PUSH 0x0
00abba86  6a00  PUSH 0x0
00abba88  884f12  MOV byte ptr [EDI + 0x12],CL
00abba8b  885716  MOV byte ptr [EDI + 0x16],DL
00abba8e  66c74714ffff  MOV word ptr [EDI + 0x14],0xffff
00abba94  8b4500  MOV EAX,dword ptr [EBP]
00abba97  8b501c  MOV EDX,dword ptr [EAX + 0x1c]
00abba9a  57  PUSH EDI
00abba9b  68572b5906  PUSH 0x6592b57
00abbaa0  8bcd  MOV ECX,EBP
00abbaa2  ffd2  CALL EDX
00abbaa4  8b07  MOV EAX,dword ptr [EDI]
00abbaa6  8b5008  MOV EDX,dword ptr [EAX + 0x8]
00abbaa9  8bcf  MOV ECX,EDI
00abbaab  ffd2  CALL EDX
00abbaad  5f  POP EDI
00abbaae  5d  POP EBP
00abbaaf  5e  POP ESI
00abbab0  5b  POP EBX
00abbab1  83c40c  ADD ESP,0xc
00abbab4  c21000  RET 0x10
00abbab7  33ff  XOR EDI,EDI
00abbab9  e98ffeffff  JMP 0x00abb94d
00abbabe  33ff  XOR EDI,EDI
00abbac0  e918ffffff  JMP 0x00abb9dd
00abbac5  33ff  XOR EDI,EDI
00abbac7  eba1  JMP 0x00abba6a
