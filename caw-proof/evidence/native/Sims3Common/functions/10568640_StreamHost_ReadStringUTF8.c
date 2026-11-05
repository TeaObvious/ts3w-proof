/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_ReadStringUTF8. Export ordinal(s):
   2460. Entry VA: 0x10568640. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F3C. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

int __cdecl StreamHost_ReadStringUTF8(uint param_1,int *param_2)

{
  byte bVar1;
  bool bVar2;
  uint uVar3;
  int *piVar4;
  int iVar5;
  undefined1 *unaff_ESI;
  uint uVar6;
  byte bVar7;
  undefined4 uStack_330;
  undefined1 *local_328;
  undefined1 *local_324;
  undefined1 **local_320;
  char *local_31c;
  undefined1 *local_318;
  undefined1 local_314 [240];
  undefined1 *puStack_224;
  LPWSTR pWStack_21c;
  undefined1 *local_214;
  undefined1 *local_210;
  undefined1 local_200 [512];
  
                    /* 0x568640  2460  StreamHost_ReadStringUTF8 */
  piVar4 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar4 = (int *)FUN_1055b120();
      piVar4 = (int *)(**(code **)(*piVar4 + 0xcc))(param_1);
      if (piVar4 != (int *)0x0) {
        DAT_10c7b0a4 = param_1;
        DAT_10c7b0a8 = piVar4;
      }
    }
    else {
      piVar4 = (int *)0x0;
    }
  }
  if (piVar4 == (int *)0x0) {
    return -2;
  }
  uVar6 = 0;
  *param_2 = 0;
  bVar7 = 0;
  do {
    bVar2 = FUN_109124b0(piVar4,(int)&uStack_330 + 3);
    if (!bVar2) {
      return 0;
    }
    bVar1 = bVar7 & 0x1f;
    bVar7 = bVar7 + 7;
    uVar6 = uVar6 + (((uint)uStack_330 >> 0x18 & 0x7f) << bVar1);
  } while ((int)uStack_330 < 0);
  if (uVar6 < 0x10001) {
    local_328 = local_314;
    local_320 = &local_214;
    local_31c = "Scripting/ReadStringSrc";
    local_324 = local_328;
    local_318 = local_328;
    FUN_1058cda0(&local_328,uVar6);
    local_214 = local_200;
    local_210 = local_214;
    FUN_105685e0(&local_214,uVar6);
    uVar3 = (**(code **)(*piVar4 + 0x30))(local_328,uVar6);
    if (uVar3 != uVar6) {
      if ((pWStack_21c != (LPWSTR)0x0) && (pWStack_21c != (LPWSTR)&stack0x00000000)) {
        FUN_10918e90((int)pWStack_21c);
      }
      if ((uStack_330 != (undefined1 **)0x0) && (uStack_330 != local_320)) {
        FUN_10918e90((int)uStack_330);
      }
      return (uint)(uVar3 != 0xffffffff) * 2 + -3;
    }
    uVar3 = FUN_10927300((LPCWSTR)uStack_330,uVar6,8,pWStack_21c,(uint *)&stack0xfffffccc,0x10);
    if (uVar3 == uVar6) {
      piVar4 = (int *)FUN_1055b120();
      iVar5 = (**(code **)(*piVar4 + 0x60))(pWStack_21c,uVar6);
      *param_2 = iVar5;
      if (iVar5 != 0) {
        if ((puStack_224 != (undefined1 *)0x0) && (puStack_224 != local_214)) {
          FUN_10918e90((int)puStack_224);
        }
        if ((unaff_ESI != (undefined1 *)0x0) && (unaff_ESI != local_328)) {
          FUN_10918e90((int)unaff_ESI);
        }
        return 0;
      }
      if ((puStack_224 != (undefined1 *)0x0) && (puStack_224 != local_214)) {
        FUN_10918e90((int)puStack_224);
      }
      if ((unaff_ESI != (undefined1 *)0x0) && (unaff_ESI != local_328)) {
        FUN_10918e90((int)unaff_ESI);
      }
      return -5;
    }
    if ((pWStack_21c != (LPWSTR)0x0) && (pWStack_21c != (LPWSTR)&stack0x00000000)) {
      FUN_10918e90((int)pWStack_21c);
    }
    if ((uStack_330 != (undefined1 **)0x0) && (uStack_330 != local_320)) {
      FUN_10918e90((int)uStack_330);
    }
  }
  return -4;
}

