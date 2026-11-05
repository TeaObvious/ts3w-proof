/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Command_UnregisterCommandImpl. Export ordinal(s):
   316. Entry VA: 0x10531040. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600029D. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl Command_UnregisterCommandImpl(int param_1)

{
  int iVar1;
  int *piVar2;
  wint_t *pwVar3;
  void *pvVar4;
  int unaff_EBX;
  void *this;
  int *piStack_8;
  
  piVar2 = (int *)FUN_1055b120();
  if (param_1 != 0) {
    pwVar3 = (wint_t *)(**(code **)(*piVar2 + 0x58))(param_1);
    iVar1 = DAT_10c78778;
    this = (void *)(DAT_10c78778 + 0x18);
    FUN_105c38e0(pwVar3);
    FUN_106a8410(this,(undefined4 *)&stack0xfffffff4,(uint *)&stack0x00000000);
    if (unaff_EBX != *(int *)(*(int *)(iVar1 + 0x1c) + *(int *)(iVar1 + 0x20) * 4)) {
      pvVar4 = (void *)FUN_10387250();
      if (pvVar4 != (void *)0x0) {
        FUN_10387b80(pvVar4);
      }
      iVar1 = *(int *)(unaff_EBX + 4);
      if (iVar1 != 0) {
        FUN_10918e90(*(int *)(iVar1 + 0xc));
        FUN_10918e90(*(int *)(iVar1 + 0x10));
        FUN_10918e90(iVar1);
      }
      FUN_1005db40(this,(int *)&stack0xfffffff4,unaff_EBX,piStack_8);
    }
  }
  return;
}

