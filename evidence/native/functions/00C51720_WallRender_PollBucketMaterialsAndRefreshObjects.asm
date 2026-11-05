# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; actual annotated Ghidra Listing.
Owned body: [[00c51720, 00c51773] [00c51780, 00c518c7]]
Actual pseudocode: 00C51720_WallRender_PollBucketMaterialsAndRefreshObjects.c
; Actual plate: Analyst PC1.67 Physical ECX original owner, no stack arguments/plain RET. Capture owner+35C, compare previous+38C and retain that inequality for selected refresh calls. Iterate actual segmented outer cursors at+1C4/+1CC/+1D0/+1D4; each0x81C-byte bucket has seven0x128-byte lanes. When bucket+818 iszero, scan actual lane+AC/+B0 hash rows, linked by node+80 and original sentinel arrays. For node+C zero and absent material atnode+40 or material+30 not3, call C51330(node+8) and TEST AL; any false clears this bucket result. Actual lane primary object is dirty-queued through6FA9F0, conditionally C3A890 on captured-word inequality, always C3C700; secondary lane+4 object gets selected dirty queue and A5CFF0. After seven lanes write bucket+818 result, advance actual segmented cursors and finally copy captured+35C to+38C even when outer range empty. Numeric lane/field roles, complete deeper geometry and upstream scheduler are not inferred from stride. Non-owned alignment inside complete envelope is exported explicitly. Polling material status is not current Task/CTS/GPU-slot/budget parity or proof that every edit refills within its original frame.

