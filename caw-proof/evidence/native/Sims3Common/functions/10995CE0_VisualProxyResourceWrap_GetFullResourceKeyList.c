/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: VisualProxyResourceWrap_GetFullResourceKeyList.
   Export ordinal(s): 2546. Entry VA: 0x10995ce0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000A0D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

int __cdecl VisualProxyResourceWrap_GetFullResourceKeyList(int param_1)

{
  undefined4 *puVar1;
  int iVar2;
  int iVar3;
  undefined4 *puVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  int *unaff_EBX;
  int iVar8;
  int *piVar9;
  int unaff_ESI;
  int iVar10;
  int iVar11;
  int local_8;
  int local_4;
  
                    /* 0x995ce0  2546  VisualProxyResourceWrap_GetFullResourceKeyList */
  iVar11 = (*(int *)(param_1 + 0x2c) - *(int *)(param_1 + 0x28)) / 0x14;
  iVar8 = 0;
  local_8 = 0;
  if (iVar11 != 0) {
    piVar9 = (int *)(*(int *)(param_1 + 0x28) + 8);
    local_4 = iVar11;
    do {
      iVar8 = *piVar9 - piVar9[-1] >> 4;
      if (iVar8 == 0) {
        puVar1 = (undefined4 *)0x0;
      }
      else {
        puVar1 = (undefined4 *)FUN_10918eb0(iVar8 << 4,piVar9[2],0);
      }
      puVar4 = (undefined4 *)*piVar9;
      puVar5 = puVar1;
      for (puVar7 = (undefined4 *)piVar9[-1]; puVar7 != puVar4; puVar7 = puVar7 + 4) {
        if (puVar5 != (undefined4 *)0x0) {
          *puVar5 = *puVar7;
          puVar5[1] = puVar7[1];
          puVar5[2] = puVar7[2];
          puVar5[3] = puVar7[3];
        }
        puVar5 = puVar5 + 4;
      }
      iVar8 = local_8 + ((int)puVar5 - (int)puVar1 >> 4);
      piVar9 = piVar9 + 5;
      if (puVar1 != (undefined4 *)0x0) {
        FUN_10918e90((int)puVar1);
      }
      local_4 = local_4 + -1;
      local_8 = iVar8;
    } while (local_4 != 0);
  }
  iVar10 = iVar8 * 4;
  iVar2 = Ordinal_411(0x13,0);
  if (iVar2 != 0) {
    iVar3 = Ordinal_21(iVar2);
    if (-1 < iVar3) {
      puVar1 = *(undefined4 **)(iVar2 + 0xc);
      if (iVar11 != 0) {
        piVar9 = (int *)(unaff_EBX[10] + 8);
        do {
          iVar8 = *piVar9 - piVar9[-1] >> 4;
          if (iVar8 == 0) {
            puVar4 = (undefined4 *)0x0;
          }
          else {
            puVar4 = (undefined4 *)FUN_10918eb0(iVar8 << 4,piVar9[2],0);
          }
          puVar7 = (undefined4 *)*piVar9;
          puVar6 = puVar4;
          for (puVar5 = (undefined4 *)piVar9[-1]; puVar5 != puVar7; puVar5 = puVar5 + 4) {
            if (puVar6 != (undefined4 *)0x0) {
              *puVar6 = *puVar5;
              puVar6[1] = puVar5[1];
              puVar6[2] = puVar5[2];
              puVar6[3] = puVar5[3];
            }
            puVar6 = puVar6 + 4;
          }
          piVar9 = piVar9 + 5;
          puVar7 = puVar4;
          for (iVar8 = (int)puVar6 - (int)puVar4 >> 4; iVar8 != 0; iVar8 = iVar8 + -1) {
            *puVar1 = puVar7[2];
            puVar1[1] = puVar7[3];
            puVar1[2] = *puVar7;
            puVar1[3] = puVar7[1];
            puVar7 = puVar7 + 4;
            puVar1 = puVar1 + 4;
          }
          if (puVar4 != (undefined4 *)0x0) {
            FUN_10918e90((int)puVar4);
          }
          iVar11 = iVar11 + -1;
        } while (iVar11 != 0);
        unaff_EBX = (int *)0x0;
        iVar2 = unaff_ESI;
      }
      Ordinal_22(iVar2);
      *unaff_EBX = iVar2;
      return iVar10;
    }
    Ordinal_16(iVar2);
  }
  return iVar8;
}

