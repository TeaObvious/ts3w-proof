/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ObjectManagerWrap_AddNewObjectAtLoc. Export
   ordinal(s): 1961. Entry VA: 0x10996400. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000252. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

undefined4 * __cdecl
ObjectManagerWrap_AddNewObjectAtLoc
          (int *param_1,undefined4 *param_2,undefined4 param_3,LPCWSTR param_4,undefined4 *param_5,
          undefined4 param_6,undefined4 param_7,undefined4 param_8)

{
  int *piVar1;
  int iVar2;
  undefined *puVar3;
  undefined **ppuVar4;
  undefined4 *puVar5;
  undefined *puVar6;
  undefined *puVar7;
  undefined *local_40;
  undefined *local_3c;
  undefined *local_38;
  char *local_34;
  int local_30 [2];
  int local_28;
  undefined4 local_20 [2];
  undefined4 *apuStack_18 [2];
  undefined4 local_10 [4];
  
                    /* 0x996400  1961  ObjectManagerWrap_AddNewObjectAtLoc */
  if (param_1 != (int *)0x0) {
    FUN_1055daa0(local_10,param_2);
    FUN_1055daa0(local_20,param_5);
    puVar7 = &DAT_10ca8245;
    puVar3 = (undefined *)0x0;
    local_34 = "Services/EffectName";
    local_40 = &_Dst_10ca8244;
    local_3c = &_Dst_10ca8244;
    local_38 = &DAT_10ca8245;
    puVar6 = &_Dst_10ca8244;
    if (param_4 != (LPCWSTR)0x0) {
      ppuVar4 = FUN_10926f20(local_30,param_4,0xffffffff,(char *)0x0);
      puVar3 = &_Dst_10ca8244;
      if (ppuVar4 != &local_40) {
        FUN_1000e8a0(&local_40,*ppuVar4,ppuVar4[1]);
        puVar3 = local_40;
        puVar7 = local_38;
      }
      puVar6 = puVar3;
      if ((1 < local_28 - local_30[0]) && (local_30[0] != 0)) {
        FUN_10918e90(local_30[0]);
      }
    }
    puVar5 = (undefined4 *)
             (**(code **)(*param_1 + 0x38))
                       (local_10,param_3,puVar3,local_20,param_6,param_7,param_8);
    FUN_10673770(apuStack_18,puVar5);
    if (apuStack_18[0] != (undefined4 *)0x0) {
      FUN_107282f0(0xb,apuStack_18[0],0);
      piVar1 = apuStack_18[0] + 1;
      LOCK();
      iVar2 = *piVar1;
      *piVar1 = *piVar1 + -1;
      UNLOCK();
      if (iVar2 == 1) {
        LOCK();
        *piVar1 = 1;
        UNLOCK();
        (**(code **)*apuStack_18[0])(1);
      }
    }
    if ((1 < (int)puVar7 - (int)puVar6) && (puVar6 != (undefined *)0x0)) {
      FUN_10918e90((int)puVar6);
    }
    return apuStack_18[0];
  }
  return (undefined4 *)0x0;
}

