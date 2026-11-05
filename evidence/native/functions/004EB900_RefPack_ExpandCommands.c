/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 bounded RefPack command expander, cdecl four stack DWORDs output/capacity/input/inputSize,
   caller removes16bytes; full EAX return. Existing302-instruction Listing owns922bytes in925-byte
   envelope4EB900..4EBC9C, with unreachable8D4900 gap4EBA7D..7F unchanged. Checks remaining
   input/output and preceding-copy source for each command; byte-copy loops permit overlap. FC..FF
   copies final0..3 literals then returns header-declared expanded size, ignores trailing input and
   does not compare actual output count with declaration. Input exhaustion without terminal returns0
   even when output capacity was filled. Wrapper4EC560 adds magic and declared-size query; this
   kernel alone also accepts optional size header. Managed exact-output validation is stricter and
   retained for memory safety; no original malformed/OOM/runtime parity claimed. */

int __cdecl RefPack_ExpandCommands(byte *param_1,uint param_2,byte *param_3,uint param_4)

{
  byte bVar1;
  byte bVar2;
  byte bVar3;
  uint uVar4;
  int iVar5;
  byte *pbVar6;
  byte *pbVar7;
  byte *pbVar8;
  byte *pbVar9;
  uint uVar10;
  int iVar11;
  byte *pbVar12;
  
  if (param_3 == (byte *)0x0) {
    return 0;
  }
  if (1 < param_4) {
    bVar1 = *param_3;
    uVar10 = param_4 - 2;
    pbVar6 = param_3 + 2;
    if ((bVar1 & 0x80) == 0) {
      if ((bVar1 & 1) != 0) {
        if (uVar10 < 3) {
          return 0;
        }
        uVar10 = param_4 - 5;
        pbVar6 = param_3 + 5;
      }
      if (uVar10 < 3) {
        return 0;
      }
      uVar4 = (uint)*pbVar6;
      iVar11 = uVar10 - 3;
    }
    else {
      if ((bVar1 & 1) != 0) {
        if (uVar10 < 4) {
          return 0;
        }
        uVar10 = param_4 - 6;
        pbVar6 = param_3 + 6;
      }
      if (uVar10 < 4) {
        return 0;
      }
      bVar1 = *pbVar6;
      pbVar9 = pbVar6 + 1;
      pbVar6 = pbVar6 + 1;
      iVar11 = uVar10 - 4;
      uVar4 = (uint)CONCAT11(bVar1,*pbVar9);
    }
    iVar5 = (uVar4 * 0x100 + (uint)pbVar6[1]) * 0x100 + (uint)pbVar6[2];
    pbVar6 = pbVar6 + 3;
    pbVar9 = param_1;
    while (iVar11 != 0) {
      bVar1 = *pbVar6;
      uVar10 = iVar11 - 1;
      pbVar7 = pbVar6 + 1;
      if ((char)bVar1 < '\0') {
        if ((bVar1 & 0x40) == 0) {
          if (uVar10 < 2) {
            return 0;
          }
          param_3 = (byte *)(uint)*pbVar7;
          bVar2 = pbVar6[2];
          uVar10 = (uint)(*pbVar7 >> 6);
          pbVar6 = pbVar6 + 3;
          if (param_2 < uVar10) {
            return 0;
          }
          uVar4 = param_2 - uVar10;
          if (iVar11 - 3U < uVar10) {
            return 0;
          }
          iVar11 = (iVar11 - 3U) - uVar10;
          for (; uVar10 != 0; uVar10 = uVar10 - 1) {
            *pbVar9 = *pbVar6;
            pbVar9 = pbVar9 + 1;
            pbVar6 = pbVar6 + 1;
          }
          pbVar7 = pbVar9 + (((uint)param_3 & 0x3f) * -0x100 - (uint)bVar2) + -1;
          if (pbVar7 < param_1) {
            return 0;
          }
          if (pbVar9 <= pbVar7) {
            return 0;
          }
          uVar10 = (bVar1 & 0x3f) + 4;
          if (uVar4 < uVar10) {
            return 0;
          }
          param_2 = uVar4 - uVar10;
          for (; uVar10 != 0; uVar10 = uVar10 - 1) {
            *pbVar9 = *pbVar7;
            pbVar9 = pbVar9 + 1;
            pbVar7 = pbVar7 + 1;
          }
        }
        else if ((bVar1 & 0x20) == 0) {
          if (uVar10 < 3) {
            return 0;
          }
          bVar2 = *pbVar7;
          bVar3 = pbVar6[2];
          uVar4 = (uint)bVar1;
          param_3 = (byte *)(uint)pbVar6[3];
          uVar10 = uVar4 & 3;
          pbVar6 = pbVar6 + 4;
          if (param_2 < uVar10) {
            return 0;
          }
          pbVar7 = (byte *)(param_2 - uVar10);
          if (iVar11 - 4U < uVar10) {
            return 0;
          }
          iVar11 = (iVar11 - 4U) - uVar10;
          if ((bVar1 & 3) != 0) {
            do {
              uVar10 = uVar10 - 1;
              *pbVar9 = *pbVar6;
              pbVar9 = pbVar9 + 1;
              pbVar6 = pbVar6 + 1;
            } while (uVar10 != 0);
          }
          pbVar12 = pbVar9 + (((uint)bVar2 * -0x100 + (uVar4 & 0x10) * -0x1000) - (uint)bVar3) + -1;
          if (pbVar12 < param_1) {
            return 0;
          }
          if (pbVar9 <= pbVar12) {
            return 0;
          }
          pbVar8 = param_3 + (uVar4 & 0xc) * 0x40 + 5;
          if (pbVar7 < pbVar8) {
            return 0;
          }
          param_2 = (int)pbVar7 - (int)pbVar8;
          for (; pbVar8 != (byte *)0x0; pbVar8 = pbVar8 + -1) {
            *pbVar9 = *pbVar12;
            pbVar9 = pbVar9 + 1;
            pbVar12 = pbVar12 + 1;
          }
        }
        else {
          uVar4 = (bVar1 & 0x1f) * 4 + 4;
          if (0x70 < uVar4) {
            uVar4 = bVar1 & 3;
            if (param_2 < uVar4) {
              return 0;
            }
            if (uVar10 < uVar4) {
              return 0;
            }
            if ((bVar1 & 3) == 0) {
              return iVar5;
            }
            do {
              uVar4 = uVar4 - 1;
              *pbVar9 = *pbVar7;
              pbVar9 = pbVar9 + 1;
              pbVar7 = pbVar7 + 1;
            } while (uVar4 != 0);
            return iVar5;
          }
          if (param_2 < uVar4) {
            return 0;
          }
          param_2 = param_2 - uVar4;
          if (uVar10 < uVar4) {
            return 0;
          }
          iVar11 = uVar10 - uVar4;
          pbVar6 = pbVar7;
          for (; uVar4 != 0; uVar4 = uVar4 - 1) {
            *pbVar9 = *pbVar6;
            pbVar9 = pbVar9 + 1;
            pbVar6 = pbVar6 + 1;
          }
        }
      }
      else {
        if (uVar10 == 0) {
          return 0;
        }
        param_3 = (byte *)(uint)*pbVar7;
        uVar10 = bVar1 & 3;
        pbVar6 = pbVar6 + 2;
        if (param_2 < uVar10) {
          return 0;
        }
        uVar4 = param_2 - uVar10;
        if (iVar11 - 2U < uVar10) {
          return 0;
        }
        iVar11 = (iVar11 - 2U) - uVar10;
        if ((bVar1 & 3) != 0) {
          do {
            uVar10 = uVar10 - 1;
            *pbVar9 = *pbVar6;
            pbVar9 = pbVar9 + 1;
            pbVar6 = pbVar6 + 1;
          } while (uVar10 != 0);
        }
        pbVar7 = pbVar9 + ((bVar1 & 0x60) * -8 - (int)param_3) + -1;
        if (pbVar7 < param_1) {
          return 0;
        }
        if (pbVar9 <= pbVar7) {
          return 0;
        }
        uVar10 = (bVar1 >> 2 & 7) + 3;
        if (uVar4 < uVar10) {
          return 0;
        }
        param_2 = uVar4 - uVar10;
        for (; uVar10 != 0; uVar10 = uVar10 - 1) {
          *pbVar9 = *pbVar7;
          pbVar9 = pbVar9 + 1;
          pbVar7 = pbVar7 + 1;
        }
      }
    }
  }
  return 0;
}

