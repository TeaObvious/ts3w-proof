/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original instruction review. Analyst-assigned name. Allocates 12-byte
   Scripting/ScriptFunctions adapter, callback listener subobject+4 and delegate field+8 initially0,
   stores global011d4e34. Registers adapter on scripting manager vtable+0x48. PMA listener
   table00fffd2c maps Completed+0xc to0073b2e0. */

void __cdecl AnimationScriptFunctions_Construct(int *param_1)

{
  undefined4 *puVar1;
  
  puVar1 = (undefined4 *)FUN_004e4500(0xc,"Scripting/ScriptFunctions",0);
  if (puVar1 != (undefined4 *)0x0) {
    puVar1[1] = &PTR_FUN_00fc2c0c;
    *puVar1 = &PTR_LAB_00fffd4c;
    puVar1[1] = &PTR_FUN_00fffd2c;
    puVar1[2] = 0;
    DAT_011d4e34 = puVar1;
    (**(code **)(*param_1 + 0x48))(puVar1);
    return;
  }
  (**(code **)(*param_1 + 0x48))(0);
  return;
}

