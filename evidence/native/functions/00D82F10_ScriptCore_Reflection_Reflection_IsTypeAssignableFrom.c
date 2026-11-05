/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01195448 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
  
  if ((param_1 == 0) || (param_2 == 0)) {
    return param_1 & 0xffffff00;
  }
  piVar1 = *(int **)(param_2 + 4);
  puVar3 = (uint *)RuntimeTypeDescriptor_ResolveClass(*(int **)(param_1 + 4));
  puVar4 = (uint *)RuntimeTypeDescriptor_ResolveClass(piVar1);
  uVar2 = FUN_00e6fff0(puVar3,puVar4);
  return (uint)(CONCAT31(extraout_var,uVar2) != 0);
}