00c51720  83ec34  SUB ESP,0x34
00c51723  53  PUSH EBX
00c51724  8bd9  MOV EBX,ECX
00c51726  8b835c030000  MOV EAX,dword ptr [EBX + 0x35c]
00c5172c  8b8bcc010000  MOV ECX,dword ptr [EBX + 0x1cc]
00c51732  3b838c030000  CMP EAX,dword ptr [EBX + 0x38c]
00c51738  8b93d0010000  MOV EDX,dword ptr [EBX + 0x1d0]
00c5173e  57  PUSH EDI
00c5173f  8bbbc4010000  MOV EDI,dword ptr [EBX + 0x1c4]
00c51745  894c2424  MOV dword ptr [ESP + 0x24],ECX
00c51749  8b8bd4010000  MOV ECX,dword ptr [EBX + 0x1d4]
00c5174f  0f9544240b  SETNZ byte ptr [ESP + 0xb]
00c51754  3bf9  CMP EDI,ECX
00c51756  895c2414  MOV dword ptr [ESP + 0x14],EBX
00c5175a  89442418  MOV dword ptr [ESP + 0x18],EAX
00c5175e  897c241c  MOV dword ptr [ESP + 0x1c],EDI
00c51762  89542428  MOV dword ptr [ESP + 0x28],EDX
00c51766  894c242c  MOV dword ptr [ESP + 0x2c],ECX
00c5176a  0f844c010000  JZ 0x00c518bc
00c51770  55  PUSH EBP
00c51771  56  PUSH ESI
00c51772  eb0c  JMP 0x00c51780
00c51774  8da42400000000eb038d4900  GAP_BYTES (outside owned instruction ranges)
00c51780  c644241201  MOV byte ptr [ESP + 0x12],0x1
00c51785  8bef  MOV EBP,EDI
00c51787  c744241807000000  MOV dword ptr [ESP + 0x18],0x7
00c5178f  90  NOP
00c51790  80bf1808000000  CMP byte ptr [EDI + 0x818],0x0
00c51797  8b7500  MOV ESI,dword ptr [EBP]
00c5179a  89742414  MOV dword ptr [ESP + 0x14],ESI
00c5179e  0f8585000000  JNZ 0x00c51829
00c517a4  8bbdac000000  MOV EDI,dword ptr [EBP + 0xac]
00c517aa  8b37  MOV ESI,dword ptr [EDI]
00c517ac  85f6  TEST ESI,ESI
00c517ae  7511  JNZ 0x00c517c1
00c517b0  83c704  ADD EDI,0x4
00c517b3  3937  CMP dword ptr [EDI],ESI
00c517b5  7508  JNZ 0x00c517bf
00c517b7  83c704  ADD EDI,0x4
00c517ba  833f00  CMP dword ptr [EDI],0x0
00c517bd  74f8  JZ 0x00c517b7
00c517bf  8b37  MOV ESI,dword ptr [EDI]
00c517c1  8b85b0000000  MOV EAX,dword ptr [EBP + 0xb0]
00c517c7  8b8dac000000  MOV ECX,dword ptr [EBP + 0xac]
00c517cd  8b1c81  MOV EBX,dword ptr [ECX + EAX*0x4]
00c517d0  3bf3  CMP ESI,EBX
00c517d2  7440  JZ 0x00c51814
00c517d4  837e0c00  CMP dword ptr [ESI + 0xc],0x0
00c517d8  8d4e08  LEA ECX,[ESI + 0x8]
00c517db  751f  JNZ 0x00c517fc
00c517dd  8b4138  MOV EAX,dword ptr [ECX + 0x38]
00c517e0  85c0  TEST EAX,EAX
00c517e2  740b  JZ 0x00c517ef
00c517e4  83783003  CMP dword ptr [EAX + 0x30],0x3
00c517e8  0f94c0  SETZ AL
00c517eb  84c0  TEST AL,AL
00c517ed  750d  JNZ 0x00c517fc
00c517ef  e83cfbffff  CALL 0x00c51330
00c517f4  84c0  TEST AL,AL
00c517f6  7504  JNZ 0x00c517fc
00c517f8  88442412  MOV byte ptr [ESP + 0x12],AL
00c517fc  8bb680000000  MOV ESI,dword ptr [ESI + 0x80]
00c51802  85f6  TEST ESI,ESI
00c51804  750a  JNZ 0x00c51810
00c51806  8b7704  MOV ESI,dword ptr [EDI + 0x4]
00c51809  83c704  ADD EDI,0x4
00c5180c  85f6  TEST ESI,ESI
00c5180e  74f6  JZ 0x00c51806
00c51810  3bf3  CMP ESI,EBX
00c51812  75c0  JNZ 0x00c517d4
00c51814  8b4c2414  MOV ECX,dword ptr [ESP + 0x14]
00c51818  e8d391aaff  CALL 0x006fa9f0
00c5181d  8b5c241c  MOV EBX,dword ptr [ESP + 0x1c]
00c51821  8b7c2424  MOV EDI,dword ptr [ESP + 0x24]
00c51825  8b742414  MOV ESI,dword ptr [ESP + 0x14]
00c51829  807c241300  CMP byte ptr [ESP + 0x13],0x0
00c5182e  7407  JZ 0x00c51837
00c51830  8bce  MOV ECX,ESI
00c51832  e85990feff  CALL 0x00c3a890
00c51837  8bce  MOV ECX,ESI
00c51839  e8c2aefeff  CALL 0x00c3c700
00c5183e  80bf1808000000  CMP byte ptr [EDI + 0x818],0x0
00c51845  8b7504  MOV ESI,dword ptr [EBP + 0x4]
00c51848  7507  JNZ 0x00c51851
00c5184a  8bce  MOV ECX,ESI
00c5184c  e89f91aaff  CALL 0x006fa9f0
00c51851  8bce  MOV ECX,ESI
00c51853  e898b7e0ff  CALL 0x00a5cff0
00c51858  81c528010000  ADD EBP,0x128
00c5185e  836c241801  SUB dword ptr [ESP + 0x18],0x1
00c51863  0f8527ffffff  JNZ 0x00c51790
00c51869  8a542412  MOV DL,byte ptr [ESP + 0x12]
00c5186d  889718080000  MOV byte ptr [EDI + 0x818],DL
00c51873  81c71c080000  ADD EDI,0x81c
00c51879  3b7c242c  CMP EDI,dword ptr [ESP + 0x2c]
00c5187d  897c2424  MOV dword ptr [ESP + 0x24],EDI
00c51881  751d  JNZ 0x00c518a0
00c51883  8b442430  MOV EAX,dword ptr [ESP + 0x30]
00c51887  83c004  ADD EAX,0x4
00c5188a  89442430  MOV dword ptr [ESP + 0x30],EAX
00c5188e  8b00  MOV EAX,dword ptr [EAX]
00c51890  8d8870200000  LEA ECX,[EAX + 0x2070]
00c51896  894c242c  MOV dword ptr [ESP + 0x2c],ECX
00c5189a  89442424  MOV dword ptr [ESP + 0x24],EAX
00c5189e  8bf8  MOV EDI,EAX
00c518a0  3b7c2434  CMP EDI,dword ptr [ESP + 0x34]
00c518a4  0f85d6feffff  JNZ 0x00c51780
00c518aa  8b542420  MOV EDX,dword ptr [ESP + 0x20]
00c518ae  5e  POP ESI
00c518af  5d  POP EBP
00c518b0  5f  POP EDI
00c518b1  89938c030000  MOV dword ptr [EBX + 0x38c],EDX
00c518b7  5b  POP EBX
00c518b8  83c434  ADD ESP,0x34
00c518bb  c3  RET
00c518bc  5f  POP EDI
00c518bd  89838c030000  MOV dword ptr [EBX + 0x38c],EAX
00c518c3  5b  POP EBX
00c518c4  83c434  ADD ESP,0x34
00c518c7  c3  RET
