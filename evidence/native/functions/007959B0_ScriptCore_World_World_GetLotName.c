/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163988 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetLotName [assembly=ScriptCore token=0x06000846; lotId: System.UInt64;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_GetLotName(int param_1,int param_2)

{
  int *this;
  int *piVar1;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 auStack_34 [4];
  undefined1 *puStack_30;
  undefined1 *puStack_2c;
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  if (DAT_011edbc4 == (void *)0x0) {
    this = (int *)0x0;
  }
  else {
    this = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((this == (int *)0x0) || (piVar1 == (int *)0x0)) {
    return 0;
  }
  puStack_30 = &DAT_011c8e54;
  puStack_2c = &DAT_011c8e54;
  pcStack_24 = "World/WorldHost";
  ppuStack_28 = (undefined **)&DAT_011c8e56;
  FUN_00abd140(this,(int *)&puStack_30);
  appuStack_20[0] = &PTR_FUN_0100886c;
  uStack_16 = 0x13;
  uStack_18 = 0xb;
  FUN_004f59c0(appuStack_20,0x13,9,&puStack_30,0x10,1);
  (**(code **)(*piVar1 + 0x50))(appuStack_20,auStack_34);
  ppuStack_28 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_20[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_28,'\0');
  }
  if ((2 < (int)((int)puStack_30 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return unaff_EDI;
}

