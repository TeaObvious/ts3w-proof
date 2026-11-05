/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x01163980 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetWorldFileName [assembly=ScriptCore token=0x06000845; ;
   return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_GetWorldFileName(void)

{
  int iVar1;
  int *piVar2;
  ushort *puVar3;
  short *psVar4;
  void *unaff_ESI;
  undefined4 unaff_EDI;
  undefined1 auStack_66c [4];
  undefined1 *puStack_668;
  undefined1 *puStack_664;
  undefined2 *puStack_660;
  char *pcStack_65c;
  undefined **appuStack_658 [2];
  ushort uStack_650;
  undefined2 uStack_64e;
  undefined **appuStack_640 [2];
  undefined **appuStack_638 [2];
  undefined2 uStack_630;
  undefined2 uStack_62e;
  short asStack_618 [260];
  undefined2 auStack_410 [520];
  
  iVar1 = DAT_011edbc4;
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((iVar1 == 0) || (piVar2 == (int *)0x0)) {
    return 0;
  }
  FUN_004ec7e0(auStack_410);
  puVar3 = (ushort *)World_ReadFilenameInputWord(iVar1);
  FUN_004edf60(auStack_410,puVar3);
  FUN_004ede90(auStack_410,asStack_618,0x104);
  puStack_668 = &DAT_011c8e54;
  puStack_664 = &DAT_011c8e54;
  pcStack_65c = "World/WorldHost";
  puStack_660 = &DAT_011c8e56;
  psVar4 = asStack_618;
  while (asStack_618[0] != 0) {
    psVar4 = psVar4 + 1;
    asStack_618[0] = *psVar4;
  }
  FUN_00408d60(&puStack_668,asStack_618,asStack_618 + ((int)psVar4 - (int)asStack_618 >> 1));
  appuStack_658[0] = &PTR_FUN_00fba6f4;
  uStack_650 = 0;
  uStack_64e = 0;
  FUN_004f59c0(appuStack_658,0x13,9,&puStack_668,0x10,1);
  appuStack_638[0] = &PTR_FUN_0100886c;
  uStack_62e = 0x13;
  uStack_630 = 2;
  FUN_004f64b0(appuStack_638,(int)appuStack_658);
  appuStack_658[0] = &PTR_FUN_00fba6f4;
  if ((uStack_650 & 4) != 0) {
    FUN_004f5760(appuStack_658,'\0');
  }
  (**(code **)(*piVar2 + 0x50))(appuStack_638,auStack_66c);
  appuStack_640[0] = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_638[0] & 4) != 0) {
    FUN_004f5760(appuStack_640,'\0');
  }
  if ((2 < (int)((int)puStack_668 - (int)unaff_ESI & 0xfffffffeU)) && (unaff_ESI != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_ESI);
  }
  return unaff_EDI;
}

