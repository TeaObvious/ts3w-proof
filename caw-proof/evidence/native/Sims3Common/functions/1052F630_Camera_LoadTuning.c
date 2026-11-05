/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Type propagation algorithm not settling */
/* CAW 1.22.10 Sims3Common.dll PE export identity: Camera_LoadTuning. Export ordinal(s): 293. Entry
   VA: 0x1052f630. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000868;
   ScriptCore:0x06000A29. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl Camera_LoadTuning(undefined4 param_1,undefined4 param_2)

{
  int *piVar1;
  int iVar2;
  void *this;
  undefined4 unaff_retaddr;
  int *piVar3;
  int local_8 [2];
  
                    /* 0x52f630  293  Camera_LoadTuning */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    piVar3 = local_8 + 1;
    local_8[0] = 0;
    local_8[1] = 0;
    (**(code **)(*piVar1 + 0x78))(param_2,piVar3,local_8);
    iVar2 = FUN_1075c630();
    if (iVar2 != 0) {
      this = (void *)FUN_10937a80(iVar2);
      if (this != (void *)0x0) {
        FUN_1075c800(this,local_8[0],piVar3,param_2,unaff_retaddr,1,0);
      }
    }
  }
  return;
}

