# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete Ghidra body envelope.
Analyst name: Lot_WriteDescriptionResource
Paired actual annotated Ghidra pseudocode: 00ACA430_Lot_WriteDescriptionResource.c
Owned ranges: [[00aca430, 00acaa06]]
Envelope bytes=1495

GHIDRA LISTING (original bytes; nonowned alignment explicit)
00aca430  83ec48  SUB ESP,0x48
00aca433  8b442450  MOV EAX,dword ptr [ESP + 0x50]
00aca437  56  PUSH ESI
00aca438  8b742450  MOV ESI,dword ptr [ESP + 0x50]
00aca43c  57  PUSH EDI
00aca43d  8bf9  MOV EDI,ECX
00aca43f  8b4c245c  MOV ECX,dword ptr [ESP + 0x5c]
00aca443  6a01  PUSH 0x1
00aca445  8d542444  LEA EDX,[ESP + 0x44]
00aca449  894c2448  MOV dword ptr [ESP + 0x48],ECX
00aca44d  52  PUSH EDX
00aca44e  8bce  MOV ECX,ESI
00aca450  89442448  MOV dword ptr [ESP + 0x48],EAX
00aca454  c74424505b5463d0  MOV dword ptr [ESP + 0x50],0xd063545b
00aca45c  c744245400000000  MOV dword ptr [ESP + 0x54],0x0
00aca464  e857e0d0ff  CALL 0x007d84c0
00aca469  84c0  TEST AL,AL
00aca46b  7508  JNZ 0x00aca475
00aca46d  5f  POP EDI
00aca46e  5e  POP ESI
00aca46f  83c448  ADD ESP,0x48
00aca472  c21800  RET 0x18
00aca475  8b87e8030000  MOV EAX,dword ptr [EDI + 0x3e8]
00aca47b  8b8fec030000  MOV ECX,dword ptr [EDI + 0x3ec]
00aca481  8b9700040000  MOV EDX,dword ptr [EDI + 0x400]
00aca487  53  PUSH EBX
00aca488  8b9fd4030000  MOV EBX,dword ptr [EDI + 0x3d4]
00aca48e  8944245c  MOV dword ptr [ESP + 0x5c],EAX
00aca492  8b8704040000  MOV EAX,dword ptr [EDI + 0x404]
00aca498  894c2460  MOV dword ptr [ESP + 0x60],ECX
00aca49c  8b8fc0030000  MOV ECX,dword ptr [EDI + 0x3c0]
00aca4a2  55  PUSH EBP
00aca4a3  8bafd0030000  MOV EBP,dword ptr [EDI + 0x3d0]
00aca4a9  89442414  MOV dword ptr [ESP + 0x14],EAX
00aca4ad  33c0  XOR EAX,EAX
00aca4af  51  PUSH ECX
00aca4b0  8d4c243c  LEA ECX,[ESP + 0x3c]
00aca4b4  89542414  MOV dword ptr [ESP + 0x14],EDX
00aca4b8  8944243c  MOV dword ptr [ESP + 0x3c],EAX
00aca4bc  89442440  MOV dword ptr [ESP + 0x40],EAX
00aca4c0  89442444  MOV dword ptr [ESP + 0x44],EAX
00aca4c4  c744244898680601  MOV dword ptr [ESP + 0x48],0x1066898
00aca4cc  e8bf1094ff  CALL 0x0040b590
00aca4d1  8b97d8030000  MOV EDX,dword ptr [EDI + 0x3d8]
00aca4d7  33c0  XOR EAX,EAX
00aca4d9  52  PUSH EDX
00aca4da  8d4c242c  LEA ECX,[ESP + 0x2c]
00aca4de  8944242c  MOV dword ptr [ESP + 0x2c],EAX
00aca4e2  89442430  MOV dword ptr [ESP + 0x30],EAX
00aca4e6  89442434  MOV dword ptr [ESP + 0x34],EAX
00aca4ea  c744243880680601  MOV dword ptr [ESP + 0x38],0x1066880
00aca4f2  e8991094ff  CALL 0x0040b590
00aca4f7  33c0  XOR EAX,EAX
00aca4f9  89442418  MOV dword ptr [ESP + 0x18],EAX
00aca4fd  8944241c  MOV dword ptr [ESP + 0x1c],EAX
00aca501  89442420  MOV dword ptr [ESP + 0x20],EAX
00aca505  8b87f0030000  MOV EAX,dword ptr [EDI + 0x3f0]
00aca50b  50  PUSH EAX
00aca50c  8d4c241c  LEA ECX,[ESP + 0x1c]
00aca510  c744242864680601  MOV dword ptr [ESP + 0x28],0x1066864
00aca518  e8731094ff  CALL 0x0040b590
00aca51d  e8de47eeff  CALL 0x009aed00
00aca522  84c0  TEST AL,AL
00aca524  753e  JNZ 0x00aca564
00aca526  38442468  CMP byte ptr [ESP + 0x68],AL
00aca52a  7438  JZ 0x00aca564
00aca52c  33db  XOR EBX,EBX
00aca52e  8d4c2438  LEA ECX,[ESP + 0x38]
00aca532  51  PUSH ECX
00aca533  8bcf  MOV ECX,EDI
00aca535  33ed  XOR EBP,EBP
00aca537  895c2464  MOV dword ptr [ESP + 0x64],EBX
00aca53b  895c2468  MOV dword ptr [ESP + 0x68],EBX
00aca53f  895c2414  MOV dword ptr [ESP + 0x14],EBX
00aca543  895c2418  MOV dword ptr [ESP + 0x18],EBX
00aca547  e8f42bffff  CALL 0x00abd140
00aca54c  8d542428  LEA EDX,[ESP + 0x28]
00aca550  52  PUSH EDX
00aca551  8bcf  MOV ECX,EDI
00aca553  e8c82dffff  CALL 0x00abd320
00aca558  8d442418  LEA EAX,[ESP + 0x18]
00aca55c  50  PUSH EAX
00aca55d  8bcf  MOV ECX,EDI
00aca55f  e8cc2cffff  CALL 0x00abd230
00aca564  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca567  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca56a  51  PUSH ECX
00aca56b  6a45  PUSH 0x45
00aca56d  52  PUSH EDX
00aca56e  e8fd38a1ff  CALL 0x004dde70
00aca573  83c40c  ADD ESP,0xc
00aca576  8bce  MOV ECX,ESI
00aca578  50  PUSH EAX
00aca579  e872d4d0ff  CALL 0x007d79f0
00aca57e  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aca581  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00aca584  50  PUSH EAX
00aca585  53  PUSH EBX
00aca586  55  PUSH EBP
00aca587  51  PUSH ECX
00aca588  e8333ba1ff  CALL 0x004de0c0
00aca58d  83c410  ADD ESP,0x10
00aca590  8bce  MOV ECX,ESI
00aca592  50  PUSH EAX
00aca593  e858d4d0ff  CALL 0x007d79f0
00aca598  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aca59b  8b442464  MOV EAX,dword ptr [ESP + 0x64]
00aca59f  8b4c2460  MOV ECX,dword ptr [ESP + 0x60]
00aca5a3  52  PUSH EDX
00aca5a4  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca5a7  50  PUSH EAX
00aca5a8  51  PUSH ECX
00aca5a9  52  PUSH EDX
00aca5aa  e8113ba1ff  CALL 0x004de0c0
00aca5af  83c410  ADD ESP,0x10
00aca5b2  8bce  MOV ECX,ESI
00aca5b4  50  PUSH EAX
00aca5b5  e836d4d0ff  CALL 0x007d79f0
00aca5ba  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aca5bd  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00aca5c1  8b542410  MOV EDX,dword ptr [ESP + 0x10]
00aca5c5  50  PUSH EAX
00aca5c6  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aca5c9  51  PUSH ECX
00aca5ca  52  PUSH EDX
00aca5cb  50  PUSH EAX
00aca5cc  e8ef3aa1ff  CALL 0x004de0c0
00aca5d1  83c410  ADD ESP,0x10
00aca5d4  8bce  MOV ECX,ESI
00aca5d6  50  PUSH EAX
00aca5d7  e814d4d0ff  CALL 0x007d79f0
00aca5dc  8d4f50  LEA ECX,[EDI + 0x50]
00aca5df  51  PUSH ECX
00aca5e0  8bce  MOV ECX,ESI
00aca5e2  e8c9eed0ff  CALL 0x007d94b0
00aca5e7  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aca5ea  8b442470  MOV EAX,dword ptr [ESP + 0x70]
00aca5ee  8b4c246c  MOV ECX,dword ptr [ESP + 0x6c]
00aca5f2  52  PUSH EDX
00aca5f3  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca5f6  50  PUSH EAX
00aca5f7  51  PUSH ECX
00aca5f8  52  PUSH EDX
00aca5f9  e8923ba1ff  CALL 0x004de190
00aca5fe  83c410  ADD ESP,0x10
00aca601  8bce  MOV ECX,ESI
00aca603  50  PUSH EAX
00aca604  e8e7d3d0ff  CALL 0x007d79f0
00aca609  8d8790010000  LEA EAX,[EDI + 0x190]
00aca60f  50  PUSH EAX
00aca610  8bce  MOV ECX,ESI
00aca612  e879d5d0ff  CALL 0x007d7b90
00aca617  d987a0010000  FLD float ptr [EDI + 0x1a0]
00aca61d  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca620  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca623  51  PUSH ECX
00aca624  51  PUSH ECX
00aca625  d91c24  FSTP float ptr [ESP]
00aca628  52  PUSH EDX
00aca629  e8623da1ff  CALL 0x004de390
00aca62e  83c40c  ADD ESP,0xc
00aca631  8bce  MOV ECX,ESI
00aca633  50  PUSH EAX
00aca634  e8b7d3d0ff  CALL 0x007d79f0
00aca639  8b8774010000  MOV EAX,dword ptr [EDI + 0x174]
00aca63f  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca642  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca645  51  PUSH ECX
00aca646  50  PUSH EAX
00aca647  52  PUSH EDX
00aca648  e82339a1ff  CALL 0x004ddf70
00aca64d  83c40c  ADD ESP,0xc
00aca650  8bce  MOV ECX,ESI
00aca652  50  PUSH EAX
00aca653  e898d3d0ff  CALL 0x007d79f0
00aca658  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca65b  8b8778010000  MOV EAX,dword ptr [EDI + 0x178]
00aca661  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca664  51  PUSH ECX
00aca665  50  PUSH EAX
00aca666  52  PUSH EDX
00aca667  e80439a1ff  CALL 0x004ddf70
00aca66c  83c40c  ADD ESP,0xc
00aca66f  8bce  MOV ECX,ESI
00aca671  50  PUSH EAX
00aca672  e879d3d0ff  CALL 0x007d79f0
00aca677  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca67a  8b877c010000  MOV EAX,dword ptr [EDI + 0x17c]
00aca680  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca683  51  PUSH ECX
00aca684  50  PUSH EAX
00aca685  52  PUSH EDX
00aca686  e8d539a1ff  CALL 0x004de060
00aca68b  83c40c  ADD ESP,0xc
00aca68e  8bce  MOV ECX,ESI
00aca690  50  PUSH EAX
00aca691  e85ad3d0ff  CALL 0x007d79f0
00aca696  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca699  8b8780010000  MOV EAX,dword ptr [EDI + 0x180]
00aca69f  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca6a2  51  PUSH ECX
00aca6a3  50  PUSH EAX
00aca6a4  52  PUSH EDX
00aca6a5  e8b639a1ff  CALL 0x004de060
00aca6aa  83c40c  ADD ESP,0xc
00aca6ad  8bce  MOV ECX,ESI
00aca6af  50  PUSH EAX
00aca6b0  e83bd3d0ff  CALL 0x007d79f0
00aca6b5  d98788010000  FLD float ptr [EDI + 0x188]
00aca6bb  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aca6be  50  PUSH EAX
00aca6bf  51  PUSH ECX
00aca6c0  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00aca6c3  d91c24  FSTP float ptr [ESP]
00aca6c6  51  PUSH ECX
00aca6c7  e8c43ca1ff  CALL 0x004de390
00aca6cc  83c40c  ADD ESP,0xc
00aca6cf  8bce  MOV ECX,ESI
00aca6d1  50  PUSH EAX
00aca6d2  e819d3d0ff  CALL 0x007d79f0
00aca6d7  d9878c010000  FLD float ptr [EDI + 0x18c]
00aca6dd  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aca6e0  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aca6e3  52  PUSH EDX
00aca6e4  51  PUSH ECX
00aca6e5  d91c24  FSTP float ptr [ESP]
00aca6e8  50  PUSH EAX
00aca6e9  e8a23ca1ff  CALL 0x004de390
00aca6ee  83c40c  ADD ESP,0xc
00aca6f1  8bce  MOV ECX,ESI
00aca6f3  50  PUSH EAX
00aca6f4  e8f7d2d0ff  CALL 0x007d79f0
00aca6f9  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca6fc  8b879c030000  MOV EAX,dword ptr [EDI + 0x39c]
00aca702  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca705  51  PUSH ECX
00aca706  50  PUSH EAX
00aca707  52  PUSH EDX
00aca708  e85339a1ff  CALL 0x004de060
00aca70d  83c40c  ADD ESP,0xc
00aca710  8bce  MOV ECX,ESI
00aca712  50  PUSH EAX
00aca713  e8d8d2d0ff  CALL 0x007d79f0
00aca718  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca71b  8b8730010000  MOV EAX,dword ptr [EDI + 0x130]
00aca721  51  PUSH ECX
00aca722  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca725  50  PUSH EAX
00aca726  52  PUSH EDX
00aca727  e84438a1ff  CALL 0x004ddf70
00aca72c  83c40c  ADD ESP,0xc
00aca72f  8bce  MOV ECX,ESI
00aca731  50  PUSH EAX
00aca732  e8b9d2d0ff  CALL 0x007d79f0
00aca737  8d442438  LEA EAX,[ESP + 0x38]
00aca73b  50  PUSH EAX
00aca73c  8bce  MOV ECX,ESI
00aca73e  e86dedd0ff  CALL 0x007d94b0
00aca743  8d4c2428  LEA ECX,[ESP + 0x28]
00aca747  51  PUSH ECX
00aca748  8bce  MOV ECX,ESI
00aca74a  e861edd0ff  CALL 0x007d94b0
00aca74f  8d542418  LEA EDX,[ESP + 0x18]
00aca753  52  PUSH EDX
00aca754  8bce  MOV ECX,ESI
00aca756  e855edd0ff  CALL 0x007d94b0
00aca75b  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca75e  8b8708040000  MOV EAX,dword ptr [EDI + 0x408]
00aca764  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca767  51  PUSH ECX
00aca768  50  PUSH EAX
00aca769  52  PUSH EDX
00aca76a  e8f138a1ff  CALL 0x004de060
00aca76f  83c40c  ADD ESP,0xc
00aca772  8bce  MOV ECX,ESI
00aca774  50  PUSH EAX
00aca775  e876d2d0ff  CALL 0x007d79f0
00aca77a  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca77d  8b870c040000  MOV EAX,dword ptr [EDI + 0x40c]
00aca783  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca786  51  PUSH ECX
00aca787  50  PUSH EAX
00aca788  52  PUSH EDX
00aca789  e8e237a1ff  CALL 0x004ddf70
00aca78e  83c40c  ADD ESP,0xc
00aca791  8bce  MOV ECX,ESI
00aca793  50  PUSH EAX
00aca794  e857d2d0ff  CALL 0x007d79f0
00aca799  d98718040000  FLD float ptr [EDI + 0x418]
00aca79f  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aca7a2  50  PUSH EAX
00aca7a3  51  PUSH ECX
00aca7a4  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00aca7a7  d91c24  FSTP float ptr [ESP]
00aca7aa  51  PUSH ECX
00aca7ab  e8e03ba1ff  CALL 0x004de390
00aca7b0  83c40c  ADD ESP,0xc
00aca7b3  8bce  MOV ECX,ESI
00aca7b5  50  PUSH EAX
00aca7b6  e835d2d0ff  CALL 0x007d79f0
00aca7bb  d98720040000  FLD float ptr [EDI + 0x420]
00aca7c1  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aca7c4  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aca7c7  52  PUSH EDX
00aca7c8  51  PUSH ECX
00aca7c9  d91c24  FSTP float ptr [ESP]
00aca7cc  50  PUSH EAX
00aca7cd  e8be3ba1ff  CALL 0x004de390
00aca7d2  83c40c  ADD ESP,0xc
00aca7d5  8bce  MOV ECX,ESI
00aca7d7  50  PUSH EAX
00aca7d8  e813d2d0ff  CALL 0x007d79f0
00aca7dd  8a5c2468  MOV BL,byte ptr [ESP + 0x68]
00aca7e1  33ed  XOR EBP,EBP
00aca7e3  84db  TEST BL,BL
00aca7e5  7441  JZ 0x00aca828
00aca7e7  8bcf  MOV ECX,EDI
00aca7e9  e892060000  CALL 0x00acae80
00aca7ee  83bfe802000000  CMP dword ptr [EDI + 0x2e8],0x0
00aca7f5  8be8  MOV EBP,EAX
00aca7f7  752f  JNZ 0x00aca828
00aca7f9  8b8798020000  MOV EAX,dword ptr [EDI + 0x298]
00aca7ff  85c0  TEST EAX,EAX
00aca801  740e  JZ 0x00aca811
00aca803  8b8820010000  MOV ECX,dword ptr [EAX + 0x120]
00aca809  3b8824010000  CMP ECX,dword ptr [EAX + 0x124]
00aca80f  7517  JNZ 0x00aca828
00aca811  8bcf  MOV ECX,EDI
00aca813  e8e895feff  CALL 0x00ab3e00
00aca818  f30f2c9720040000  CVTTSS2SI EDX,dword ptr [EDI + 0x420]
00aca820  03c2  ADD EAX,EDX
00aca822  2be8  SUB EBP,EAX
00aca824  7902  JNS 0x00aca828
00aca826  33ed  XOR EBP,EBP
00aca828  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aca82b  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00aca82e  50  PUSH EAX
00aca82f  55  PUSH EBP
00aca830  51  PUSH ECX
00aca831  e82a38a1ff  CALL 0x004de060
00aca836  83c40c  ADD ESP,0xc
00aca839  8bce  MOV ECX,ESI
00aca83b  50  PUSH EAX
00aca83c  e8afd1d0ff  CALL 0x007d79f0
00aca841  80bf1c04000000  CMP byte ptr [EDI + 0x41c],0x0
00aca848  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00aca84b  0f95c2  SETNZ DL
00aca84e  88542468  MOV byte ptr [ESP + 0x68],DL
00aca852  8b442468  MOV EAX,dword ptr [ESP + 0x68]
00aca856  50  PUSH EAX
00aca857  51  PUSH ECX
00aca858  e8d335a1ff  CALL 0x004dde30
00aca85d  83c408  ADD ESP,0x8
00aca860  8bce  MOV ECX,ESI
00aca862  50  PUSH EAX
00aca863  e888d1d0ff  CALL 0x007d79f0
00aca868  8b87e8020000  MOV EAX,dword ptr [EDI + 0x2e8]
00aca86e  33ed  XOR EBP,EBP
00aca870  3bc5  CMP EAX,EBP
00aca872  89af10030000  MOV dword ptr [EDI + 0x310],EBP
00aca878  89af14030000  MOV dword ptr [EDI + 0x314],EBP
00aca87e  7415  JZ 0x00aca895
00aca880  50  PUSH EAX
00aca881  e8da8a0300  CALL 0x00b03360
00aca886  83c404  ADD ESP,0x4
00aca889  898710030000  MOV dword ptr [EDI + 0x310],EAX
00aca88f  899714030000  MOV dword ptr [EDI + 0x314],EDX
00aca895  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aca898  8b8f14030000  MOV ECX,dword ptr [EDI + 0x314]
00aca89e  8b8710030000  MOV EAX,dword ptr [EDI + 0x310]
00aca8a4  52  PUSH EDX
00aca8a5  51  PUSH ECX
00aca8a6  50  PUSH EAX
00aca8a7  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aca8aa  50  PUSH EAX
00aca8ab  e81038a1ff  CALL 0x004de0c0
00aca8b0  83c410  ADD ESP,0x10
00aca8b3  8bce  MOV ECX,ESI
00aca8b5  50  PUSH EAX
00aca8b6  e835d1d0ff  CALL 0x007d79f0
00aca8bb  8a8fb0040000  MOV CL,byte ptr [EDI + 0x4b0]
00aca8c1  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aca8c4  884c2468  MOV byte ptr [ESP + 0x68],CL
00aca8c8  8b542468  MOV EDX,dword ptr [ESP + 0x68]
00aca8cc  52  PUSH EDX
00aca8cd  50  PUSH EAX
00aca8ce  e82d35a1ff  CALL 0x004dde00
00aca8d3  83c408  ADD ESP,0x8
00aca8d6  8bce  MOV ECX,ESI
00aca8d8  50  PUSH EAX
00aca8d9  e812d1d0ff  CALL 0x007d79f0
00aca8de  80bfb004000000  CMP byte ptr [EDI + 0x4b0],0x0
00aca8e5  7415  JZ 0x00aca8fc
00aca8e7  8bcf  MOV ECX,EDI
00aca8e9  e8a271feff  CALL 0x00ab1a90
00aca8ee  8b4e10  MOV ECX,dword ptr [ESI + 0x10]
00aca8f1  8b5608  MOV EDX,dword ptr [ESI + 0x8]
00aca8f4  51  PUSH ECX
00aca8f5  51  PUSH ECX
00aca8f6  d91c24  FSTP float ptr [ESP]
00aca8f9  52  PUSH EDX
00aca8fa  eb12  JMP 0x00aca90e
00aca8fc  8b4610  MOV EAX,dword ptr [ESI + 0x10]
00aca8ff  d905a4cbfc00  FLD float ptr [0x00fccba4]
00aca905  50  PUSH EAX
00aca906  51  PUSH ECX
00aca907  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00aca90a  d91c24  FSTP float ptr [ESP]
00aca90d  51  PUSH ECX
00aca90e  e87d3aa1ff  CALL 0x004de390
00aca913  83c40c  ADD ESP,0xc
00aca916  8bce  MOV ECX,ESI
00aca918  50  PUSH EAX
00aca919  e8d2d0d0ff  CALL 0x007d79f0
00aca91e  8a97bc040000  MOV DL,byte ptr [EDI + 0x4bc]
00aca924  8b4e08  MOV ECX,dword ptr [ESI + 0x8]
00aca927  88542468  MOV byte ptr [ESP + 0x68],DL
00aca92b  8b442468  MOV EAX,dword ptr [ESP + 0x68]
00aca92f  50  PUSH EAX
00aca930  51  PUSH ECX
00aca931  e8ca34a1ff  CALL 0x004dde00
00aca936  83c408  ADD ESP,0x8
00aca939  8bce  MOV ECX,ESI
00aca93b  50  PUSH EAX
00aca93c  e8afd0d0ff  CALL 0x007d79f0
00aca941  84db  TEST BL,BL
00aca943  8b87bc000000  MOV EAX,dword ptr [EDI + 0xbc]
00aca949  750d  JNZ 0x00aca958
00aca94b  389fba000000  CMP byte ptr [EDI + 0xba],BL
00aca951  7405  JZ 0x00aca958
00aca953  b801000000  MOV EAX,0x1
00aca958  8b5610  MOV EDX,dword ptr [ESI + 0x10]
00aca95b  52  PUSH EDX
00aca95c  50  PUSH EAX
00aca95d  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aca960  50  PUSH EAX
00aca961  e80a36a1ff  CALL 0x004ddf70
00aca966  83c40c  ADD ESP,0xc
00aca969  8bce  MOV ECX,ESI
00aca96b  50  PUSH EAX
00aca96c  e87fd0d0ff  CALL 0x007d79f0
00aca971  8a8fbd040000  MOV CL,byte ptr [EDI + 0x4bd]
00aca977  8b4608  MOV EAX,dword ptr [ESI + 0x8]
00aca97a  884c2468  MOV byte ptr [ESP + 0x68],CL
00aca97e  8b542468  MOV EDX,dword ptr [ESP + 0x68]
00aca982  52  PUSH EDX
00aca983  50  PUSH EAX
00aca984  e87734a1ff  CALL 0x004dde00
00aca989  83c408  ADD ESP,0x8
00aca98c  8bce  MOV ECX,ESI
00aca98e  50  PUSH EAX
00aca98f  e85cd0d0ff  CALL 0x007d79f0
00aca994  8bce  MOV ECX,ESI
00aca996  e8d5d0d0ff  CALL 0x007d7a70
00aca99b  8b4c2420  MOV ECX,dword ptr [ESP + 0x20]
00aca99f  8b442418  MOV EAX,dword ptr [ESP + 0x18]
00aca9a3  8a5e14  MOV BL,byte ptr [ESI + 0x14]
00aca9a6  2bc8  SUB ECX,EAX
00aca9a8  83e1fe  AND ECX,0xfffffffe
00aca9ab  83f902  CMP ECX,0x2
00aca9ae  7e0d  JLE 0x00aca9bd
00aca9b0  3bc5  CMP EAX,EBP
00aca9b2  7409  JZ 0x00aca9bd
00aca9b4  50  PUSH EAX
00aca9b5  e8269ba1ff  CALL 0x004e44e0
00aca9ba  83c404  ADD ESP,0x4
00aca9bd  8b542430  MOV EDX,dword ptr [ESP + 0x30]
00aca9c1  8b442428  MOV EAX,dword ptr [ESP + 0x28]
00aca9c5  2bd0  SUB EDX,EAX
00aca9c7  83e2fe  AND EDX,0xfffffffe
00aca9ca  83fa02  CMP EDX,0x2
00aca9cd  7e0d  JLE 0x00aca9dc
00aca9cf  3bc5  CMP EAX,EBP
00aca9d1  7409  JZ 0x00aca9dc
00aca9d3  50  PUSH EAX
00aca9d4  e8079ba1ff  CALL 0x004e44e0
00aca9d9  83c404  ADD ESP,0x4
00aca9dc  8b4c2440  MOV ECX,dword ptr [ESP + 0x40]
00aca9e0  8b442438  MOV EAX,dword ptr [ESP + 0x38]
00aca9e4  2bc8  SUB ECX,EAX
00aca9e6  83e1fe  AND ECX,0xfffffffe
00aca9e9  83f902  CMP ECX,0x2
00aca9ec  7e0d  JLE 0x00aca9fb
00aca9ee  3bc5  CMP EAX,EBP
00aca9f0  7409  JZ 0x00aca9fb
00aca9f2  50  PUSH EAX
00aca9f3  e8e89aa1ff  CALL 0x004e44e0
00aca9f8  83c404  ADD ESP,0x4
00aca9fb  5d  POP EBP
00aca9fc  8ac3  MOV AL,BL
00aca9fe  5b  POP EBX
00aca9ff  5f  POP EDI
00acaa00  5e  POP ESI
00acaa01  83c448  ADD ESP,0x48
00acaa04  c21800  RET 0x18
Owned instructions=495 owned bytes=1495 gap/nonowned bytes=0
