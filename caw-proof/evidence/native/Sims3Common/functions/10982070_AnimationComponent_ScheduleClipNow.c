/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_ScheduleClipNow. Export
   ordinal(s): 1648. Entry VA: 0x10982070. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600032C. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl
AnimationComponent_ScheduleClipNow(undefined4 param_1,undefined4 param_2,undefined4 *param_3)

{
  int iVar1;
  undefined4 uVar2;
  char cVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  uint uStack_1f4;
  undefined1 local_1f0 [4];
  int local_1ec;
  undefined4 local_1e8;
  undefined4 local_1e4;
  undefined4 local_1e0;
  int *piStack_44;
  undefined4 uStack_34;
  undefined4 uStack_30;
  undefined4 uStack_28;
  undefined1 uStack_1c;
  void *pvStack_14;
  undefined4 uStack_10;
  undefined4 uStack_8;
  undefined1 uStack_4;
  
                    /* 0x982070  1648  AnimationComponent_ScheduleClipNow */
  local_1ec = param_3[2];
  local_1e8 = param_3[3];
  local_1e4 = *param_3;
  local_1e0 = param_3[1];
  uStack_1f4 = 0x1098209d;
  piVar4 = (int *)FUN_108e50d0();
  uStack_1f4 = 0;
  piVar6 = &local_1ec;
  cVar3 = (**(code **)(*piVar4 + 0xc))(piVar6,local_1f0,0,0,0);
  if (cVar3 != '\0') {
    FUN_10732b40(&uStack_1f4);
    uStack_30 = uStack_10;
    piVar4 = piStack_44;
    if (piVar6 != piStack_44) {
      if (piVar6 != (int *)0x0) {
        (**(code **)*piVar6)();
      }
      piVar4 = piVar6;
      if (piStack_44 != (int *)0x0) {
        iVar1 = *piStack_44;
        piStack_44 = piVar6;
        (**(code **)(iVar1 + 4))();
        piVar4 = piStack_44;
      }
    }
    piStack_44 = piVar4;
    uStack_1c = uStack_4;
    uStack_28 = uStack_8;
    uStack_34 = 0;
    puVar5 = FUN_1072fa50(pvStack_14,&uStack_1f4);
    uVar2 = DAT_10aae184;
    if (puVar5 != (undefined4 *)0x0) {
      puVar5[1] = puVar5[1] + 1;
      (**(code **)(*(int *)((int)pvStack_14 + 8) + 0x14))(uStack_10,puVar5,2,uStack_8,uVar2,0,0,0,0)
      ;
    }
    (**(code **)(*piVar6 + 4))();
    if ((puVar5 != (undefined4 *)0x0) &&
       (iVar1 = puVar5[1], puVar5[1] = iVar1 + -1, iVar1 + -1 == 0)) {
      puVar5[1] = 1;
      (**(code **)*puVar5)(1);
    }
    FUN_105e7970((int)&uStack_1f4);
  }
  return;
}

