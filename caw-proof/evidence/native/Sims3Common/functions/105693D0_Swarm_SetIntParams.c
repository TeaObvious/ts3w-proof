/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Swarm_SetIntParams. Export ordinal(s): 1018.
   Entry VA: 0x105693d0. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000632. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 Swarm_SetIntParams(void)

{
  int *piVar1;
  undefined4 uVar2;
  int unaff_retaddr;
  int in_stack_00000010;
  int *piVar3;
  undefined4 local_8;
  int local_4;
  
                    /* 0x5693d0  1018  Swarm_SetIntParams */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    local_8 = 0;
    local_4 = 0;
    piVar3 = &local_4;
    (**(code **)(*piVar1 + 0x74))(in_stack_00000010,piVar3,&local_8);
    uVar2 = FUN_10569210(local_8,local_4,unaff_retaddr,piVar3,in_stack_00000010);
    return uVar2;
  }
  return 0;
}

