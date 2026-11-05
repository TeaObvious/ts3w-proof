# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

TS3W.exe PC 1.67 original-byte window and independent linear disassembly
Annotated Ghidra entry: 0x00ec96e0 (RegisterNativeScriptClasses)
Paired Ghidra pseudocode: 00EC96E0_RegisterNativeScriptClasses.c
Window: [0x00ec96e0, 0x00ec97e0) (256 bytes; stop exclusive)
Next defined Ghidra entry: 0x00ec97e0
Boundary rule: entry to the lesser of the next defined Ghidra entry
and an 8 KiB byte cap measured from this entry.
This is a bounded byte window, not a proven function extent; it can include padding
or data, and branches or noncontiguous body blocks can lead outside the window.
A next-entry bound can miss embedded routines and hidden branch targets.
GNU objdump decodes linearly in Intel syntax; control-flow interpretation requires
checking the bytes, Ghidra export, and call/branch targets together.

ORIGINAL BYTES (16 per line)
00ec96e0: 56 8b 74 24 08 56 e8 35 9d 99 ff 56 e8 df fd 6d
00ec96f0: ff 56 e8 49 c2 ac ff 56 e8 e3 3b 8a ff 56 e8 3d
00ec9700: 6a 87 ff 56 e8 07 7c 87 ff 56 e8 71 1a 8a ff 56
00ec9710: e8 9b 12 88 ff 56 e8 55 b6 8a ff 56 e8 8f 87 87
00ec9720: ff 56 e8 f9 87 87 ff 56 e8 33 c6 8a ff 56 e8 bd
00ec9730: 52 8c ff 56 e8 37 98 87 ff 56 e8 a1 de 89 ff 56
00ec9740: e8 fb 90 87 ff 83 c4 40 56 e8 12 cc 88 ff 56 e8
00ec9750: cc a9 8b ff 56 e8 a6 4e 8a ff 56 e8 40 d6 8a ff
00ec9760: 56 e8 1a a3 87 ff 56 e8 14 b4 87 ff 56 e8 2e 2d
00ec9770: 87 ff 56 e8 08 a4 87 ff 56 e8 72 5b 87 ff 56 e8
00ec9780: 7c c8 87 ff 56 e8 a6 79 8a ff 56 e8 a0 6e 87 ff
00ec9790: 56 e8 4a bd 87 ff 56 e8 f4 0a 87 ff 56 e8 8e 00
00ec97a0: 88 ff 56 e8 98 2f 87 ff 83 c4 40 56 e8 7f e4 8a
00ec97b0: ff 56 e8 09 ae 8b ff 56 e8 73 b2 8b ff 56 e8 2d
00ec97c0: 4c 87 ff 56 e8 67 e0 e1 ff 56 e8 81 c5 dc ff 56
00ec97d0: e8 cb ff 87 ff 56 e8 95 b5 ff ff 83 c4 20 5e c3

