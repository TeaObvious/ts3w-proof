/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* PC 1.67 complete existing body [[004f40f0, 004f4412] [004f4420, 004f4677]]: 1403 original owned
   bytes/503 actual Listing instructions. Six physical conversion inputs:
   source/count/sourceEncoding/destination/inOutCapacity/destinationEncoding; plain RET. Owns two
   existing ranges004F40F0..004F4412 and004F4420..004F4677 with13-byte NONOWNED gap;
   six-target24-byte switch follows at004F4678, outside body. Return consumed source units; capacity
   becomes produced destination units. For8-to16, checks minimal2/3-byte forms but accepts encoded
   surrogate words;4-byte F0..F7 paths truncate through16-bit registers to one code unit, no
   surrogate pair/modern upper scalar check. For16-to8, zero-extended individual words encode
   separately (including surrogates), no pair combination, and only complete units fitting capacity
   are admitted. ASCII fast paths, equal-encoding copy and incompatible in-place0 are distinct.
   Other code pages use separate Win32/helper branches; concrete callees, aliasing/FP/platform
   behavior are not reconstructed by current CLR encoding. Preserve stored types, all switches/flow
   and gap bytes. */

uint __cdecl
Utf_ConvertEncodingUnits
          (LPCWSTR param_1,uint param_2,UINT param_3,LPWSTR param_4,uint *param_5,UINT param_6)

