/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: Swarm_SetFloatParams. Export ordinal(s): 1017.
   Entry VA: 0x10569430. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000633. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

undefined4 Swarm_SetFloatParams(void)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 unaff_retaddr;
  int in_stack_00000010;
  undefined4 *puVar3;
  undefined4 local_8;
  undefined4 local_4;
  
                    /* 0x569430  1017  Swarm_SetFloatParams */
  piVar1 = (int *)FUN_1055b120();
  if (piVar1 != (int *)0x0) {
    local_8 = 0;
    local_4 = 0;
    puVar3 = &local_4;
    (**(code **)(*piVar1 + 0x78))(in_stack_00000010,puVar3,&local_8);
    uVar2 = FUN_10569160(local_8,local_4,unaff_retaddr,puVar3,in_stack_00000010);
    return uVar2;
  }
  return 0;
}

