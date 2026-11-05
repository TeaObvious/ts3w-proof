/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011639a8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_GetLotAddress [assembly=ScriptCore token=0x0600084A; lotId:
   System.UInt64; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined4 ScriptCore_World__World_GetLotAddress(int param_1,int param_2)

{
  int *this;
  int *piVar1;
  int unaff_ESI;
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
    this = FUN_00c62810(DAT_011edbc4,param_1,param_2,(int *)0x0);
  }
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((this != (int *)0x0) && (piVar1 != (int *)0x0)) {
    puStack_30 = &DAT_011c8e54;
    puStack_2c = &DAT_011c8e54;
    pcStack_24 = "World/WorldHost";
    ppuStack_28 = (undefined **)&DAT_011c8e56;
    FUN_00abd230(this,(int *)&puStack_30);
    appuStack_20[0] = &PTR_FUN_0100886c;
    uStack_16 = 0x13;
    uStack_18 = 0xb;
    FUN_004f59c0(appuStack_20,0x13,9,&puStack_30,0x10,1);
    (**(code **)(*piVar1 + 0x50))(appuStack_20,auStack_34);
    ppuStack_28 = &PTR_FUN_00fba6f4;
    if (((uint)appuStack_20[0] & 4) != 0) {
      FUN_004f5760(&ppuStack_28,'\0');
    }
    if ((2 < (int)((int)puStack_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_004e44e0(unaff_ESI);
    }
    return unaff_EDI;
  }
  return 0;
}

