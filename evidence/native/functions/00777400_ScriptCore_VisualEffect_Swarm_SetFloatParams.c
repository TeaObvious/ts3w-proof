/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01162a18 (original PC 1.67 TS3W.exe).
   ScriptCore.VisualEffect::Swarm_SetFloatParams [assembly=ScriptCore token=0x060004C7;
   effectHandle: System.UInt64, paramType: System.Int32, vars: System.Single[];
   return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore.VisualEffect::Swarm_SetFloatParams(void)

{
  int *piVar1;
  undefined4 uVar2;
  undefined4 unaff_retaddr;
  int in_stack_00000010;
  undefined4 *puVar3;
  undefined4 local_8;
  undefined4 local_4;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (piVar1 != (int *)0x0) {
    local_8 = 0;
    local_4 = 0;
    puVar3 = &local_4;
    (**(code **)(*piVar1 + 0x78))(in_stack_00000010,puVar3,&local_8);
    uVar2 = FUN_007771a0(local_8,local_4,unaff_retaddr,puVar3,in_stack_00000010);
    return uVar2;
  }
  return 0;
}

