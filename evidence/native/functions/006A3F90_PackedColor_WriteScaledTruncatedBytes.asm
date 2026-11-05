# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

; Original PC1.67 TS3W.exe complete existing owned Listing.
; Analyst-assigned name: PackedColor_WriteScaledTruncatedBytes
; Owned ranges: [[006a3f90, 006a406f]]
; Actual entry PLATE: PC1.67 ECX output buffer and four float stack lanes, RET16. Load actual referenced scalar once, preserve x87 control and select truncation with OR0xC00 before each FISTP; restore original control, compare low32 conversion unsigned against255, choose255 when greater and write low byte at output offsets0/1/2/3. The caller6A6270 passes B/G/R/A. Decompiler ROUND is not proof of round-to-nearest. Scalar exact bits require separate receipt; arbitrary negative/NaN/out-of-range inputs and saved analysis return metadata do not establish a new normalized-color or Boolean contract.

006a3f90  83ec08  SUB ESP,0x8
006a3f93  d944240c  FLD float ptr [ESP + 0xc]
006a3f97  d9053441fa00  FLD float ptr [0x00fa4134]
006a3f9d  d97c240c  FNSTCW word ptr [ESP + 0xc]
006a3fa1  0fb744240c  MOVZX EAX,word ptr [ESP + 0xc]
006a3fa6  dcc9  FMUL ST1
006a3fa8  0d000c0000  OR EAX,0xc00
006a3fad  d9c9  FXCH
006a3faf  890424  MOV dword ptr [ESP],EAX
006a3fb2  d92c24  FLDCW word ptr [ESP]
006a3fb5  df3c24  FISTP qword ptr [ESP]
006a3fb8  8b0424  MOV EAX,dword ptr [ESP]
006a3fbb  3dff000000  CMP EAX,0xff
006a3fc0  d96c240c  FLDCW word ptr [ESP + 0xc]
006a3fc4  7605  JBE 0x006a3fcb
006a3fc6  b8ff000000  MOV EAX,0xff
006a3fcb  d9442410  FLD float ptr [ESP + 0x10]
006a3fcf  8801  MOV byte ptr [ECX],AL
006a3fd1  d97c240c  FNSTCW word ptr [ESP + 0xc]
006a3fd5  0fb744240c  MOVZX EAX,word ptr [ESP + 0xc]
006a3fda  d8c9  FMUL ST1
006a3fdc  0d000c0000  OR EAX,0xc00
006a3fe1  89442410  MOV dword ptr [ESP + 0x10],EAX
006a3fe5  d96c2410  FLDCW word ptr [ESP + 0x10]
006a3fe9  df3c24  FISTP qword ptr [ESP]
006a3fec  8b0424  MOV EAX,dword ptr [ESP]
006a3fef  3dff000000  CMP EAX,0xff
006a3ff4  d96c240c  FLDCW word ptr [ESP + 0xc]
006a3ff8  7605  JBE 0x006a3fff
006a3ffa  b8ff000000  MOV EAX,0xff
006a3fff  d9442414  FLD float ptr [ESP + 0x14]
006a4003  884101  MOV byte ptr [ECX + 0x1],AL
006a4006  d97c240c  FNSTCW word ptr [ESP + 0xc]
006a400a  0fb744240c  MOVZX EAX,word ptr [ESP + 0xc]
006a400f  d8c9  FMUL ST1
006a4011  0d000c0000  OR EAX,0xc00
006a4016  89442410  MOV dword ptr [ESP + 0x10],EAX
006a401a  d96c2410  FLDCW word ptr [ESP + 0x10]
006a401e  df3c24  FISTP qword ptr [ESP]
006a4021  8b0424  MOV EAX,dword ptr [ESP]
006a4024  3dff000000  CMP EAX,0xff
006a4029  d96c240c  FLDCW word ptr [ESP + 0xc]
006a402d  7605  JBE 0x006a4034
006a402f  b8ff000000  MOV EAX,0xff
006a4034  d84c2418  FMUL float ptr [ESP + 0x18]
006a4038  884102  MOV byte ptr [ECX + 0x2],AL
006a403b  d97c240c  FNSTCW word ptr [ESP + 0xc]
006a403f  0fb744240c  MOVZX EAX,word ptr [ESP + 0xc]
006a4044  0d000c0000  OR EAX,0xc00
006a4049  89442410  MOV dword ptr [ESP + 0x10],EAX
006a404d  d96c2410  FLDCW word ptr [ESP + 0x10]
006a4051  df3c24  FISTP qword ptr [ESP]
006a4054  8b0424  MOV EAX,dword ptr [ESP]
006a4057  3dff000000  CMP EAX,0xff
006a405c  d96c240c  FLDCW word ptr [ESP + 0xc]
006a4060  7605  JBE 0x006a4067
006a4062  b8ff000000  MOV EAX,0xff
006a4067  884103  MOV byte ptr [ECX + 0x3],AL
006a406a  83c408  ADD ESP,0x8
006a406d  c21000  RET 0x10
