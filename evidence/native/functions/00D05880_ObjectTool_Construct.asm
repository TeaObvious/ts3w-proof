# Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
# Filename/link maintenance only; historical bounds/instructions below, no fresh Listing or DB assertion.

# Actual saved-clean original PC1.67 owned Ghidra Listing
# Entry 00d05880 ObjectTool_Construct
# Body [[00d05880, 00d05d07]]; owned bytes=1160
# Constructor installs primary vtable01084370 at object0 and separate secondary tables. Primary+58 pointsD07300,+64D05FF0,+80CFF160,+18 existing007893B0. Initial snap89 is1; lifecycle initialized here. No claim that secondary01084360 is the primary vtable.
00d05880  55  PUSH EBP
00d05881  8bec  MOV EBP,ESP
00d05883  83e4f0  AND ESP,0xfffffff0
00d05886  51  PUSH ECX
00d05887  8b4508  MOV EAX,dword ptr [EBP + 0x8]
00d0588a  53  PUSH EBX
00d0588b  56  PUSH ESI
00d0588c  57  PUSH EDI
00d0588d  50  PUSH EAX
00d0588e  8bf1  MOV ESI,ECX
00d05890  e84b7ffeff  CALL 0x00ced7e0
00d05895  c74654cc3cfb00  MOV dword ptr [ESI + 0x54],0xfb3ccc
00d0589c  c7465830400801  MOV dword ptr [ESI + 0x58],0x1084030
00d058a3  33db  XOR EBX,EBX
00d058a5  c70670430801  MOV dword ptr [ESI],0x1084370
00d058ab  c7460868430801  MOV dword ptr [ESI + 0x8],0x1084368
00d058b2  c7465460430801  MOV dword ptr [ESI + 0x54],0x1084360
00d058b9  c74658d40e0801  MOV dword ptr [ESI + 0x58],0x1080ed4
00d058c0  895e5c  MOV dword ptr [ESI + 0x5c],EBX
00d058c3  895e60  MOV dword ptr [ESI + 0x60],EBX
00d058c6  895e64  MOV dword ptr [ESI + 0x64],EBX
00d058c9  895e68  MOV dword ptr [ESI + 0x68],EBX
00d058cc  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00d058d4  895e6c  MOV dword ptr [ESI + 0x6c],EBX
00d058d7  895e70  MOV dword ptr [ESI + 0x70],EBX
00d058da  895e74  MOV dword ptr [ESI + 0x74],EBX
00d058dd  895e78  MOV dword ptr [ESI + 0x78],EBX
00d058e0  895e7c  MOV dword ptr [ESI + 0x7c],EBX
00d058e3  899e80000000  MOV dword ptr [ESI + 0x80],EBX
00d058e9  899e84000000  MOV dword ptr [ESI + 0x84],EBX
00d058ef  0f57c9  XORPS XMM1,XMM1
00d058f2  889e88000000  MOV byte ptr [ESI + 0x88],BL
00d058f8  c6868900000001  MOV byte ptr [ESI + 0x89],0x1
00d058ff  889e8a000000  MOV byte ptr [ESI + 0x8a],BL
00d05905  889e8b000000  MOV byte ptr [ESI + 0x8b],BL
00d0590b  f30f118694000000  MOVSS dword ptr [ESI + 0x94],XMM0
00d05913  f30f118698000000  MOVSS dword ptr [ESI + 0x98],XMM0
00d0591b  899e9c000000  MOV dword ptr [ESI + 0x9c],EBX
00d05921  889eb0000000  MOV byte ptr [ESI + 0xb0],BL
00d05927  889eb1000000  MOV byte ptr [ESI + 0xb1],BL
00d0592d  889eb2000000  MOV byte ptr [ESI + 0xb2],BL
00d05933  c686b3000000ff  MOV byte ptr [ESI + 0xb3],0xff
00d0593a  c686b4000000ff  MOV byte ptr [ESI + 0xb4],0xff
00d05941  889eb5000000  MOV byte ptr [ESI + 0xb5],BL
00d05947  c686b6000000ff  MOV byte ptr [ESI + 0xb6],0xff
00d0594e  f30f118eb8000000  MOVSS dword ptr [ESI + 0xb8],XMM1
00d05956  f30f118ebc000000  MOVSS dword ptr [ESI + 0xbc],XMM1
00d0595e  899ec0000000  MOV dword ptr [ESI + 0xc0],EBX
00d05964  f30f1186c4000000  MOVSS dword ptr [ESI + 0xc4],XMM0
00d0596c  f30f1186c8000000  MOVSS dword ptr [ESI + 0xc8],XMM0
00d05974  899ecc000000  MOV dword ptr [ESI + 0xcc],EBX
00d0597a  0f57c0  XORPS XMM0,XMM0
00d0597d  0f2986d0000000  MOVAPS xmmword ptr [ESI + 0xd0],XMM0
00d05984  f30f118ee0000000  MOVSS dword ptr [ESI + 0xe0],XMM1
00d0598c  f30f118ee4000000  MOVSS dword ptr [ESI + 0xe4],XMM1
00d05994  f30f118ee8000000  MOVSS dword ptr [ESI + 0xe8],XMM1
00d0599c  899eec000000  MOV dword ptr [ESI + 0xec],EBX
00d059a2  f30f118ef0000000  MOVSS dword ptr [ESI + 0xf0],XMM1
00d059aa  f30f1005703f0801  MOVSS XMM0,dword ptr [0x01083f70]
00d059b2  f30f1186f4000000  MOVSS dword ptr [ESI + 0xf4],XMM0
00d059ba  c786f80000000dd1ae05  MOV dword ptr [ESI + 0xf8],0x5aed10d
00d059c4  899efc000000  MOV dword ptr [ESI + 0xfc],EBX
00d059ca  889e00010000  MOV byte ptr [ESI + 0x100],BL
00d059d0  c6860101000001  MOV byte ptr [ESI + 0x101],0x1
00d059d7  889e02010000  MOV byte ptr [ESI + 0x102],BL
00d059dd  889e03010000  MOV byte ptr [ESI + 0x103],BL
00d059e3  889e04010000  MOV byte ptr [ESI + 0x104],BL
00d059e9  899e08010000  MOV dword ptr [ESI + 0x108],EBX
00d059ef  899e0c010000  MOV dword ptr [ESI + 0x10c],EBX
00d059f5  899e10010000  MOV dword ptr [ESI + 0x110],EBX
00d059fb  899e18010000  MOV dword ptr [ESI + 0x118],EBX
00d05a01  899e1c010000  MOV dword ptr [ESI + 0x11c],EBX
00d05a07  899e20010000  MOV dword ptr [ESI + 0x120],EBX
00d05a0d  899e24010000  MOV dword ptr [ESI + 0x124],EBX
00d05a13  899e28010000  MOV dword ptr [ESI + 0x128],EBX
00d05a19  899e2c010000  MOV dword ptr [ESI + 0x12c],EBX
00d05a1f  899e30010000  MOV dword ptr [ESI + 0x130],EBX
00d05a25  899e34010000  MOV dword ptr [ESI + 0x134],EBX
00d05a2b  8d8e48010000  LEA ECX,[ESI + 0x148]
00d05a31  899e38010000  MOV dword ptr [ESI + 0x138],EBX
00d05a37  899e3c010000  MOV dword ptr [ESI + 0x13c],EBX
00d05a3d  899e40010000  MOV dword ptr [ESI + 0x140],EBX
00d05a43  899e44010000  MOV dword ptr [ESI + 0x144],EBX
00d05a49  e8d2a6f9ff  CALL 0x00ca0120
00d05a4e  8d8e80010000  LEA ECX,[ESI + 0x180]
00d05a54  e8c7a6f9ff  CALL 0x00ca0120
00d05a59  899eb8010000  MOV dword ptr [ESI + 0x1b8],EBX
00d05a5f  899ebc010000  MOV dword ptr [ESI + 0x1bc],EBX
00d05a65  899ec0010000  MOV dword ptr [ESI + 0x1c0],EBX
00d05a6b  899ec4010000  MOV dword ptr [ESI + 0x1c4],EBX
00d05a71  889ecc010000  MOV byte ptr [ESI + 0x1cc],BL
00d05a77  889ecd010000  MOV byte ptr [ESI + 0x1cd],BL
00d05a7d  889ece010000  MOV byte ptr [ESI + 0x1ce],BL
00d05a83  889ecf010000  MOV byte ptr [ESI + 0x1cf],BL
00d05a89  889ed0010000  MOV byte ptr [ESI + 0x1d0],BL
00d05a8f  889ed1010000  MOV byte ptr [ESI + 0x1d1],BL
00d05a95  c786d401000000d1ae05  MOV dword ptr [ESI + 0x1d4],0x5aed100
00d05a9f  c686d801000001  MOV byte ptr [ESI + 0x1d8],0x1
00d05aa6  889ed9010000  MOV byte ptr [ESI + 0x1d9],BL
00d05aac  889eda010000  MOV byte ptr [ESI + 0x1da],BL
00d05ab2  889edb010000  MOV byte ptr [ESI + 0x1db],BL
00d05ab8  889edd010000  MOV byte ptr [ESI + 0x1dd],BL
00d05abe  889ede010000  MOV byte ptr [ESI + 0x1de],BL
00d05ac4  889edf010000  MOV byte ptr [ESI + 0x1df],BL
00d05aca  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00d05ad2  83cfff  OR EDI,0xffffffff
00d05ad5  89bec8010000  MOV dword ptr [ESI + 0x1c8],EDI
00d05adb  899ee0010000  MOV dword ptr [ESI + 0x1e0],EBX
00d05ae1  899ee8010000  MOV dword ptr [ESI + 0x1e8],EBX
00d05ae7  899eec010000  MOV dword ptr [ESI + 0x1ec],EBX
00d05aed  899ef0010000  MOV dword ptr [ESI + 0x1f0],EBX
00d05af3  899ef4010000  MOV dword ptr [ESI + 0x1f4],EBX
00d05af9  899ef8010000  MOV dword ptr [ESI + 0x1f8],EBX
00d05aff  899efc010000  MOV dword ptr [ESI + 0x1fc],EBX
00d05b05  899e00020000  MOV dword ptr [ESI + 0x200],EBX
00d05b0b  899e04020000  MOV dword ptr [ESI + 0x204],EBX
00d05b11  f30f118608020000  MOVSS dword ptr [ESI + 0x208],XMM0
00d05b19  f30f11860c020000  MOVSS dword ptr [ESI + 0x20c],XMM0
00d05b21  899e10020000  MOV dword ptr [ESI + 0x210],EBX
00d05b27  899e18020000  MOV dword ptr [ESI + 0x218],EBX
00d05b2d  899e1c020000  MOV dword ptr [ESI + 0x21c],EBX
00d05b33  899e20020000  MOV dword ptr [ESI + 0x220],EBX
00d05b39  899e24020000  MOV dword ptr [ESI + 0x224],EBX
00d05b3f  c78628020000e8bd0601  MOV dword ptr [ESI + 0x228],0x106bde8
00d05b49  899e30020000  MOV dword ptr [ESI + 0x230],EBX
00d05b4f  899e34020000  MOV dword ptr [ESI + 0x234],EBX
00d05b55  899e38020000  MOV dword ptr [ESI + 0x238],EBX
00d05b5b  899e3c020000  MOV dword ptr [ESI + 0x23c],EBX
00d05b61  899e40020000  MOV dword ptr [ESI + 0x240],EBX
00d05b67  899e44020000  MOV dword ptr [ESI + 0x244],EBX
00d05b6d  899e48020000  MOV dword ptr [ESI + 0x248],EBX
00d05b73  899e4c020000  MOV dword ptr [ESI + 0x24c],EBX
00d05b79  899e50020000  MOV dword ptr [ESI + 0x250],EBX
00d05b7f  899e54020000  MOV dword ptr [ESI + 0x254],EBX
00d05b85  899e58020000  MOV dword ptr [ESI + 0x258],EBX
00d05b8b  899e5c020000  MOV dword ptr [ESI + 0x25c],EBX
00d05b91  899e60020000  MOV dword ptr [ESI + 0x260],EBX
00d05b97  899e64020000  MOV dword ptr [ESI + 0x264],EBX
00d05b9d  899e68020000  MOV dword ptr [ESI + 0x268],EBX
00d05ba3  8d8e70020000  LEA ECX,[ESI + 0x270]
00d05ba9  899e6c020000  MOV dword ptr [ESI + 0x26c],EBX
00d05baf  e88c1bddff  CALL 0x00ad7740
00d05bb4  f30f100518b2fa00  MOVSS XMM0,dword ptr [0x00fab218]
00d05bbc  889ef0020000  MOV byte ptr [ESI + 0x2f0],BL
00d05bc2  889ef1020000  MOV byte ptr [ESI + 0x2f1],BL
00d05bc8  889ef2020000  MOV byte ptr [ESI + 0x2f2],BL
00d05bce  889ef3020000  MOV byte ptr [ESI + 0x2f3],BL
00d05bd4  889ef4020000  MOV byte ptr [ESI + 0x2f4],BL
00d05bda  889ef5020000  MOV byte ptr [ESI + 0x2f5],BL
00d05be0  889ef6020000  MOV byte ptr [ESI + 0x2f6],BL
00d05be6  889ef7020000  MOV byte ptr [ESI + 0x2f7],BL
00d05bec  889efc020000  MOV byte ptr [ESI + 0x2fc],BL
00d05bf2  c78600030000ffffff7f  MOV dword ptr [ESI + 0x300],0x7fffffff
00d05bfc  899e04030000  MOV dword ptr [ESI + 0x304],EBX
00d05c02  899e08030000  MOV dword ptr [ESI + 0x308],EBX
00d05c08  899e1c030000  MOV dword ptr [ESI + 0x31c],EBX
00d05c0e  899e20030000  MOV dword ptr [ESI + 0x320],EBX
00d05c14  89be24030000  MOV dword ptr [ESI + 0x324],EDI
00d05c1a  f30f118628030000  MOVSS dword ptr [ESI + 0x328],XMM0
00d05c22  f30f11862c030000  MOVSS dword ptr [ESI + 0x32c],XMM0
00d05c2a  899e30030000  MOV dword ptr [ESI + 0x330],EBX
00d05c30  89be34030000  MOV dword ptr [ESI + 0x334],EDI
00d05c36  f30f118638030000  MOVSS dword ptr [ESI + 0x338],XMM0
00d05c3e  f30f11863c030000  MOVSS dword ptr [ESI + 0x33c],XMM0
00d05c46  899e40030000  MOV dword ptr [ESI + 0x340],EBX
00d05c4c  89be44030000  MOV dword ptr [ESI + 0x344],EDI
00d05c52  f30f118648030000  MOVSS dword ptr [ESI + 0x348],XMM0
00d05c5a  f30f11864c030000  MOVSS dword ptr [ESI + 0x34c],XMM0
00d05c62  899e50030000  MOV dword ptr [ESI + 0x350],EBX
00d05c68  899e54030000  MOV dword ptr [ESI + 0x354],EBX
00d05c6e  899e60030000  MOV dword ptr [ESI + 0x360],EBX
00d05c74  889e64030000  MOV byte ptr [ESI + 0x364],BL
00d05c7a  889e65030000  MOV byte ptr [ESI + 0x365],BL
00d05c80  889e66030000  MOV byte ptr [ESI + 0x366],BL
00d05c86  889e67030000  MOV byte ptr [ESI + 0x367],BL
00d05c8c  8d8e74030000  LEA ECX,[ESI + 0x374]
00d05c92  899e70030000  MOV dword ptr [ESI + 0x370],EBX
00d05c98  e8037479ff  CALL 0x0049d0a0
00d05c9d  53  PUSH EBX
00d05c9e  53  PUSH EBX
00d05c9f  53  PUSH EBX
00d05ca0  53  PUSH EBX
00d05ca1  6810f30701  PUSH 0x107f310
00d05ca6  899e90030000  MOV dword ptr [ESI + 0x390],EBX
00d05cac  6a40  PUSH 0x40
00d05cae  889e94030000  MOV byte ptr [ESI + 0x394],BL
00d05cb4  e847e87dff  CALL 0x004e4500
00d05cb9  83c418  ADD ESP,0x18
00d05cbc  3bc3  CMP EAX,EBX
00d05cbe  740b  JZ 0x00d05ccb
00d05cc0  8bc8  MOV ECX,EAX
00d05cc2  e8b955fcff  CALL 0x00ccb280
00d05cc7  8bf8  MOV EDI,EAX
00d05cc9  eb02  JMP 0x00d05ccd
00d05ccb  33ff  XOR EDI,EDI
00d05ccd  8b8ec4010000  MOV ECX,dword ptr [ESI + 0x1c4]
00d05cd3  3bf9  CMP EDI,ECX
00d05cd5  894c240c  MOV dword ptr [ESP + 0xc],ECX
00d05cd9  7422  JZ 0x00d05cfd
00d05cdb  3bfb  CMP EDI,EBX
00d05cdd  740d  JZ 0x00d05cec
00d05cdf  8b17  MOV EDX,dword ptr [EDI]
00d05ce1  8b4204  MOV EAX,dword ptr [EDX + 0x4]
00d05ce4  8bcf  MOV ECX,EDI
00d05ce6  ffd0  CALL EAX
00d05ce8  8b4c240c  MOV ECX,dword ptr [ESP + 0xc]
00d05cec  3bcb  CMP ECX,EBX
00d05cee  89bec4010000  MOV dword ptr [ESI + 0x1c4],EDI
00d05cf4  7407  JZ 0x00d05cfd
00d05cf6  8b11  MOV EDX,dword ptr [ECX]
00d05cf8  8b4208  MOV EAX,dword ptr [EDX + 0x8]
00d05cfb  ffd0  CALL EAX
00d05cfd  5f  POP EDI
00d05cfe  8bc6  MOV EAX,ESI
00d05d00  5e  POP ESI
00d05d01  5b  POP EBX
00d05d02  8be5  MOV ESP,EBP
00d05d04  5d  POP EBP
00d05d05  c20400  RET 0x4
