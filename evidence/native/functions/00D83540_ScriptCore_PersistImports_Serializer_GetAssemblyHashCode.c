/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x0108d140 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.PersistImports::Serializer_GetAssemblyHashCode [assembly=ScriptCore token=0x06000CB0;
   assembly: System.Reflection.Assembly; return=System.Object]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 * ScriptCore_PersistImports__Serializer_GetAssemblyHashCode(int param_1)

{
  int iVar1;
  uint *puVar2;
  LPCRITICAL_SECTION p_Var3;
  undefined4 *puVar4;
  undefined8 *puVar5;
  undefined8 uStack_8;
  
  if (param_1 != 0) {
    iVar1 = FUN_00e68420(*(int *)(param_1 + 4));
    if (*(byte **)(iVar1 + 8) != (byte *)0x0) {
      uStack_8 = FUN_004fa6f0(*(byte **)(iVar1 + 8),*(int *)(iVar1 + 0xc),0xffffffff,0xffffffff,
                              '\x01');
      puVar5 = &uStack_8;
      puVar2 = (uint *)FUN_00e75a20();
      p_Var3 = (LPCRITICAL_SECTION)FUN_00e75550();
      puVar4 = RuntimeValue_Box(p_Var3,puVar2,(undefined4 *)puVar5);
      return puVar4;
    }
  }
  return (undefined4 *)0x0;
}