{
  byte bVar1;
  uint *puVar2;
  uint uVar3;
  UINT CodePage;
  uint uVar4;
  LPCWSTR pWVar5;
  WCHAR WVar6;
  uint uVar7;
  byte bVar8;
  byte bVar9;
  LPWSTR pWVar10;
  LPCWSTR pWVar11;
  int iVar12;
  UINT CodePage_00;
  size_t _Size;
  BOOL local_4;
  
  CodePage_00 = param_3;
  if (param_2 == 0) {
    *param_5 = 0;
    return 0;
  }
  uVar3 = param_2;
  if (param_2 == 0xffffffff) {
    if (0x20 < (int)param_3) {
      if ((0x4af < (int)param_3) && ((int)param_3 < 0x4b2)) goto LAB_004f412b;
LAB_004f4152:
      uVar3 = FUN_004fe2a0((char *)param_1);
      goto LAB_004f4136;
    }
    if (param_3 != 0x20) {
      if (param_3 != 0x10) goto LAB_004f4152;
LAB_004f412b:
      uVar3 = FUN_004fe2c0(param_1);
      goto LAB_004f4136;
    }
    uVar3 = FUN_004f3e90((int *)param_1);
  }
  else {
LAB_004f4136:
    if (CodePage_00 == 1) {
      CodePage_00 = 0x10;
    }
    else if ((CodePage_00 == 2) && (CodePage_00 = DAT_011cc920, DAT_011cc920 == 0)) {
      CodePage_00 = GetACP();
      DAT_011cc920 = CodePage_00;
    }
  }
  if (param_6 == 1) {
    CodePage = 0x10;
  }
  else {
    CodePage = param_6;
    if ((param_6 == 2) && (CodePage = DAT_011cc920, DAT_011cc920 == 0)) {
      CodePage = GetACP();
      DAT_011cc920 = CodePage;
    }
  }
  puVar2 = param_5;
  if (CodePage_00 != 0x10) {
    uVar4 = 0;
    if (uVar3 != 0) {
      do {
        if (0x7f < *(byte *)(uVar4 + (int)param_1)) goto LAB_004f41c2;
        uVar4 = uVar4 + 1;
      } while (uVar4 < uVar3);
    }
    CodePage_00 = 4;
  }
LAB_004f41c2:
  if (CodePage_00 == CodePage) {
LAB_004f4241:
    if (param_1 != param_4) {
      if (*param_5 <= uVar3) {
        uVar3 = *param_5;
      }
      if (param_4 != (LPWSTR)0x0) {
        _Size = uVar3;
        if (CodePage == 0x10) {
          _Size = uVar3 * 2;
        }
        memcpy(param_4,param_1,_Size);
      }
    }
    *puVar2 = uVar3;
    return uVar3;
  }
  if (CodePage_00 == 4) {
    if (CodePage != 0x10) goto LAB_004f4241;
  }
  else if (CodePage_00 == 0x10) {
    if (CodePage == 4) {
      if (*param_5 <= uVar3) {
        uVar3 = *param_5;
      }
      if (param_4 != (LPWSTR)0x0) {
        pWVar5 = param_1 + uVar3;
        for (; param_1 < pWVar5; param_1 = param_1 + 1) {
          *(char *)param_4 = (char)*param_1;
          param_4 = (LPWSTR)((int)param_4 + 1);
        }
      }
      *param_5 = uVar3;
      return uVar3;
    }
  }
  else if (CodePage == 4) goto LAB_004f4241;
  if (param_1 == param_4) {
    return 0;
  }
  if (CodePage_00 == 8) {
    if (CodePage == 0x10) {
      uVar4 = *param_5;
      pWVar11 = (LPCWSTR)(uVar3 + (int)param_1);
      pWVar5 = param_1;
      pWVar10 = param_4;
      if (param_1 < pWVar11) {
        iVar12 = (int)pWVar11 - (int)param_1;
        while (pWVar10 < param_4 + uVar4) {
          bVar1 = (byte)*pWVar5;
          if (bVar1 < 0x80) {
            WVar6 = (WCHAR)bVar1;
            pWVar5 = (LPCWSTR)((int)pWVar5 + 1);
            iVar12 = iVar12 + -1;
          }
          else {
            if (bVar1 < 0xc2) break;
            if (bVar1 < 0xe0) {
              if ((iVar12 < 2) || (bVar8 = *(byte *)((int)pWVar5 + 1) ^ 0x80, 0x3f < bVar8)) break;
              WVar6 = (ushort)(bVar1 & 0x1f) << 6 | (ushort)bVar8;
              pWVar5 = pWVar5 + 1;
              iVar12 = iVar12 + -2;
            }
            else if (bVar1 < 0xf0) {
              if (((iVar12 < 3) || (bVar8 = *(byte *)((int)pWVar5 + 1) ^ 0x80, 0x3f < bVar8)) ||
                 ((bVar9 = (byte)pWVar5[1] ^ 0x80, 0x3f < bVar9 ||
                  ((bVar1 < 0xe1 && (*(byte *)((int)pWVar5 + 1) < 0xa0)))))) break;
              WVar6 = ((ushort)bVar1 << 6 | (ushort)bVar8) << 6 | (ushort)bVar9;
              pWVar5 = (LPCWSTR)((int)pWVar5 + 3);
              iVar12 = iVar12 + -3;
            }
            else {
              if (((((0xf7 < bVar1) || (iVar12 < 4)) || (0x3f < (*(byte *)((int)pWVar5 + 1) ^ 0x80))
                   ) || ((bVar8 = (byte)pWVar5[1] ^ 0x80, 0x3f < bVar8 ||
                         (bVar9 = *(byte *)((int)pWVar5 + 3) ^ 0x80, 0x3f < bVar9)))) ||
                 ((bVar1 < 0xf1 && (*(byte *)((int)pWVar5 + 1) < 0x90)))) break;
              WVar6 = ((ushort)*(byte *)((int)pWVar5 + 1) << 6 | (ushort)bVar8) << 6 | (ushort)bVar9
              ;
              pWVar5 = pWVar5 + 2;
              iVar12 = iVar12 + -4;
            }
          }
          if (param_4 != (LPWSTR)0x0) {
            *pWVar10 = WVar6;
          }
          pWVar10 = pWVar10 + 1;
          if (pWVar11 <= pWVar5) break;
        }
      }
      *param_5 = (int)pWVar10 - (int)param_4 >> 1;
      return (int)pWVar5 - (int)param_1;
    }
LAB_004f456e:
    if (CodePage == 8) {
      uVar3 = FUN_004f3fd0(param_1,uVar3,CodePage_00,param_4,param_5,8);
      return uVar3;
    }
    if (CodePage_00 == 8) {
      if (CodePage != 0x10) {
        uVar3 = FUN_004f3fd0(param_1,uVar3,8,param_4,param_5,CodePage);
        return uVar3;
      }
LAB_004f45bf:
      if (param_4 == (LPWSTR)0x0) {
        return 0;
      }
      uVar4 = MultiByteToWideChar(CodePage_00,0,(LPCSTR)param_1,uVar3,param_4,*param_5);
      if (uVar4 != 0) {
        *puVar2 = uVar4;
        return uVar3;
      }
      *puVar2 = 0;
      return 0;
    }
    if (CodePage_00 != 0x10) {
      if (CodePage == 0x10) goto LAB_004f45bf;
      goto LAB_004f464d;
    }
  }
  else {
    if (CodePage_00 != 0x10) {
      if ((CodePage_00 == 4) && (CodePage == 0x10)) {
        if (*param_5 <= uVar3) {
          uVar3 = *param_5;
        }
        if ((param_4 != (LPWSTR)0x0) && (uVar4 = 0, uVar3 != 0)) {
          do {
            *param_4 = (ushort)*(byte *)(uVar4 + (int)param_1);
            uVar4 = uVar4 + 1;
            param_4 = param_4 + 1;
          } while (uVar4 < uVar3);
        }
        *param_5 = uVar3;
        return uVar3;
      }
      goto LAB_004f456e;
    }
    if (CodePage == 8) {
      uVar4 = *param_5;
      pWVar5 = param_1;
      pWVar10 = param_4;
      while (pWVar5 < param_1 + uVar3) {
        WVar6 = *pWVar5;
        uVar7 = (uint)(ushort)WVar6;
        if (uVar7 < 0x80) {
          iVar12 = 1;
        }
        else if (uVar7 < 0x800) {
          iVar12 = 2;
        }
        else if (uVar7 < 0x10000) {
          iVar12 = 3;
        }
        else if (uVar7 < 0x200000) {
          iVar12 = 4;
        }
        else if (uVar7 < 0x4000000) {
          iVar12 = 5;
        }
        else {
          if (0x7fffffff < uVar7) break;
          iVar12 = 6;
        }
        if ((LPWSTR)(uVar4 + (int)param_4) < (LPWSTR)(iVar12 + (int)pWVar10)) break;
        pWVar5 = pWVar5 + 1;
        if (param_4 != (LPWSTR)0x0) {
          switch(iVar12) {
          case 6:
            *(byte *)((int)pWVar10 + 5) = (byte)WVar6 & 0x3f | 0x80;
            uVar7 = (ushort)WVar6 >> 6 | 0x4000000;
          case 5:
            *(byte *)(pWVar10 + 2) = (byte)uVar7 & 0x3f | 0x80;
            uVar7 = (uVar7 | 0x8000000) >> 6;
          case 4:
            *(byte *)((int)pWVar10 + 3) = (byte)uVar7 & 0x3f | 0x80;
            uVar7 = (uVar7 | 0x400000) >> 6;
          case 3:
            *(byte *)(pWVar10 + 1) = (byte)uVar7 & 0x3f | 0x80;
            uVar7 = (uVar7 | 0x20000) >> 6;
          case 2:
            *(byte *)((int)pWVar10 + 1) = (byte)uVar7 & 0x3f | 0x80;
            uVar7 = (uVar7 | 0x3000) >> 6;
          case 1:
            *(char *)pWVar10 = (char)uVar7;
          }
        }
        pWVar10 = (LPWSTR)(iVar12 + (int)pWVar10);
      }
      *param_5 = (int)pWVar10 - (int)param_4;
      return (int)pWVar5 - (int)param_1 >> 1;
    }
  }
  if (CodePage != 0x10) {
    param_2 = CONCAT31(param_2._1_3_,0x20);
    local_4 = 0;
    if (param_4 == (LPWSTR)0x0) {
      return 0;
    }
    uVar4 = WideCharToMultiByte(CodePage,0,param_1,uVar3,(LPSTR)param_4,*param_5,(LPCSTR)&param_2,
                                &local_4);
    if (uVar4 != 0) {
      *puVar2 = uVar4;
      return uVar3;
    }
    *puVar2 = 0;
    return 0;
  }
LAB_004f464d:
  *param_5 = 0;
  return 0;
}

