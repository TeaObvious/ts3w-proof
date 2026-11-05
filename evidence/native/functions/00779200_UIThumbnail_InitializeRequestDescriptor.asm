# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

Original PC1.67 TS3W.exe; complete existing Ghidra function body.
Annotated entry: 0x00779200 (UIThumbnail_InitializeRequestDescriptor)
Paired actual Ghidra pseudocode: 00779200_UIThumbnail_InitializeRequestDescriptor.c
Body [0x00779200,0x00779328); 296 pristine original bytes / 79 actual saved Listing instructions.
Every byte belongs to the contiguous saved body; no padding or neighboring code is included.
Physical registers, low-byte results, stack cleanup and floating-point bit patterns govern.

SAVED GHIDRA LISTING WITH PRISTINE ORIGINAL BYTES
00779200 <original>:
  00779200:	53                                             	PUSH EBX
  00779201:	56                                             	PUSH ESI
  00779202:	8b f1                                          	MOV ESI,ECX
  00779204:	8d 46 18                                       	LEA EAX,[ESI + 0x18]
  00779207:	89 46 10                                       	MOV dword ptr [ESI + 0x10],EAX
  0077920a:	89 46 04                                       	MOV dword ptr [ESI + 0x4],EAX
  0077920d:	89 06                                          	MOV dword ptr [ESI],EAX
  0077920f:	83 c0 60                                       	ADD EAX,0x60
  00779212:	89 46 08                                       	MOV dword ptr [ESI + 0x8],EAX
  00779215:	8b 44 24 0c                                    	MOV EAX,dword ptr [ESP + 0xc]
  00779219:	89 46 78                                       	MOV dword ptr [ESI + 0x78],EAX
  0077921c:	8b 44 24 10                                    	MOV EAX,dword ptr [ESP + 0x10]
  00779220:	89 46 7c                                       	MOV dword ptr [ESI + 0x7c],EAX
  00779223:	8b 44 24 14                                    	MOV EAX,dword ptr [ESP + 0x14]
  00779227:	89 86 80 00 00 00                              	MOV dword ptr [ESI + 0x80],EAX
  0077922d:	8b 44 24 18                                    	MOV EAX,dword ptr [ESP + 0x18]
  00779231:	89 86 84 00 00 00                              	MOV dword ptr [ESI + 0x84],EAX
  00779237:	8b 44 24 1c                                    	MOV EAX,dword ptr [ESP + 0x1c]
  0077923b:	89 86 88 00 00 00                              	MOV dword ptr [ESI + 0x88],EAX
  00779241:	8b 44 24 20                                    	MOV EAX,dword ptr [ESP + 0x20]
  00779245:	89 86 8c 00 00 00                              	MOV dword ptr [ESI + 0x8c],EAX
  0077924b:	b9 c8 aa f9 00                                 	MOV ECX,0xf9aac8
  00779250:	89 4e 0c                                       	MOV dword ptr [ESI + 0xc],ECX
  00779253:	8d 86 a8 00 00 00                              	LEA EAX,[ESI + 0xa8]
  00779259:	89 86 a0 00 00 00                              	MOV dword ptr [ESI + 0xa0],EAX
  0077925f:	89 86 94 00 00 00                              	MOV dword ptr [ESI + 0x94],EAX
  00779265:	89 86 90 00 00 00                              	MOV dword ptr [ESI + 0x90],EAX
  0077926b:	83 c0 10                                       	ADD EAX,0x10
  0077926e:	89 8e 9c 00 00 00                              	MOV dword ptr [ESI + 0x9c],ECX
  00779274:	89 86 98 00 00 00                              	MOV dword ptr [ESI + 0x98],EAX
  0077927a:	57                                             	PUSH EDI
  0077927b:	8d 86 b8 00 00 00                              	LEA EAX,[ESI + 0xb8]
  00779281:	ba 03 00 00 00                                 	MOV EDX,0x3
  00779286:	33 c9                                          	XOR ECX,ECX
  00779288:	89 08                                          	MOV dword ptr [EAX],ECX
  0077928a:	89 48 04                                       	MOV dword ptr [EAX + 0x4],ECX
  0077928d:	89 48 08                                       	MOV dword ptr [EAX + 0x8],ECX
  00779290:	89 48 0c                                       	MOV dword ptr [EAX + 0xc],ECX
  00779293:	83 c0 10                                       	ADD EAX,0x10
  00779296:	83 ea 01                                       	SUB EDX,0x1
  00779299:	79 ed                                          	JNS 0x00779288
  0077929b:	8b 54 24 38                                    	MOV EDX,dword ptr [ESP + 0x38]
  0077929f:	8b 44 24 28                                    	MOV EAX,dword ptr [ESP + 0x28]
  007792a3:	89 96 fc 00 00 00                              	MOV dword ptr [ESI + 0xfc],EDX
  007792a9:	8b 54 24 30                                    	MOV EDX,dword ptr [ESP + 0x30]
  007792ad:	89 86 00 01 00 00                              	MOV dword ptr [ESI + 0x100],EAX
  007792b3:	8b 44 24 40                                    	MOV EAX,dword ptr [ESP + 0x40]
  007792b7:	89 96 08 01 00 00                              	MOV dword ptr [ESI + 0x108],EDX
  007792bd:	8b 54 24 44                                    	MOV EDX,dword ptr [ESP + 0x44]
  007792c1:	89 86 0c 01 00 00                              	MOV dword ptr [ESI + 0x10c],EAX
  007792c7:	8a 44 24 3c                                    	MOV AL,byte ptr [ESP + 0x3c]
  007792cb:	89 96 10 01 00 00                              	MOV dword ptr [ESI + 0x110],EDX
  007792d1:	8a 54 24 34                                    	MOV DL,byte ptr [ESP + 0x34]
  007792d5:	83 ec 10                                       	SUB ESP,0x10
  007792d8:	88 86 14 01 00 00                              	MOV byte ptr [ESI + 0x114],AL
  007792de:	8b c4                                          	MOV EAX,ESP
  007792e0:	88 96 15 01 00 00                              	MOV byte ptr [ESI + 0x115],DL
  007792e6:	33 d2                                          	XOR EDX,EDX
  007792e8:	89 10                                          	MOV dword ptr [EAX],EDX
  007792ea:	33 ff                                          	XOR EDI,EDI
  007792ec:	89 78 04                                       	MOV dword ptr [EAX + 0x4],EDI
  007792ef:	33 db                                          	XOR EBX,EBX
  007792f1:	89 58 08                                       	MOV dword ptr [EAX + 0x8],EBX
  007792f4:	89 48 0c                                       	MOV dword ptr [EAX + 0xc],ECX
  007792f7:	8b 44 24 58                                    	MOV EAX,dword ptr [ESP + 0x58]
  007792fb:	89 8e 04 01 00 00                              	MOV dword ptr [ESI + 0x104],ECX
  00779301:	89 8e 18 01 00 00                              	MOV dword ptr [ESI + 0x118],ECX
  00779307:	89 8e 1c 01 00 00                              	MOV dword ptr [ESI + 0x11c],ECX
  0077930d:	89 8e 20 01 00 00                              	MOV dword ptr [ESI + 0x120],ECX
  00779313:	8b 4c 24 3c                                    	MOV ECX,dword ptr [ESP + 0x3c]
  00779317:	50                                             	PUSH EAX
  00779318:	51                                             	PUSH ECX
  00779319:	8b ce                                          	MOV ECX,ESI
  0077931b:	e8 90 d9 e6 ff                                 	CALL 0x005e6cb0
  00779320:	5f                                             	POP EDI
  00779321:	8b c6                                          	MOV EAX,ESI
  00779323:	5e                                             	POP ESI
  00779324:	5b                                             	POP EBX
  00779325:	c2 3c 00                                       	RET 0x3c
