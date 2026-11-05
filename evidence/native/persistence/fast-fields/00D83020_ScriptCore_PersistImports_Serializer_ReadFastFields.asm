Original PC 1.67 TS3W.exe; final saved Ghidra Listing with original PE bytes.
Entry: 0x00D83020 (ScriptCore.PersistImports::Serializer_ReadFastFields)
Paired annotated Ghidra pseudocode: 00D83020_ScriptCore_PersistImports_Serializer_ReadFastFields.c
Owned half-open ranges: [['0xd83020', '0xd83038']]
Owned bytes: 24; Listing instructions: 9
Original identity: references/pc-167.md. Every instruction independently decoded from PE.
Function ownership and generated ABI remain unchanged; semantic annotations were read back.
JNE D83032 enters separately owned D83038; the registered operation extends beyond this fragment.

SAVED GHIDRA LISTING WITH ORIGINAL BYTES
  00d83020: 8b 44 24 0c                                  MOV EAX, dword ptr [ESP + 0xc]
  00d83024: 83 ec 2c                                     SUB ESP, 0x2c
  00d83027: 50                                           PUSH EAX
  00d83028: e8 53 1e 9f ff                               CALL 0x00774e80
  00d8302d: 83 c4 04                                     ADD ESP, 0x4
  00d83030: 85 c0                                        TEST EAX, EAX
  00d83032: 75 04                                        JNZ 0x00d83038 ; Nonzero resolved stream in EAX enters separately defined continuation D83038. It inherits this entry's allocated 0x2C-byte stack frame, not an ordinary CALL frame.
  00d83034: 83 c4 2c                                     ADD ESP, 0x2c
  00d83037: c3                                           RET
