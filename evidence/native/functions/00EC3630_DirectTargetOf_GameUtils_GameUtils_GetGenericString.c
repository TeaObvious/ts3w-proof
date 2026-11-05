/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 direct x86 E9 jump target: ScriptCore.GameUtils::GameUtils_GetGenericString at
   0x00ec3990, bytes e99bfcffff. This is a static control-flow link from the registered entry; the
   target may have other callers and its side effects require separate analysis. original PC 1.67 TS3W.exe. */

int * DirectTargetOf_GameUtils_GameUtils_GetGenericString(void)

{
  int *piVar1;
  int *piVar2;
  int local_38;
  undefined **local_34;
  undefined1 *local_30;
  undefined1 *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  ushort local_18;
  undefined2 local_16;
  
  piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
  local_30 = &DAT_011c8e54;
  local_2c = &DAT_011c8e54;
  local_24 = "Services/GameHost";
  local_28 = (undefined **)&DAT_011c8e56;
  local_20[0] = &PTR_FUN_00fba6f4;
  local_18 = 0;
  local_16 = 0;
  FUN_004f59c0(local_20,0x13,9,&local_30,0x10,1);
  FUN_005ca6f0(&DAT_01197068,(int *)&local_34,(uint *)&stack0x00000004);
  if (local_34 != &PTR_LOOP_0119706c) {
    if ((local_18 & 4) != 0) {
      FUN_004f5760(local_20,'\x01');
    }
    FUN_004f59c0(local_20,0x13,9,local_34 + 5,0x10,1);
  }
  piVar2 = &local_38;
  local_38 = 0;
  (**(code **)(*piVar1 + 0x50))(local_20);
  local_28 = &PTR_FUN_00fba6f4;
  if (((uint)local_20[0] & 4) != 0) {
    FUN_004f5760(&local_28,'\0');
  }
  if ((2 < (int)((int)local_30 - local_38 & 0xfffffffeU)) && (local_38 != 0)) {
    FUN_004e44e0(local_38);
  }
  return piVar2;
}

