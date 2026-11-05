# Reference: ts3w-pc-1.67; Original identity: evidence/reference.json
# Function: GeneralAllocator_FreeChunk
# Entry VA: 004E5700; recorded half-open body: [004E5700,004E5863); 355 Original bytes / 123 instruction starts.
# Instruction text: actual Ghidra Listing, with independently retained Original PE bytes joined by exact instruction VA.
# Function name and semantic Plate were applied and read back in Ghidra; genuine final C and one reported project Save accompany this pair. No reopen or runtime test is claimed.
# Semantic Plate read back from Ghidra:
# Releases an allocator chunk through conditional bin/coalescing or region-dispatch paths; this is not a universal OS-free or successful-deallocation guarantee.
# ECX is the allocator, the one raw stack DWORD is the payload address, RET4. Null skips metadata updates. Nonnull reads headers at payload-10h/-0Ch and requires valid chunk/list state. Masked span<=allocator+4 enters a size bin; larger mask02-clear chunks coalesce/list-update and may call004E5080/004E54E0 for trimming. Mask02-set regions unlink and decrement allocator+48Ch/+488h accounting before KERNEL32!VirtualFree(base,0,8000h), whose result is not checked or rolled back here. Different paths leave unrelated EAX residues, with no normalized success result. Shared wrapper004E5E70 conditionally brackets this body with allocator locking; no global thread/ownership/liveness/OOM/rollback contract follows. Preserve current undefined nativeSignature/thiscall and int address-word parameter although C renders void and pointer casts; no type/ABI/boundary edit.

