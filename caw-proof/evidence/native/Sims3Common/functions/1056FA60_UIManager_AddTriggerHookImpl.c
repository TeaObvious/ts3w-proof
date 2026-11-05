/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: UIManager_AddTriggerHookImpl. Export ordinal(s):
   1067. Entry VA: 0x1056fa60. Original managed P/Invoke MethodDef(s): ScriptCore:0x060006D5. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence. */

uint __cdecl UIManager_AddTriggerHookImpl(uint param_1,undefined4 param_2,char param_3)

{
  void *this;
  int *piVar1;
  int *piVar2;
  uint uVar3;
  
  this = (void *)FUN_105e0db0();
  if ((this != (void *)0x0) && ((param_1 & 0xff000000) == 0x30000000)) {
    piVar1 = (int *)FUN_1055b120();
    piVar2 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piVar2 == (int *)0x0) {
      piVar2 = (int *)0x0;
    }
    else {
      piVar2 = (int *)(**(code **)(*piVar2 + 0xc))(0xeeee8218);
    }
    uVar3 = (**(code **)(*piVar1 + 0x58))(param_1);
    uVar3 = FUN_105e1e30(this,uVar3,FUN_105e0dc0,piVar2,param_1,param_2,param_3 != '\0');
    return uVar3;
  }
  return DAT_10b2e9ac;
}

