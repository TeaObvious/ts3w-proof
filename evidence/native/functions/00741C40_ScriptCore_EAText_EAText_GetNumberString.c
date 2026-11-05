/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011610c0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.EAText::EAText_GetNumberString [assembly=ScriptCore token=0x060002D4; number:
   System.Double; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_EAText__EAText_GetNumberString(double param_1)

{
  int iVar1;
  int *piVar2;
  undefined1 *allocation;
  int aiStack_b4 [3];
  undefined **ppuStack_a8;
  undefined1 auStack_a4 [4];
  undefined **appuStack_a0 [2];
  undefined2 uStack_98;
  undefined2 uStack_96;
  short asStack_80 [64];
  
  FUN_00449190(param_1,asStack_80,0x40,0);
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  aiStack_b4[0] = 0;
  aiStack_b4[1] = 0;
  aiStack_b4[2] = 0;
  ppuStack_a8 = (undefined **)0x1001f74;
  FUN_0040b590(aiStack_b4,asStack_80);
  appuStack_a0[0] = &PTR_FUN_0100886c;
  uStack_96 = 0x13;
  uStack_98 = 0xb;
  FUN_004f59c0(appuStack_a0,0x13,9,aiStack_b4,0x10,1);
  allocation = auStack_a4;
  (**(code **)(*piVar2 + 0x50))(appuStack_a0);
  iVar1 = aiStack_b4[2];
  ppuStack_a8 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_a0[0] & 4) != 0) {
    FUN_004f5760(aiStack_b4 + 3,'\0');
  }
  if ((2 < (int)(aiStack_b4[0] - (int)allocation & 0xfffffffeU)) &&
     (allocation != (undefined1 *)0x0)) {
    Memory_FreeIfNonNull(allocation);
  }
  return iVar1;
}

