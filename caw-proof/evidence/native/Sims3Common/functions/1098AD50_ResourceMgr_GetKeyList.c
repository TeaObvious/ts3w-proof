/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_GetKeyList. Export ordinal(s): 2027.
   Entry VA: 0x1098ad50. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000897. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
ResourceMgr_GetKeyList
          (undefined4 param_1,uint param_2,undefined4 *param_3,int param_4,int param_5,int param_6)

{
  void *pvVar1;
  int *piVar2;
  int iVar3;
  undefined *puVar4;
  int iVar5;
  undefined4 *puVar6;
  undefined4 *puVar7;
  undefined ***pppuVar8;
  undefined **local_54;
  undefined **local_50;
  undefined **local_4c;
  undefined4 *local_48;
  int local_44 [2];
  undefined **local_3c;
  undefined4 *local_38;
  undefined **local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined **local_24;
  undefined **local_20;
  int local_1c;
  int local_18;
  int local_14;
  undefined **local_10;
  undefined4 *local_c;
  int local_8;
  int local_4;
  
                    /* 0x98ad50  2027  ResourceMgr_GetKeyList */
  piVar2 = (int *)FUN_108e50d0();
  pvVar1 = DAT_10cb8078;
  if (piVar2 != (int *)0x0) {
    local_30 = 0;
    local_2c = 0;
    local_28 = 0;
    local_24 = (undefined **)0x10b96e40;
    local_4c = &PTR_LAB_10ab5a24;
    local_48 = param_3;
    local_54 = &PTR_LAB_10b96e14;
    local_50 = (undefined **)param_4;
    local_3c = &PTR_LAB_10b96e1c;
    local_38 = param_3;
    local_34 = (undefined **)param_4;
    local_10 = &PTR_LAB_10b592d4;
    local_c = param_3;
    local_8 = param_5;
    local_4 = param_6;
    local_20 = &PTR_LAB_10b96e24;
    local_1c = param_4;
    local_18 = param_5;
    local_14 = param_6;
    if (param_3 == (undefined4 *)0x0) {
      pppuVar8 = (undefined ***)0x0;
      if ((param_4 != 0) && (pppuVar8 = &local_20, param_5 == 0 && param_6 == 0)) {
        pppuVar8 = &local_54;
      }
    }
    else if (param_4 == 0) {
      if (param_5 == 0 && param_6 == 0) {
        pppuVar8 = &local_4c;
      }
      else {
        pppuVar8 = &local_10;
      }
    }
    else {
      pppuVar8 = &local_3c;
    }
    if (param_2 == 0) {
      iVar3 = (**(code **)(*piVar2 + 0x20))(&local_30,pppuVar8,0);
    }
    else {
      FUN_106a8410(DAT_10cb8078,local_44,&param_2);
      if (local_44[0] == *(int *)(*(int *)((int)pvVar1 + 4) + *(int *)((int)pvVar1 + 8) * 4)) {
        return;
      }
      iVar3 = (**(code **)(**(int **)(local_44[0] + 4) + 0x30))(&local_30,pppuVar8);
    }
    puVar4 = (undefined *)Ordinal_411(0x13,0,iVar3 * 4);
    if (puVar4 != (undefined *)0x0) {
      iVar5 = Ordinal_21(puVar4);
      if (iVar5 < 0) {
        Ordinal_16(puVar4);
      }
      else {
        puVar6 = *(undefined4 **)(puVar4 + 0xc);
        puVar7 = local_48;
        for (; iVar3 != 0; iVar3 = iVar3 + -1) {
          *puVar6 = puVar7[2];
          puVar6[1] = puVar7[3];
          puVar6[2] = *puVar7;
          puVar6[3] = puVar7[1];
          puVar7 = puVar7 + 4;
          puVar6 = puVar6 + 4;
        }
        Ordinal_22(puVar4);
        *local_10 = puVar4;
      }
    }
    local_34 = &PTR_LAB_10ab3a7c;
    local_24 = &PTR_LAB_10ab3a7c;
    local_50 = &PTR_LAB_10ab3a7c;
    if (local_44[0] != 0) {
      FUN_10918e90(local_44[0]);
    }
  }
  return;
}

