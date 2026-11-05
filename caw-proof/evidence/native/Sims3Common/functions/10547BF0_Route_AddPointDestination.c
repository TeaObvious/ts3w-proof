/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_AddPointDestination. Export ordinal(s):
   616. Entry VA: 0x10547bf0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600016C. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl
Route_AddPointDestination(uint param_1,undefined4 param_2,undefined4 param_3,int param_4)

{
  undefined4 uVar1;
  undefined4 uVar2;
  uint in_EAX;
  int *piVar3;
  int *this;
  undefined4 *puVar4;
  void *this_00;
  int *piVar5;
  undefined4 uVar6;
  uint uStack_28;
  uint uStack_24;
  undefined4 auStack_20 [7];
  
                    /* 0x547bf0  616  Route_AddPointDestination */
  if (DAT_10c78944 != (void *)0x0) {
    piVar3 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    in_EAX = 0;
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x10))();
      this = (int *)FUN_105435a0((int)piVar3);
      if (this != (int *)0x0) {
        (**(code **)*this)();
        puVar4 = (undefined4 *)FUN_10918eb0(0x50,"Routing/PointDestination",0);
        if (puVar4 != (undefined4 *)0x0) {
          this_00 = (void *)FUN_1053fb00(puVar4);
          if (this_00 != (void *)0x0) {
            puVar4 = (undefined4 *)FUN_1055db20(&stack0x00000014,auStack_20);
            uVar6 = puVar4[1];
            uVar1 = puVar4[2];
            uVar2 = puVar4[3];
            *(undefined4 *)((int)this_00 + 0x30) = *puVar4;
            *(undefined4 *)((int)this_00 + 0x34) = uVar6;
            *(undefined4 *)((int)this_00 + 0x38) = uVar1;
            *(undefined4 *)((int)this_00 + 0x3c) = uVar2;
            puVar4 = (undefined4 *)FUN_1055db20(&stack0x00000020,auStack_20);
            uVar6 = puVar4[1];
            uVar1 = puVar4[2];
            uVar2 = puVar4[3];
            *(undefined4 *)((int)this_00 + 0x40) = *puVar4;
            *(undefined4 *)((int)this_00 + 0x44) = uVar6;
            *(undefined4 *)((int)this_00 + 0x48) = uVar1;
            *(undefined4 *)((int)this_00 + 0x4c) = uVar2;
            *(undefined4 *)((int)this_00 + 0x28) = param_2;
            *(undefined4 *)((int)this_00 + 0x2c) = param_3;
            if (param_4 != 0) {
              piVar5 = (int *)FUN_1055b120();
              uStack_24 = 0;
              uStack_28 = 0;
              (**(code **)(*piVar5 + 0x78))(param_4,&uStack_24,&uStack_28);
              FUN_1053c730(this_00,uStack_24,uStack_28);
            }
            FUN_1053fac0(this,(int)this_00);
            (**(code **)(*this + 4))();
            uVar6 = (**(code **)(*piVar3 + 0x14))();
            return CONCAT31((int3)((uint)uVar6 >> 8),1);
          }
        }
        (**(code **)(*this + 4))();
      }
      in_EAX = (**(code **)(*piVar3 + 0x14))();
    }
  }
  return in_EAX & 0xffffff00;
}

