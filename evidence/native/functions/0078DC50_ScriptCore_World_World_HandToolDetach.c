/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163798 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_HandToolDetach [assembly=ScriptCore token=0x060007F7; ;
   return=System.UInt64]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined8 ScriptCore_World__World_HandToolDetach(void)

{
  undefined8 uVar1;
  int iVar2;
  int *piVar3;
  
  iVar2 = HandTool_GetCurrentHeldPointer();
  if (iVar2 == 0) {
    return 0;
  }
  uVar1 = *(undefined8 *)(iVar2 + 8);
  if (*(int *)(iVar2 + 8) != 0 || *(int *)(iVar2 + 0xc) != 0) {
    piVar3 = (int *)FUN_007693a0();
    (**(code **)(*piVar3 + 0x18))(0x45ad88a,0,0);
  }
  return uVar1;
}

