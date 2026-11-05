/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011971c8 (original PC 1.67 TS3W.exe).
   ScriptCore.GameUtils::GameUtils_GetGenericString [assembly=ScriptCore token=0x0600024B; id:
   System.UInt32; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

int * ScriptCore_GameUtils__GameUtils_GetGenericString(void)

{
  int *piVar1;
  int *piVar2;
  int iStack_38;
  undefined **ppuStack_34;
  undefined1 *puStack_30;
  undefined1 *puStack_2c;
  undefined **ppuStack_28;
  char *pcStack_24;
  undefined **appuStack_20 [2];
  ushort uStack_18;
  undefined2 uStack_16;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puStack_30 = &DAT_011c8e54;
  puStack_2c = &DAT_011c8e54;
  pcStack_24 = "Services/GameHost";
  ppuStack_28 = (undefined **)&DAT_011c8e56;
  appuStack_20[0] = &PTR_FUN_00fba6f4;
  uStack_18 = 0;
  uStack_16 = 0;
  FUN_004f59c0(appuStack_20,0x13,9,&puStack_30,0x10,1);
  FUN_005ca6f0(&DAT_01197068,(int *)&ppuStack_34,(uint *)&stack0x00000004);
  if (ppuStack_34 != &PTR_LOOP_0119706c) {
    if ((uStack_18 & 4) != 0) {
      FUN_004f5760(appuStack_20,'\x01');
    }
    FUN_004f59c0(appuStack_20,0x13,9,ppuStack_34 + 5,0x10,1);
  }
  piVar2 = &iStack_38;
  iStack_38 = 0;
  (**(code **)(*piVar1 + 0x50))(appuStack_20);
  ppuStack_28 = &PTR_FUN_00fba6f4;
  if (((uint)appuStack_20[0] & 4) != 0) {
    FUN_004f5760(&ppuStack_28,'\0');
  }
  if ((2 < (int)((int)puStack_30 - iStack_38 & 0xfffffffeU)) && (iStack_38 != 0)) {
    FUN_004e44e0(iStack_38);
  }
  return piVar2;
}

