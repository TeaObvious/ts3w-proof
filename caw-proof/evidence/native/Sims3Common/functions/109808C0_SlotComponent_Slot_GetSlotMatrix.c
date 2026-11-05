/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SlotComponent_Slot_GetSlotMatrix. Export
   ordinal(s): 2428. Entry VA: 0x109808c0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600095D. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
SlotComponent_Slot_GetSlotMatrix
          (undefined4 *param_1,undefined4 param_2,undefined4 param_3,int *param_4,char param_5)

{
  char cVar1;
  int iVar2;
  int *piVar3;
  void *pvVar4;
  undefined4 uVar5;
  undefined4 *puVar6;
  undefined1 *puVar7;
  undefined1 auStack_94 [56];
  undefined4 auStack_5c [2];
  undefined1 auStack_54 [80];
  
                    /* 0x9808c0  2428  SlotComponent_Slot_GetSlotMatrix */
  if (param_4 != (int *)0x0) {
    iVar2 = (**(code **)(*param_4 + 8))(1);
    if (iVar2 != 0) {
      if (param_5 == '\0') {
        cVar1 = (**(code **)(*param_4 + 0x10))();
        if (cVar1 != '\0') {
          iVar2 = FUN_104f31a0();
          piVar3 = (int *)FUN_104f36d0(iVar2);
          pvVar4 = (void *)GameObjectFactoryWrap_Find();
          if ((piVar3 != (int *)0x0) && (pvVar4 != (void *)0x0)) {
            iVar2 = *piVar3;
            puVar7 = auStack_94;
            uVar5 = FUN_105ff2d0(pvVar4);
            cVar1 = (**(code **)(iVar2 + 0x2c))(uVar5,puVar7);
            if (cVar1 != '\0') {
              puVar6 = (undefined4 *)FUN_10980020(auStack_5c,(undefined4 *)&stack0xffffff64);
              for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
                *param_1 = *puVar6;
                puVar6 = puVar6 + 1;
                param_1 = param_1 + 1;
              }
              return;
            }
          }
          goto LAB_1098099c;
        }
      }
      puVar6 = (undefined4 *)(**(code **)(*param_4 + 0x14))(auStack_54);
      puVar6 = (undefined4 *)FUN_10980020((undefined4 *)&stack0xffffff68,puVar6);
      for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
        *param_1 = *puVar6;
        puVar6 = puVar6 + 1;
        param_1 = param_1 + 1;
      }
      return;
    }
  }
LAB_1098099c:
  puVar6 = &DAT_10b96350;
  for (iVar2 = 0x10; iVar2 != 0; iVar2 = iVar2 + -1) {
    *param_1 = *puVar6;
    puVar6 = puVar6 + 1;
    param_1 = param_1 + 1;
  }
  return;
}

