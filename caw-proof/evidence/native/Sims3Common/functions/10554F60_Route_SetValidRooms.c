/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Route_SetValidRooms. Export ordinal(s): 698.
   Entry VA: 0x10554f60. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000171. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Route_SetValidRooms(uint param_1,int param_2,int param_3,int param_4,int param_5)

{
  int *this;
  int *piVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  uint uStack_8;
  int iStack_4;
  
                    /* 0x554f60  698  Route_SetValidRooms */
  piVar1 = (int *)FUN_1053c0f0(DAT_10c78944,param_1);
  if (piVar1 == (int *)0x0) {
    return;
  }
  (**(code **)(*piVar1 + 0x10))();
  piVar2 = (int *)FUN_105435a0((int)piVar1);
  if (piVar2 != (int *)0x0) {
    (**(code **)*piVar2)();
    this = piVar2 + 8;
    iStack_4 = 0;
    uStack_8 = 0;
    if (param_4 != 0) {
      piVar3 = (int *)FUN_1055b120();
      (**(code **)(*piVar3 + 0x74))(param_4,&iStack_4,&uStack_8);
    }
    piVar2[0xe] = param_2;
    piVar2[0xf] = param_3;
    if ((iStack_4 == 0) || ((int)uStack_8 < 1)) {
      piVar2[9] = *this;
    }
    else {
      piVar2[0xc] = param_5;
      FUN_105066d0(this,uStack_8);
      iVar4 = 0;
      if (0 < (int)uStack_8) {
        do {
          *(undefined4 *)(*this + iVar4 * 4) = *(undefined4 *)(iStack_4 + iVar4 * 4);
          iVar4 = iVar4 + 1;
        } while (iVar4 < (int)uStack_8);
      }
    }
    (**(code **)(*piVar2 + 4))();
  }
                    /* WARNING: Could not recover jumptable at 0x10555044. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (**(code **)(*piVar1 + 0x14))();
  return;
}

