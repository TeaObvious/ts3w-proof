; PC1.67 original owned Listing; original bytes checked against the reference file.
; Name: ScriptCore.CASUtils::CASUtils_SimBuilderSetFacialBlendImpl
; Ghidra-owned ranges (inclusive): 005A68B0..005A691B
; Gaps are excluded; C projection and return-register limitations are documented in the paired file.

005A68B0  83EC10                          SUB ESP, 0x10
005A68B3  56                              PUSH ESI
005A68B4  8B742418                        MOV ESI, dword ptr [ESP + 0x18]
005A68B8  8BC6                            MOV EAX, ESI
005A68BA  25000000FF                      AND EAX, 0xff000000
005A68BF  3D00000035                      CMP EAX, 0x35000000
005A68C4  754F                            JNZ 0x005a6915
005A68C6  E8C52A1C00                      CALL 0x00769390
005A68CB  8B10                            MOV EDX, dword ptr [EAX]
005A68CD  8BC8                            MOV ECX, EAX
005A68CF  8B82CC000000                    MOV EAX, dword ptr [EDX + 0xcc]
005A68D5  56                              PUSH ESI
005A68D6  FFD0                            CALL EAX
005A68D8  85C0                            TEST EAX, EAX
005A68DA  7439                            JZ 0x005a6915
005A68DC  8B4C2424                        MOV ECX, dword ptr [ESP + 0x24]
005A68E0  D944242C                        FLD float ptr [ESP + 0x2c]
005A68E4  8B542428                        MOV EDX, dword ptr [ESP + 0x28]
005A68E8  894C2404                        MOV dword ptr [ESP + 0x4], ECX
005A68EC  8B4C241C                        MOV ECX, dword ptr [ESP + 0x1c]
005A68F0  51                              PUSH ECX
005A68F1  894C2410                        MOV dword ptr [ESP + 0x10], ECX
005A68F5  D91C24                          FSTP float ptr [ESP]
005A68F8  8D4C2408                        LEA ECX, [ESP + 0x8]
005A68FC  8954240C                        MOV dword ptr [ESP + 0xc], EDX
005A6900  8B542424                        MOV EDX, dword ptr [ESP + 0x24]
005A6904  51                              PUSH ECX
005A6905  8BC8                            MOV ECX, EAX
005A6907  89542418                        MOV dword ptr [ESP + 0x18], EDX
005A690B  E870D00300                      CALL 0x005e3980
005A6910  5E                              POP ESI
005A6911  83C410                          ADD ESP, 0x10
005A6914  C3                              RET
005A6915  32C0                            XOR AL, AL
005A6917  5E                              POP ESI
005A6918  83C410                          ADD ESP, 0x10
005A691B  C3                              RET
