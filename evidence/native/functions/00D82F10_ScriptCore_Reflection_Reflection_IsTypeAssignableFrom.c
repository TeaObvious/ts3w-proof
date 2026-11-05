/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01195448 (original PC 1.67 TS3W.exe).
   ScriptCore.Reflection::Reflection_IsTypeAssignableFrom [assembly=ScriptCore token=0x0600104A;
   type: System.Type, otherType: System.Type; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Reflection__Reflection_IsTypeAssignableFrom(uint param_1,int param_2)

{
  int *piVar1;
  undefined1 uVar2;
  uint *puVar3;
  uint *puVar4;
  undefined3 extraout_var;
  
  if ((param_1 != 0) && (param_2 != 0)) {
    piVar1 = *(int **)(param_2 + 4);
    puVar3 = (uint *)FUN_00e71040(*(int **)(param_1 + 4));
    puVar4 = (uint *)FUN_00e71040(piVar1);
    uVar2 = FUN_00e6fff0(puVar3,puVar4);
    return (uint)(CONCAT31(extraout_var,uVar2) != 0);
  }
  return param_1 & 0xffffff00;
}