004E5700: 8b 44 24 04                                  MOV EAX, dword ptr [ESP + 0x4]
004E5704: 85 c0                                        TEST EAX, EAX
004E5706: 57                                           PUSH EDI
004E5707: 8b f9                                        MOV EDI, ECX
004E5709: 0f 84 50 01 00 00                            JZ 0x004e585f
004E570F: 8b 50 f4                                     MOV EDX, dword ptr [EAX + -0xc]
004E5712: 8b 4f 04                                     MOV ECX, dword ptr [EDI + 0x4]
004E5715: 83 c0 f0                                     ADD EAX, -0x10
004E5718: 56                                           PUSH ESI
004E5719: 8b f2                                        MOV ESI, EDX
004E571B: 81 e6 f8 ff ff 7f                            AND ESI, 0x7ffffff8
004E5721: 3b f1                                        CMP ESI, ECX
004E5723: 77 20                                        JA 0x004e5745
004E5725: 83 c9 01                                     OR ECX, 0x1
004E5728: 89 4f 04                                     MOV dword ptr [EDI + 0x4], ECX
004E572B: c1 ee 03                                     SHR ESI, 0x3
004E572E: 8b 14 b7                                     MOV EDX, dword ptr [EDI + ESI*0x4]
004E5731: 81 48 04 04 00 00 80                         OR dword ptr [EAX + 0x4], 0x80000004
004E5738: 8d 0c b7                                     LEA ECX, [EDI + ESI*0x4]
004E573B: 5e                                           POP ESI
004E573C: 89 50 0c                                     MOV dword ptr [EAX + 0xc], EDX
004E573F: 89 01                                        MOV dword ptr [ECX], EAX
004E5741: 5f                                           POP EDI
004E5742: c2 04 00                                     RET 0x4
004E5745: f6 c2 02                                     TEST DL, 0x2
004E5748: 53                                           PUSH EBX
004E5749: 55                                           PUSH EBP
004E574A: 0f 85 cf 00 00 00                            JNZ 0x004e581f
004E5750: 8b 6c 06 04                                  MOV EBP, dword ptr [ESI + EAX*0x1 + 0x4]
004E5754: 8d 0c 06                                     LEA ECX, [ESI + EAX*0x1]
004E5757: 81 e5 f8 ff ff 7f                            AND EBP, 0x7ffffff8
004E575D: f6 c2 01                                     TEST DL, 0x1
004E5760: 75 22                                        JNZ 0x004e5784
004E5762: 8b 10                                        MOV EDX, dword ptr [EAX]
004E5764: 2b c2                                        SUB EAX, EDX
004E5766: 03 f2                                        ADD ESI, EDX
004E5768: 8b d6                                        MOV EDX, ESI
004E576A: 83 ca 01                                     OR EDX, 0x1
004E576D: 89 50 04                                     MOV dword ptr [EAX + 0x4], EDX
004E5770: 89 31                                        MOV dword ptr [ECX], ESI
004E5772: 8b 50 08                                     MOV EDX, dword ptr [EAX + 0x8]
004E5775: 8b 58 0c                                     MOV EBX, dword ptr [EAX + 0xc]
004E5778: 89 5a 0c                                     MOV dword ptr [EDX + 0xc], EBX
004E577B: 8b 50 0c                                     MOV EDX, dword ptr [EAX + 0xc]
004E577E: 8b 58 08                                     MOV EBX, dword ptr [EAX + 0x8]
004E5781: 89 5a 08                                     MOV dword ptr [EDX + 0x8], EBX
004E5784: f6 44 29 04 01                               TEST byte ptr [ECX + EBP*0x1 + 0x4], 0x1
004E5789: 74 08                                        JZ 0x004e5793
004E578B: 83 61 04 fe                                  AND dword ptr [ECX + 0x4], 0xfffffffe
004E578F: 89 31                                        MOV dword ptr [ECX], ESI
004E5791: eb 1f                                        JMP 0x004e57b2
004E5793: 8b 51 08                                     MOV EDX, dword ptr [ECX + 0x8]
004E5796: 8b 59 0c                                     MOV EBX, dword ptr [ECX + 0xc]
004E5799: 89 5a 0c                                     MOV dword ptr [EDX + 0xc], EBX
004E579C: 8b 51 0c                                     MOV EDX, dword ptr [ECX + 0xc]
004E579F: 8b 59 08                                     MOV EBX, dword ptr [ECX + 0x8]
004E57A2: 89 5a 08                                     MOV dword ptr [EDX + 0x8], EBX
004E57A5: 03 f5                                        ADD ESI, EBP
004E57A7: 8b d6                                        MOV EDX, ESI
004E57A9: 83 ca 01                                     OR EDX, 0x1
004E57AC: 89 50 04                                     MOV dword ptr [EAX + 0x4], EDX
004E57AF: 89 34 06                                     MOV dword ptr [ESI + EAX*0x1], ESI
004E57B2: 8b 97 40 04 00 00                            MOV EDX, dword ptr [EDI + 0x440]
004E57B8: 3b c2                                        CMP EAX, EDX
004E57BA: 74 18                                        JZ 0x004e57d4
004E57BC: 3b ca                                        CMP ECX, EDX
004E57BE: 74 14                                        JZ 0x004e57d4
004E57C0: 8b 57 3c                                     MOV EDX, dword ptr [EDI + 0x3c]
004E57C3: 8d 4f 30                                     LEA ECX, [EDI + 0x30]
004E57C6: 89 48 08                                     MOV dword ptr [EAX + 0x8], ECX
004E57C9: 89 50 0c                                     MOV dword ptr [EAX + 0xc], EDX
004E57CC: 89 41 0c                                     MOV dword ptr [ECX + 0xc], EAX
004E57CF: 89 42 08                                     MOV dword ptr [EDX + 0x8], EAX
004E57D2: eb 17                                        JMP 0x004e57eb
004E57D4: 89 87 40 04 00 00                            MOV dword ptr [EDI + 0x440], EAX
004E57DA: 8b ce                                        MOV ECX, ESI
004E57DC: 83 c9 01                                     OR ECX, 0x1
004E57DF: 89 40 0c                                     MOV dword ptr [EAX + 0xc], EAX
004E57E2: 89 40 08                                     MOV dword ptr [EAX + 0x8], EAX
004E57E5: 89 48 04                                     MOV dword ptr [EAX + 0x4], ECX
004E57E8: 89 34 06                                     MOV dword ptr [ESI + EAX*0x1], ESI
004E57EB: 81 fe 00 00 01 00                            CMP ESI, 0x10000
004E57F1: 72 69                                        JC 0x004e585c
004E57F3: 8d 14 06                                     LEA EDX, [ESI + EAX*0x1]
004E57F6: 52                                           PUSH EDX
004E57F7: 8b cf                                        MOV ECX, EDI
004E57F9: e8 82 f8 ff ff                               CALL 0x004e5080
004E57FE: 84 c0                                        TEST AL, AL
004E5800: 74 5a                                        JZ 0x004e585c
004E5802: 3b b7 c8 04 00 00                            CMP ESI, dword ptr [EDI + 0x4c8]
004E5808: 72 52                                        JC 0x004e585c
004E580A: 8b 87 cc 04 00 00                            MOV EAX, dword ptr [EDI + 0x4cc]
004E5810: 50                                           PUSH EAX
004E5811: 8b cf                                        MOV ECX, EDI
004E5813: e8 c8 fc ff ff                               CALL 0x004e54e0
004E5818: 5d                                           POP EBP
004E5819: 5b                                           POP EBX
004E581A: 5e                                           POP ESI
004E581B: 5f                                           POP EDI
004E581C: c2 04 00                                     RET 0x4
004E581F: 8b 10                                        MOV EDX, dword ptr [EAX]
004E5821: 8b 6c 06 0c                                  MOV EBP, dword ptr [ESI + EAX*0x1 + 0xc]
004E5825: 8b c8                                        MOV ECX, EAX
004E5827: 8d 5c 32 10                                  LEA EBX, [EDX + ESI*0x1 + 0x10]
004E582B: 2b ca                                        SUB ECX, EDX
004E582D: 8d 54 06 0c                                  LEA EDX, [ESI + EAX*0x1 + 0xc]
004E5831: 8d 44 06 08                                  LEA EAX, [ESI + EAX*0x1 + 0x8]
004E5835: 8b 30                                        MOV ESI, dword ptr [EAX]
004E5837: 89 6e 0c                                     MOV dword ptr [ESI + 0xc], EBP
004E583A: 8b 12                                        MOV EDX, dword ptr [EDX]
004E583C: 8b 00                                        MOV EAX, dword ptr [EAX]
004E583E: 68 00 80 00 00                               PUSH 0x8000
004E5843: 6a 00                                        PUSH 0x0
004E5845: 89 42 08                                     MOV dword ptr [EDX + 0x8], EAX
004E5848: 29 9f 8c 04 00 00                            SUB dword ptr [EDI + 0x48c], EBX
004E584E: 83 87 88 04 00 00 ff                         ADD dword ptr [EDI + 0x488], -0x1
004E5855: 51                                           PUSH ECX
004E5856: ff 15 5c 62 f9 00                            CALL dword ptr [0x00f9625c]
004E585C: 5d                                           POP EBP
004E585D: 5b                                           POP EBX
004E585E: 5e                                           POP ESI
004E585F: 5f                                           POP EDI
004E5860: c2 04 00                                     RET 0x4
