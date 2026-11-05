/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01195440 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.Reflection::Reflection_GetTypeClassification [assembly=ScriptCore token=0x06001049;
   type: System.Type; return=System.UInt32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_Reflection__Reflection_GetTypeClassification(int param_1)

{
  byte bVar1;
  int *piVar2;
  int *piVar3;
  uint uVar4;
  uint uVar5;
  
  if (param_1 == 0) {
    return 0;
  }
  piVar2 = *(int **)(param_1 + 4);
  piVar3 = RuntimeTypeDescriptor_ResolveClass(piVar2);
  if (piVar3 == (int *)0x0) {
    return 0;
  }
  if ((((*(byte *)(piVar3 + 0x18) & 0x20) == 0) && (*(char *)((int)piVar3 + 0xa6) != '\x13')) &&
     (*(char *)((int)piVar3 + 0xa6) != '\x1e')) {
    uVar4 = FUN_00e6b9d0((int)piVar3);
    uVar4 = (-(uint)(uVar4 != 0) & 0xfffffff4) + 0x10;
    if ((char)piVar3[4] != '\0') {
      uVar4 = uVar4 | 2;
    }
    uVar5 = FUN_00e6b9e0((int)piVar3);
    if (uVar5 != 0) {
      uVar4 = uVar4 | 1;
    }
  }
  else {
    uVar4 = 8;
  }
  if ((*(byte *)(piVar3 + 0x18) & 0x80) != 0) {
    uVar4 = uVar4 | 0x20;
  }
  if (((piVar2[1] & 0x40000000U) == 0) &&
     (((bVar1 = *(byte *)((int)piVar2 + 6), 1 < bVar1 && (bVar1 < 0xe)) ||
      ((bVar1 == 0x18 || (bVar1 == 0x19)))))) {
    uVar4 = uVar4 | 0x40;
  }
  if (*(char *)((int)piVar2 + 6) == '\x0f') {
    uVar4 = uVar4 | 0x80;
  }
  uVar5 = FUN_00e9e020((int)piVar2);
  if (uVar5 != 0) {
    return uVar4 | 0x100;
  }
  if (piVar3[0x2b] != 0) {
    return uVar4 | 0x600;
  }
  if (piVar3[0x2a] != 0) {
    uVar4 = uVar4 | 0x200;
  }
  return uVar4;
}

