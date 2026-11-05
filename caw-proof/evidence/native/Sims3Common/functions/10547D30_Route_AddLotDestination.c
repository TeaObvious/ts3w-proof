/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_AddLotDestination. Export ordinal(s): 612.
   Entry VA: 0x10547d30. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600016D. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 __cdecl
Route_AddLotDestination
          (uint param_1,undefined4 param_2,undefined4 param_3,int param_4,undefined4 param_5,
          undefined4 param_6)

{
  uint in_EAX;
  int *piVar1;
  int *this;
  undefined4 *this_00;
  int *piVar2;
  undefined4 uVar3;
  uint uStack_8;
  uint uStack_4;
  
                    /* 0x547d30  612  Route_AddLotDestination */
  if (DAT_10c78944 != (void *)0x0) {
    piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
    in_EAX = 0;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x10))();
      this = (int *)FUN_105435a0((int)piVar1);
      if (this != (int *)0x0) {
        (**(code **)*this)();
        this_00 = (undefined4 *)FUN_10918eb0(0x38,"Routing/LotDestination",0);
        if (this_00 != (undefined4 *)0x0) {
          this_00[3] = 0;
          this_00[4] = 0;
          this_00[5] = 0;
          this_00[6] = 0;
          this_00[7] = 0;
          this_00[8] = 0;
          this_00[9] = 0;
          this_00[1] = 0;
          this_00[2] = 0;
          *this_00 = &PTR_LAB_10b1b824;
          this_00[0xc] = param_5;
          this_00[0xd] = param_6;
          this_00[10] = param_2;
          this_00[0xb] = param_3;
          if (param_4 != 0) {
            piVar2 = (int *)FUN_1055b120();
            uStack_4 = 0;
            uStack_8 = 0;
            (**(code **)(*piVar2 + 0x78))(param_4,&uStack_4,&uStack_8);
            FUN_1053c730(this_00,uStack_4,uStack_8);
          }
          FUN_1053fac0(this,(int)this_00);
          (**(code **)(*this + 4))();
          uVar3 = (**(code **)(*piVar1 + 0x14))();
          return CONCAT31((int3)((uint)uVar3 >> 8),1);
        }
        (**(code **)(*this + 4))();
      }
      in_EAX = (**(code **)(*piVar1 + 0x14))();
    }
  }
  return in_EAX & 0xffffff00;
}

