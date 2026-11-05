# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC 1.67 TS3W.exe, complete Ghidra-owned Listing.
Signature: undefined4 Polygon_TriangulateContourSet(void * this, int * param_1, int * param_2, int * param_3, uint * param_4)
Owned ranges: [[00b5b5b0, 00b5b657] [00b5b660, 00b5b7d9] [00b5b7e0, 00b5bb2b]]

00b5b5b0  8b442404  MOV EAX,dword ptr [ESP + 0x4]
00b5b5b4  83ec68  SUB ESP,0x68
00b5b5b7  56  PUSH ESI
00b5b5b8  8bf1  MOV ESI,ECX
00b5b5ba  8b08  MOV ECX,dword ptr [EAX]
00b5b5bc  3b4804  CMP ECX,dword ptr [EAX + 0x4]
00b5b5bf  0f845e050000  JZ 0x00b5bb23
00b5b5c5  8b442474  MOV EAX,dword ptr [ESP + 0x74]
00b5b5c9  8b08  MOV ECX,dword ptr [EAX]
00b5b5cb  8b4004  MOV EAX,dword ptr [EAX + 0x4]
00b5b5ce  3bc8  CMP ECX,EAX
00b5b5d0  0f844d050000  JZ 0x00b5bb23
00b5b5d6  53  PUSH EBX
00b5b5d7  55  PUSH EBP
00b5b5d8  2bc1  SUB EAX,ECX
00b5b5da  57  PUSH EDI
00b5b5db  c1f803  SAR EAX,0x3
00b5b5de  8d54242c  LEA EDX,[ESP + 0x2c]
00b5b5e2  33db  XOR EBX,EBX
00b5b5e4  8be8  MOV EBP,EAX
00b5b5e6  52  PUSH EDX
00b5b5e7  55  PUSH EBP
00b5b5e8  8d4c2454  LEA ECX,[ESP + 0x54]
00b5b5ec  895c2444  MOV dword ptr [ESP + 0x44],EBX
00b5b5f0  895c2448  MOV dword ptr [ESP + 0x48],EBX
00b5b5f4  895c244c  MOV dword ptr [ESP + 0x4c],EBX
00b5b5f8  c7442450dce90601  MOV dword ptr [ESP + 0x50],0x106e9dc
00b5b600  c7442434b8e90601  MOV dword ptr [ESP + 0x34],0x106e9b8
00b5b608  e873c6ffff  CALL 0x00b57c80
00b5b60d  6aff  PUSH -0x1
00b5b60f  8d4c2418  LEA ECX,[ESP + 0x18]
00b5b613  e8d8f399ff  CALL 0x004fa9f0
00b5b618  33c0  XOR EAX,EAX
00b5b61a  89442460  MOV dword ptr [ESP + 0x60],EAX
00b5b61e  89442464  MOV dword ptr [ESP + 0x64],EAX
00b5b622  89442468  MOV dword ptr [ESP + 0x68],EAX
00b5b626  8944246c  MOV dword ptr [ESP + 0x6c],EAX
00b5b62a  8d442460  LEA EAX,[ESP + 0x60]
00b5b62e  8bc8  MOV ECX,EAX
00b5b630  33ff  XOR EDI,EDI
00b5b632  3beb  CMP EBP,EBX
00b5b634  c744247498e90601  MOV dword ptr [ESP + 0x74],0x106e998
00b5b63c  89442460  MOV dword ptr [ESP + 0x60],EAX
00b5b640  894c2464  MOV dword ptr [ESP + 0x64],ECX
00b5b644  895c2468  MOV dword ptr [ESP + 0x68],EBX
00b5b648  885c246c  MOV byte ptr [ESP + 0x6c],BL
00b5b64c  895c2470  MOV dword ptr [ESP + 0x70],EBX
00b5b650  0f8ea7000000  JLE 0x00b5b6fd
00b5b656  eb08  JMP 0x00b5b660
00b5b658  8da4240000000090  .byte 8da4240000000090 ; NONOWNED envelope gap bytes
00b5b660  8b942480000000  MOV EDX,dword ptr [ESP + 0x80]
00b5b667  8b02  MOV EAX,dword ptr [EDX]
00b5b669  8b0cf8  MOV ECX,dword ptr [EAX + EDI*0x8]
00b5b66c  8b54f804  MOV EDX,dword ptr [EAX + EDI*0x8 + 0x4]
00b5b670  894c2430  MOV dword ptr [ESP + 0x30],ECX
00b5b674  8d442430  LEA EAX,[ESP + 0x30]
00b5b678  50  PUSH EAX
00b5b679  8d4c243c  LEA ECX,[ESP + 0x3c]
00b5b67d  51  PUSH ECX
00b5b67e  8d4c2464  LEA ECX,[ESP + 0x64]
00b5b682  8954243c  MOV dword ptr [ESP + 0x3c],EDX
00b5b686  e8a5bfffff  CALL 0x00b57630
00b5b68b  8d542460  LEA EDX,[ESP + 0x60]
00b5b68f  3910  CMP dword ptr [EAX],EDX
00b5b691  7430  JZ 0x00b5b6c3
00b5b693  8d4c2414  LEA ECX,[ESP + 0x14]
00b5b697  e8c4f399ff  CALL 0x004faa60
00b5b69c  dc0dd0670301  FMUL double ptr [0x010367d0]
00b5b6a2  8d4c2414  LEA ECX,[ESP + 0x14]
00b5b6a6  d8442430  FADD float ptr [ESP + 0x30]
00b5b6aa  d95c2430  FSTP float ptr [ESP + 0x30]
00b5b6ae  e8adf399ff  CALL 0x004faa60
00b5b6b3  dc0dd0670301  FMUL double ptr [0x010367d0]
00b5b6b9  d8442434  FADD float ptr [ESP + 0x34]
00b5b6bd  d95c2434  FSTP float ptr [ESP + 0x34]
00b5b6c1  eb1c  JMP 0x00b5b6df
00b5b6c3  885c242c  MOV byte ptr [ESP + 0x2c],BL
00b5b6c7  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00b5b6cb  50  PUSH EAX
00b5b6cc  8d4c2434  LEA ECX,[ESP + 0x34]
00b5b6d0  51  PUSH ECX
00b5b6d1  8d54242c  LEA EDX,[ESP + 0x2c]
00b5b6d5  52  PUSH EDX
00b5b6d6  8d4c2468  LEA ECX,[ESP + 0x68]
00b5b6da  e801c6ffff  CALL 0x00b57ce0
00b5b6df  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00b5b6e3  8b4c2430  MOV ECX,dword ptr [ESP + 0x30]
00b5b6e7  8b542434  MOV EDX,dword ptr [ESP + 0x34]
00b5b6eb  890cf8  MOV dword ptr [EAX + EDI*0x8],ECX
00b5b6ee  8954f804  MOV dword ptr [EAX + EDI*0x8 + 0x4],EDX
00b5b6f2  83c701  ADD EDI,0x1
00b5b6f5  3bfd  CMP EDI,EBP
00b5b6f7  0f8c63ffffff  JL 0x00b5b660
00b5b6fd  8b44247c  MOV EAX,dword ptr [ESP + 0x7c]
00b5b701  8b6804  MOV EBP,dword ptr [EAX + 0x4]
00b5b704  2b28  SUB EBP,dword ptr [EAX]
00b5b706  8b442450  MOV EAX,dword ptr [ESP + 0x50]
00b5b70a  2b44244c  SUB EAX,dword ptr [ESP + 0x4c]
00b5b70e  c1fd02  SAR EBP,0x2
00b5b711  c1f803  SAR EAX,0x3
00b5b714  89442430  MOV dword ptr [ESP + 0x30],EAX
00b5b718  8d4cad00  LEA ECX,[EBP + EBP*0x4]
00b5b71c  8d0448  LEA EAX,[EAX + ECX*0x2]
00b5b71f  8d0440  LEA EAX,[EAX + EAX*0x2]
00b5b722  3bc3  CMP EAX,EBX
00b5b724  896c2424  MOV dword ptr [ESP + 0x24],EBP
00b5b728  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00b5b72c  7616  JBE 0x00b5b744
00b5b72e  8d54242c  LEA EDX,[ESP + 0x2c]
00b5b732  52  PUSH EDX
00b5b733  50  PUSH EAX
00b5b734  53  PUSH EBX
00b5b735  8d4c2448  LEA ECX,[ESP + 0x48]
00b5b739  e80292b8ff  CALL 0x006e4940
00b5b73e  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00b5b742  eb24  JMP 0x00b5b768
00b5b744  53  PUSH EBX
00b5b745  8d3c8500000000  LEA EDI,[EAX*0x4 + 0x0]
00b5b74c  53  PUSH EBX
00b5b74d  57  PUSH EDI
00b5b74e  ff158866f900  CALL dword ptr [0x00f96688]
00b5b754  f7df  NEG EDI
00b5b756  c1ff02  SAR EDI,0x2
00b5b759  f7df  NEG EDI
00b5b75b  03ff  ADD EDI,EDI
00b5b75d  83c40c  ADD ESP,0xc
00b5b760  03ff  ADD EDI,EDI
00b5b762  8bcf  MOV ECX,EDI
00b5b764  894c2440  MOV dword ptr [ESP + 0x40],ECX
00b5b768  2b4c243c  SUB ECX,dword ptr [ESP + 0x3c]
00b5b76c  b8abaaaaaa  MOV EAX,0xaaaaaaab
00b5b771  c1f902  SAR ECX,0x2
00b5b774  f7e1  MUL ECX
00b5b776  d1ea  SHR EDX,0x1
00b5b778  89969c000000  MOV dword ptr [ESI + 0x9c],EDX
00b5b77e  bf01000000  MOV EDI,0x1
00b5b783  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00b5b787  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00b5b78b  50  PUSH EAX
00b5b78c  8bce  MOV ECX,ESI
00b5b78e  e86df6ffff  CALL 0x00b5ae00
00b5b793  33c0  XOR EAX,EAX
00b5b795  3beb  CMP EBP,EBX
00b5b797  89442420  MOV dword ptr [ESP + 0x20],EAX
00b5b79b  0f86fd000000  JBE 0x00b5b89e
00b5b7a1  8b4c247c  MOV ECX,dword ptr [ESP + 0x7c]
00b5b7a5  8b11  MOV EDX,dword ptr [ECX]
00b5b7a7  8b0c82  MOV ECX,dword ptr [EDX + EAX*0x4]
00b5b7aa  3bcb  CMP ECX,EBX
00b5b7ac  8d6c39ff  LEA EBP,[ECX + EDI*0x1 + -0x1]
00b5b7b0  897c2418  MOV dword ptr [ESP + 0x18],EDI
00b5b7b4  896c2438  MOV dword ptr [ESP + 0x38],EBP
00b5b7b8  0f86cb000000  JBE 0x00b5b889
00b5b7be  8b5c244c  MOV EBX,dword ptr [ESP + 0x4c]
00b5b7c2  8d04ff  LEA EAX,[EDI + EDI*0x8]
00b5b7c5  03c0  ADD EAX,EAX
00b5b7c7  8d5cfbfc  LEA EBX,[EBX + EDI*0x8 + -0x4]
00b5b7cb  03c0  ADD EAX,EAX
00b5b7cd  8d5701  LEA EDX,[EDI + 0x1]
00b5b7d0  895c2410  MOV dword ptr [ESP + 0x10],EBX
00b5b7d4  894c241c  MOV dword ptr [ESP + 0x1c],ECX
00b5b7d8  eb0a  JMP 0x00b5b7e4
00b5b7da  8d9b00000000  .byte 8d9b00000000 ; NONOWNED envelope gap bytes
00b5b7e0  8b5c2410  MOV EBX,dword ptr [ESP + 0x10]
00b5b7e4  3bfd  CMP EDI,EBP
00b5b7e6  d943fc  FLD float ptr [EBX + -0x4]
00b5b7e9  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b7ec  d91c08  FSTP float ptr [EAX + ECX*0x1]
00b5b7ef  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b7f2  d903  FLD float ptr [EBX]
00b5b7f4  d95c0104  FSTP float ptr [ECX + EAX*0x1 + 0x4]
00b5b7f8  7517  JNZ 0x00b5b811
00b5b7fa  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b7fd  8b5c2418  MOV EBX,dword ptr [ESP + 0x18]
00b5b801  895c011c  MOV dword ptr [ECX + EAX*0x1 + 0x1c],EBX
00b5b805  8b5e40  MOV EBX,dword ptr [ESI + 0x40]
00b5b808  8d4afe  LEA ECX,[EDX + -0x2]
00b5b80b  894c0320  MOV dword ptr [EBX + EAX*0x1 + 0x20],ECX
00b5b80f  eb41  JMP 0x00b5b852
00b5b811  3b7c2418  CMP EDI,dword ptr [ESP + 0x18]
00b5b815  752a  JNZ 0x00b5b841
00b5b817  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b81a  8954011c  MOV dword ptr [ECX + EAX*0x1 + 0x1c],EDX
00b5b81e  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b821  896c0120  MOV dword ptr [ECX + EAX*0x1 + 0x20],EBP
00b5b825  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b828  8b1c01  MOV EBX,dword ptr [ECX + EAX*0x1]
00b5b82b  8d6ced00  LEA EBP,[EBP + EBP*0x8]
00b5b82f  895ca908  MOV dword ptr [ECX + EBP*0x4 + 0x8],EBX
00b5b833  8b5c0104  MOV EBX,dword ptr [ECX + EAX*0x1 + 0x4]
00b5b837  895ca90c  MOV dword ptr [ECX + EBP*0x4 + 0xc],EBX
00b5b83b  8b6c2438  MOV EBP,dword ptr [ESP + 0x38]
00b5b83f  eb22  JMP 0x00b5b863
00b5b841  8b5e40  MOV EBX,dword ptr [ESI + 0x40]
00b5b844  8d4afe  LEA ECX,[EDX + -0x2]
00b5b847  894c0320  MOV dword ptr [EBX + EAX*0x1 + 0x20],ECX
00b5b84b  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b84e  8954011c  MOV dword ptr [ECX + EAX*0x1 + 0x1c],EDX
00b5b852  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b855  8b1c01  MOV EBX,dword ptr [ECX + EAX*0x1]
00b5b858  03c8  ADD ECX,EAX
00b5b85a  8959e4  MOV dword ptr [ECX + -0x1c],EBX
00b5b85d  8b5904  MOV EBX,dword ptr [ECX + 0x4]
00b5b860  8959e8  MOV dword ptr [ECX + -0x18],EBX
00b5b863  8b4e40  MOV ECX,dword ptr [ESI + 0x40]
00b5b866  8344241008  ADD dword ptr [ESP + 0x10],0x8
00b5b86b  33db  XOR EBX,EBX
00b5b86d  885c0110  MOV byte ptr [ECX + EAX*0x1 + 0x10],BL
00b5b871  83c701  ADD EDI,0x1
00b5b874  83c201  ADD EDX,0x1
00b5b877  83c024  ADD EAX,0x24
00b5b87a  836c241c01  SUB dword ptr [ESP + 0x1c],0x1
00b5b87f  0f855bffffff  JNZ 0x00b5b7e0
00b5b885  8b442420  MOV EAX,dword ptr [ESP + 0x20]
00b5b889  83c001  ADD EAX,0x1
00b5b88c  3b442424  CMP EAX,dword ptr [ESP + 0x24]
00b5b890  89442420  MOV dword ptr [ESP + 0x20],EAX
00b5b894  0f8207ffffff  JC 0x00b5b7a1
00b5b89a  8b6c2424  MOV EBP,dword ptr [ESP + 0x24]
00b5b89e  83c7ff  ADD EDI,-0x1
00b5b8a1  57  PUSH EDI
00b5b8a2  8bce  MOV ECX,ESI
00b5b8a4  e8d7f3ffff  CALL 0x00b5ac80
00b5b8a9  8bce  MOV ECX,ESI
00b5b8ab  e8d0f5ffff  CALL 0x00b5ae80
00b5b8b0  8d54243c  LEA EDX,[ESP + 0x3c]
00b5b8b4  52  PUSH EDX
00b5b8b5  50  PUSH EAX
00b5b8b6  57  PUSH EDI
00b5b8b7  8bce  MOV ECX,ESI
00b5b8b9  e872faffff  CALL 0x00b5b330
00b5b8be  8b8c2488000000  MOV ECX,dword ptr [ESP + 0x88]
00b5b8c5  8901  MOV dword ptr [ECX],EAX
00b5b8c7  3b869c000000  CMP EAX,dword ptr [ESI + 0x9c]
00b5b8cd  726b  JC 0x00b5b93a
00b5b8cf  899e98000000  MOV dword ptr [ESI + 0x98],EBX
00b5b8d5  899e94000000  MOV dword ptr [ESI + 0x94],EBX
00b5b8db  899e90000000  MOV dword ptr [ESI + 0x90],EBX
00b5b8e1  895e1c  MOV dword ptr [ESI + 0x1c],EBX
00b5b8e4  895e18  MOV dword ptr [ESI + 0x18],EBX
00b5b8e7  895e14  MOV dword ptr [ESI + 0x14],EBX
00b5b8ea  891e  MOV dword ptr [ESI],EBX
00b5b8ec  8b5604  MOV EDX,dword ptr [ESI + 0x4]
00b5b8ef  895608  MOV dword ptr [ESI + 0x8],EDX
00b5b8f2  8b4620  MOV EAX,dword ptr [ESI + 0x20]
00b5b8f5  894624  MOV dword ptr [ESI + 0x24],EAX
00b5b8f8  8b4e30  MOV ECX,dword ptr [ESI + 0x30]
00b5b8fb  894e34  MOV dword ptr [ESI + 0x34],ECX
00b5b8fe  8b5640  MOV EDX,dword ptr [ESI + 0x40]
00b5b901  895644  MOV dword ptr [ESI + 0x44],EDX
00b5b904  8b4650  MOV EAX,dword ptr [ESI + 0x50]
00b5b907  894654  MOV dword ptr [ESI + 0x54],EAX
00b5b90a  8b4e60  MOV ECX,dword ptr [ESI + 0x60]
00b5b90d  894e64  MOV dword ptr [ESI + 0x64],ECX
00b5b910  8b5670  MOV EDX,dword ptr [ESI + 0x70]
00b5b913  895674  MOV dword ptr [ESI + 0x74],EDX
00b5b916  8b8680000000  MOV EAX,dword ptr [ESI + 0x80]
00b5b91c  898684000000  MOV dword ptr [ESI + 0x84],EAX
00b5b922  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00b5b926  bf01000000  MOV EDI,0x1
00b5b92b  03c7  ADD EAX,EDI
00b5b92d  83f805  CMP EAX,0x5
00b5b930  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00b5b934  0f824dfeffff  JC 0x00b5b787
00b5b93a  8b8c2488000000  MOV ECX,dword ptr [ESP + 0x88]
00b5b941  3919  CMP dword ptr [ECX],EBX
00b5b943  8bac2484000000  MOV EBP,dword ptr [ESP + 0x84]
00b5b94a  895c242c  MOV dword ptr [ESP + 0x2c],EBX
00b5b94e  0f8660010000  JBE 0x00b5bab4
00b5b954  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00b5b958  d905f4e70601  FLD float ptr [0x0106e7f4]
00b5b95e  83c008  ADD EAX,0x8
00b5b961  8944247c  MOV dword ptr [ESP + 0x7c],EAX
00b5b965  eb04  JMP 0x00b5b96b
00b5b967  8b44247c  MOV EAX,dword ptr [ESP + 0x7c]
00b5b96b  8b50f8  MOV EDX,dword ptr [EAX + -0x8]
00b5b96e  8b70fc  MOV ESI,dword ptr [EAX + -0x4]
00b5b971  8b38  MOV EDI,dword ptr [EAX]
00b5b973  8b842480000000  MOV EAX,dword ptr [ESP + 0x80]
00b5b97a  8b08  MOV ECX,dword ptr [EAX]
00b5b97c  d944d1f8  FLD float ptr [ECX + EDX*0x8 + -0x8]
00b5b980  83ea01  SUB EDX,0x1
00b5b983  d944f1f8  FLD float ptr [ECX + ESI*0x8 + -0x8]
00b5b987  83ee01  SUB ESI,0x1
00b5b98a  d9c1  FLD ST1
00b5b98c  83ef01  SUB EDI,0x1
00b5b98f  d8e1  FSUB ST0,ST1
00b5b991  89942484000000  MOV dword ptr [ESP + 0x84],EDX
00b5b998  89742438  MOV dword ptr [ESP + 0x38],ESI
00b5b99c  897c2430  MOV dword ptr [ESP + 0x30],EDI
00b5b9a0  d9e1  FABS
00b5b9a2  d9cb  FXCH ST3
00b5b9a4  dbf3  FCOMI ST0,ST3
00b5b9a6  dddb  FSTP ST3
00b5b9a8  7216  JC 0x00b5b9c0
00b5b9aa  d944d104  FLD float ptr [ECX + EDX*0x8 + 0x4]
00b5b9ae  d864f104  FSUB float ptr [ECX + ESI*0x8 + 0x4]
00b5b9b2  d9e1  FABS
00b5b9b4  d9cb  FXCH ST3
00b5b9b6  dbf3  FCOMI ST0,ST3
00b5b9b8  dddb  FSTP ST3
00b5b9ba  0f83cf000000  JNC 0x00b5ba8f
00b5b9c0  d904f9  FLD float ptr [ECX + EDI*0x8]
00b5b9c3  dce9  FSUB ST1,ST0
00b5b9c5  d9c9  FXCH
00b5b9c7  d9e1  FABS
00b5b9c9  d9cb  FXCH ST3
00b5b9cb  dbf3  FCOMI ST0,ST3
00b5b9cd  dddb  FSTP ST3
00b5b9cf  7216  JC 0x00b5b9e7
00b5b9d1  d944f104  FLD float ptr [ECX + ESI*0x8 + 0x4]
00b5b9d5  d864f904  FSUB float ptr [ECX + EDI*0x8 + 0x4]
00b5b9d9  d9e1  FABS
00b5b9db  d9cb  FXCH ST3
00b5b9dd  dbf3  FCOMI ST0,ST3
00b5b9df  dddb  FSTP ST3
00b5b9e1  0f83a8000000  JNC 0x00b5ba8f
00b5b9e7  dee9  FSUBP
00b5b9e9  d9e1  FABS
00b5b9eb  d9c9  FXCH
00b5b9ed  dbf1  FCOMI ST0,ST1
00b5b9ef  ddd9  FSTP ST1
00b5b9f1  7216  JC 0x00b5ba09
00b5b9f3  d944d104  FLD float ptr [ECX + EDX*0x8 + 0x4]
00b5b9f7  d864f904  FSUB float ptr [ECX + EDI*0x8 + 0x4]
00b5b9fb  d9e1  FABS
00b5b9fd  d9c9  FXCH
00b5b9ff  dbf1  FCOMI ST0,ST1
00b5ba01  ddd9  FSTP ST1
00b5ba03  0f838a000000  JNC 0x00b5ba93
00b5ba09  8b4504  MOV EAX,dword ptr [EBP + 0x4]
00b5ba0c  3b4508  CMP EAX,dword ptr [EBP + 0x8]
00b5ba0f  730e  JNC 0x00b5ba1f
00b5ba11  3bc3  CMP EAX,EBX
00b5ba13  8d4804  LEA ECX,[EAX + 0x4]
00b5ba16  894d04  MOV dword ptr [EBP + 0x4],ECX
00b5ba19  741c  JZ 0x00b5ba37
00b5ba1b  8910  MOV dword ptr [EAX],EDX
00b5ba1d  eb18  JMP 0x00b5ba37
00b5ba1f  8d942484000000  LEA EDX,[ESP + 0x84]
00b5ba26  ddd8  FSTP ST0
00b5ba28  52  PUSH EDX
00b5ba29  50  PUSH EAX
00b5ba2a  8bcd  MOV ECX,EBP
00b5ba2c  e8ef69e2ff  CALL 0x00982420
00b5ba31  d905f4e70601  FLD float ptr [0x0106e7f4]
00b5ba37  8b4504  MOV EAX,dword ptr [EBP + 0x4]
00b5ba3a  3b4508  CMP EAX,dword ptr [EBP + 0x8]
00b5ba3d  730e  JNC 0x00b5ba4d
00b5ba3f  3bc3  CMP EAX,EBX
00b5ba41  8d4804  LEA ECX,[EAX + 0x4]
00b5ba44  894d04  MOV dword ptr [EBP + 0x4],ECX
00b5ba47  7419  JZ 0x00b5ba62
00b5ba49  8930  MOV dword ptr [EAX],ESI
00b5ba4b  eb15  JMP 0x00b5ba62
00b5ba4d  8d542438  LEA EDX,[ESP + 0x38]
00b5ba51  ddd8  FSTP ST0
00b5ba53  52  PUSH EDX
00b5ba54  50  PUSH EAX
00b5ba55  8bcd  MOV ECX,EBP
00b5ba57  e8c469e2ff  CALL 0x00982420
00b5ba5c  d905f4e70601  FLD float ptr [0x0106e7f4]
00b5ba62  8b4504  MOV EAX,dword ptr [EBP + 0x4]
00b5ba65  3b4508  CMP EAX,dword ptr [EBP + 0x8]
00b5ba68  730e  JNC 0x00b5ba78
00b5ba6a  3bc3  CMP EAX,EBX
00b5ba6c  8d4804  LEA ECX,[EAX + 0x4]
00b5ba6f  894d04  MOV dword ptr [EBP + 0x4],ECX
00b5ba72  741f  JZ 0x00b5ba93
00b5ba74  8938  MOV dword ptr [EAX],EDI
00b5ba76  eb1b  JMP 0x00b5ba93
00b5ba78  8d542430  LEA EDX,[ESP + 0x30]
00b5ba7c  ddd8  FSTP ST0
00b5ba7e  52  PUSH EDX
00b5ba7f  50  PUSH EAX
00b5ba80  8bcd  MOV ECX,EBP
00b5ba82  e89969e2ff  CALL 0x00982420
00b5ba87  d905f4e70601  FLD float ptr [0x0106e7f4]
00b5ba8d  eb04  JMP 0x00b5ba93
00b5ba8f  ddd8  FSTP ST0
00b5ba91  ddd8  FSTP ST0
00b5ba93  8b44242c  MOV EAX,dword ptr [ESP + 0x2c]
00b5ba97  8b8c2488000000  MOV ECX,dword ptr [ESP + 0x88]
00b5ba9e  8344247c0c  ADD dword ptr [ESP + 0x7c],0xc
00b5baa3  83c001  ADD EAX,0x1
00b5baa6  3b01  CMP EAX,dword ptr [ECX]
00b5baa8  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00b5baac  0f82b5feffff  JC 0x00b5b967
00b5bab2  ddd8  FSTP ST0
00b5bab4  8b5504  MOV EDX,dword ptr [EBP + 0x4]
00b5bab7  2b5500  SUB EDX,dword ptr [EBP]
00b5baba  8b742468  MOV ESI,dword ptr [ESP + 0x68]
00b5babe  c1fa02  SAR EDX,0x2
00b5bac1  b8abaaaaaa  MOV EAX,0xaaaaaaab
00b5bac6  f7e2  MUL EDX
00b5bac8  8b842488000000  MOV EAX,dword ptr [ESP + 0x88]
00b5bacf  d1ea  SHR EDX,0x1
00b5bad1  3bf3  CMP ESI,EBX
00b5bad3  8910  MOV dword ptr [EAX],EDX
00b5bad5  741e  JZ 0x00b5baf5
00b5bad7  8b0e  MOV ECX,dword ptr [ESI]
00b5bad9  51  PUSH ECX
00b5bada  8d4c2460  LEA ECX,[ESP + 0x60]
00b5bade  e8cd5ed5ff  CALL 0x008b19b0
00b5bae3  8b7e04  MOV EDI,dword ptr [ESI + 0x4]
00b5bae6  56  PUSH ESI
00b5bae7  e8f48998ff  CALL 0x004e44e0
00b5baec  83c404  ADD ESP,0x4
00b5baef  3bfb  CMP EDI,EBX
00b5baf1  8bf7  MOV ESI,EDI
00b5baf3  75e2  JNZ 0x00b5bad7
00b5baf5  8b44244c  MOV EAX,dword ptr [ESP + 0x4c]
00b5baf9  3bc3  CMP EAX,EBX
00b5bafb  7409  JZ 0x00b5bb06
00b5bafd  50  PUSH EAX
00b5bafe  e8dd8998ff  CALL 0x004e44e0
00b5bb03  83c404  ADD ESP,0x4
00b5bb06  8b44243c  MOV EAX,dword ptr [ESP + 0x3c]
00b5bb0a  5f  POP EDI
00b5bb0b  5d  POP EBP
00b5bb0c  3bc3  CMP EAX,EBX
00b5bb0e  5b  POP EBX
00b5bb0f  7409  JZ 0x00b5bb1a
00b5bb11  50  PUSH EAX
00b5bb12  e8c98998ff  CALL 0x004e44e0
00b5bb17  83c404  ADD ESP,0x4
00b5bb1a  b001  MOV AL,0x1
00b5bb1c  5e  POP ESI
00b5bb1d  83c468  ADD ESP,0x68
00b5bb20  c21000  RET 0x10
00b5bb23  32c0  XOR AL,AL
00b5bb25  5e  POP ESI
00b5bb26  83c468  ADD ESP,0x68
00b5bb29  c21000  RET 0x10