LINEAR DISASSEMBLY
00ec96e0 <.text+0xac86e0>:
  ec96e0:	56                                              	push   esi
  ec96e1:	8b 74 24 08                                     	mov    esi,DWORD PTR [esp+0x8]
  ec96e5:	56                                              	push   esi
  ec96e6:	e8 35 9d 99 ff                                  	call   0x863420
  ec96eb:	56                                              	push   esi
  ec96ec:	e8 df fd 6d ff                                  	call   0x5a94d0
  ec96f1:	56                                              	push   esi
  ec96f2:	e8 49 c2 ac ff                                  	call   0x995940
  ec96f7:	56                                              	push   esi
  ec96f8:	e8 e3 3b 8a ff                                  	call   0x76d2e0
  ec96fd:	56                                              	push   esi
  ec96fe:	e8 3d 6a 87 ff                                  	call   0x740140
  ec9703:	56                                              	push   esi
  ec9704:	e8 07 7c 87 ff                                  	call   0x741310
  ec9709:	56                                              	push   esi
  ec970a:	e8 71 1a 8a ff                                  	call   0x76b180
  ec970f:	56                                              	push   esi
  ec9710:	e8 9b 12 88 ff                                  	call   0x74a9b0
  ec9715:	56                                              	push   esi
  ec9716:	e8 55 b6 8a ff                                  	call   0x774d70
  ec971b:	56                                              	push   esi
  ec971c:	e8 8f 87 87 ff                                  	call   0x741eb0
  ec9721:	56                                              	push   esi
  ec9722:	e8 f9 87 87 ff                                  	call   0x741f20
  ec9727:	56                                              	push   esi
  ec9728:	e8 33 c6 8a ff                                  	call   0x775d60
  ec972d:	56                                              	push   esi
  ec972e:	e8 bd 52 8c ff                                  	call   0x78e9f0
  ec9733:	56                                              	push   esi
  ec9734:	e8 37 98 87 ff                                  	call   0x742f70
  ec9739:	56                                              	push   esi
  ec973a:	e8 a1 de 89 ff                                  	call   0x7675e0
  ec973f:	56                                              	push   esi
  ec9740:	e8 fb 90 87 ff                                  	call   0x742840
  ec9745:	83 c4 40                                        	add    esp,0x40
  ec9748:	56                                              	push   esi
  ec9749:	e8 12 cc 88 ff                                  	call   0x756360
  ec974e:	56                                              	push   esi
  ec974f:	e8 cc a9 8b ff                                  	call   0x784120
  ec9754:	56                                              	push   esi
  ec9755:	e8 a6 4e 8a ff                                  	call   0x76e600
  ec975a:	56                                              	push   esi
  ec975b:	e8 40 d6 8a ff                                  	call   0x776da0
  ec9760:	56                                              	push   esi
  ec9761:	e8 1a a3 87 ff                                  	call   0x743a80
  ec9766:	56                                              	push   esi
  ec9767:	e8 14 b4 87 ff                                  	call   0x744b80
  ec976c:	56                                              	push   esi
  ec976d:	e8 2e 2d 87 ff                                  	call   0x73c4a0
  ec9772:	56                                              	push   esi
  ec9773:	e8 08 a4 87 ff                                  	call   0x743b80
  ec9778:	56                                              	push   esi
  ec9779:	e8 72 5b 87 ff                                  	call   0x73f2f0
  ec977e:	56                                              	push   esi
  ec977f:	e8 7c c8 87 ff                                  	call   0x746000
  ec9784:	56                                              	push   esi
  ec9785:	e8 a6 79 8a ff                                  	call   0x771130
  ec978a:	56                                              	push   esi
  ec978b:	e8 a0 6e 87 ff                                  	call   0x740630
  ec9790:	56                                              	push   esi
  ec9791:	e8 4a bd 87 ff                                  	call   0x7454e0
  ec9796:	56                                              	push   esi
  ec9797:	e8 f4 0a 87 ff                                  	call   0x73a290
  ec979c:	56                                              	push   esi
  ec979d:	e8 8e 00 88 ff                                  	call   0x749830
  ec97a2:	56                                              	push   esi
  ec97a3:	e8 98 2f 87 ff                                  	call   0x73c740
  ec97a8:	83 c4 40                                        	add    esp,0x40
  ec97ab:	56                                              	push   esi
  ec97ac:	e8 7f e4 8a ff                                  	call   0x777c30
  ec97b1:	56                                              	push   esi
  ec97b2:	e8 09 ae 8b ff                                  	call   0x7845c0
  ec97b7:	56                                              	push   esi
  ec97b8:	e8 73 b2 8b ff                                  	call   0x784a30
  ec97bd:	56                                              	push   esi
  ec97be:	e8 2d 4c 87 ff                                  	call   0x73e3f0
  ec97c3:	56                                              	push   esi
  ec97c4:	e8 67 e0 e1 ff                                  	call   0xce7830
  ec97c9:	56                                              	push   esi
  ec97ca:	e8 81 c5 dc ff                                  	call   0xc95d50
  ec97cf:	56                                              	push   esi
  ec97d0:	e8 cb ff 87 ff                                  	call   0x7497a0
  ec97d5:	56                                              	push   esi
  ec97d6:	e8 95 b5 ff ff                                  	call   0xec4d70
  ec97db:	83 c4 20                                        	add    esp,0x20
  ec97de:	5e                                              	pop    esi
  ec97df:	c3                                              	ret
