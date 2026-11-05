/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* CAW 1.22.10 Sims3Common.dll PE export identity: AnimationComponent_LoopBindPose. Export
   ordinal(s): 1645. Entry VA: 0x109813a0. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x0600032F. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl AnimationComponent_LoopBindPose(undefined4 param_1,uint param_2)

{
  int iVar1;
  char cVar2;
  void *this;
  undefined4 uVar3;
  int *piVar4;
  undefined4 *puVar5;
  int *piVar6;
  int local_1f0 [107];
  undefined1 auStack_44 [28];
  undefined4 uStack_28;
  undefined4 uStack_24;
  undefined1 uStack_1a;
  void *pvStack_14;
  
                    /* 0x9813a0  1645  AnimationComponent_LoopBindPose */
  this = (void *)FUN_103e5fe0();
  if (this != (void *)0x0) {
    local_1f0[1] = 0;
    local_1f0[2] = 0;
    local_1f0[3] = 0;
    local_1f0[4] = 0;
    uVar3 = FUN_103e7350(this,param_2,local_1f0 + 1);
    if ((char)uVar3 != '\0') {
      piVar4 = (int *)FUN_108e50d0();
      piVar6 = local_1f0;
      cVar2 = (**(code **)(*piVar4 + 0xc))(local_1f0 + 1,piVar6,0,0,0,0);
      if (cVar2 != '\0') {
        FUN_10732b40((undefined4 *)&stack0xfffffe0c);
        FUN_100286d0(auStack_44,piVar6);
        uStack_28 = 0;
        uStack_24 = 0;
        uStack_1a = 1;
        puVar5 = FUN_1072fa50(pvStack_14,(uint *)&stack0xfffffe0c);
        uVar3 = DAT_10aae184;
        if (puVar5 != (undefined4 *)0x0) {
          puVar5[1] = puVar5[1] + 1;
          (**(code **)(*(int *)((int)pvStack_14 + 8) + 0x14))(0,puVar5,0,0,uVar3,0,0,0,0);
        }
        (**(code **)(*piVar6 + 4))();
        if ((puVar5 != (undefined4 *)0x0) &&
           (iVar1 = puVar5[1], puVar5[1] = iVar1 + -1, iVar1 + -1 == 0)) {
          puVar5[1] = 1;
          (**(code **)*puVar5)(1);
        }
        FUN_105e7970((int)&stack0xfffffe0c);
      }
    }
  }
  return;
}

