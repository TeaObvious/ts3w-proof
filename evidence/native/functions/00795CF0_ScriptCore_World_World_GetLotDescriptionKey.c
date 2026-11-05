/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011639a0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetLotDescriptionKey [assembly=ScriptCore token=0x06000849; lotId:
   System.UInt64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_GetLotDescriptionKey(int param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 auStack_54 [4];
  undefined1 *puStack_50;
  undefined1 *puStack_4c;
  undefined2 *puStack_48;
  char *pcStack_44;
  undefined **appuStack_40 [2];
  ushort uStack_38;
  undefined2 uStack_36;
  undefined **appuStack_28 [2];
  undefined **appuStack_20 [2];
  undefined2 uStack_18;
  undefined2 uStack_16;
  
  if (DAT_011edbc4 == (void *)0x0) {
    piVar1 = (int *)0x0;
  }
  else {
    piVar1 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_1,param_2,(uint *)0x0);
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if (((piVar1 == (int *)0x0) || (piVar2 == (int *)0x0)) || ((short *)piVar1[0xf6] == (short *)0x0))
  {
    return 0;
  }
  puStack_50 = &DAT_011c8e54;
  puStack_4c = &DAT_011c8e54;
  pcStack_44 = "World/WorldHost";
  puStack_48 = &DAT_011c8e56;
  FUN_00408f50(&puStack_50,(short *)piVar1[0xf6]);
  appuStack_40[0] = &PTR_FUN_00fba6f4;
  uStack_38 = 0;
  uStack_36 = 0;
  FUN_004f59c0(appuStack_40,0x13,9,&puStack_50,0x10,1);
  appuStack_20[0] = &PTR_FUN_0100886c;
  uStack_16 = 0x13;
  uStack_18 = 2;
  FUN_004f64b0(appuStack_20,(int)appuStack_40);
  appuStack_40[0] = &PTR_FUN_00fba6f4;
  if ((uStack_38 & 4) != 0) {
    FUN_004f5760(appuStack_40,'\0');
  }
  (**(code **)(*piVar2 + 0x50))(appuStack_20,auStack_54);
  appuStack_28[0] = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_20[0] & 4) != 0) {
    FUN_004f5760(appuStack_28,'\0');
  }
  if ((2 < (int)((int)puStack_50 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return unaff_EDI;
}

