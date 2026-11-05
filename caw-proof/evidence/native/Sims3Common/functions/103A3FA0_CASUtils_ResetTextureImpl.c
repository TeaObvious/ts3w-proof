/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: CASUtils_ResetTextureImpl. Export ordinal(s):
   134. Entry VA: 0x103a3fa0. Original managed P/Invoke MethodDef(s): ScriptCore:0x0600049C. This is
   an export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl CASUtils_ResetTextureImpl(undefined4 param_1,undefined4 param_2,char param_3)

{
  void *this;
  void *this_00;
  int iVar1;
  int *piVar2;
  int local_10;
  int local_c;
  int local_8;
  int local_4;
  
                    /* 0x3a3fa0  134  CASUtils_ResetTextureImpl */
  this = (void *)FUN_1072a1a0();
  if (((this != (void *)0x0) && (this_00 = (void *)FUN_1072abb0((int)this), this_00 != (void *)0x0))
     && (iVar1 = FUN_10726da0(this_00,DAT_10c8d804), iVar1 != 0)) {
    local_10 = 0;
    local_c = 0;
    local_8 = 0;
    local_4 = 0;
    piVar2 = (int *)FUN_106111f0(iVar1);
    local_10 = *piVar2;
    local_c = piVar2[1];
    local_8 = piVar2[2];
    local_4 = piVar2[3];
    if (param_3 == '\0') {
      FUN_103a3e90(this_00,&local_10);
      return;
    }
    FUN_1072ac40(this,FUN_103a3e90,(undefined *)0x0,&local_10);
  }
  return;
}

