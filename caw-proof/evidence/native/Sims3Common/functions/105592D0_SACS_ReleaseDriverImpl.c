/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: SACS_ReleaseDriverImpl. Export ordinal(s): 725.
   Entry VA: 0x105592d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000EA5. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl SACS_ReleaseDriverImpl(undefined4 param_1)

{
  int *piVar1;
  void *this;
  int iVar2;
  void *this_00;
  int iVar3;
  
  piVar1 = (int *)FUN_1055b120();
  this = (void *)(**(code **)(*piVar1 + 0xd8))(param_1);
  if (this != (void *)0x0) {
    iVar3 = 0;
    iVar2 = FUN_105f1b70(this,0x50c5d67);
    if (iVar2 != 0) {
      this_00 = (void *)FUN_1037f2c0(*(void **)(iVar2 + 8),'\0');
      if (this_00 == (void *)0x0) {
        iVar3 = 0;
      }
      else {
        iVar3 = FUN_10726da0(this_00,DAT_10c8d930);
      }
    }
    (**(code **)(*(int *)((int)this + 8) + 4))();
    if (iVar3 != 0) {
      FUN_1073faf0(iVar3);
      return;
    }
  }
  return;
}

