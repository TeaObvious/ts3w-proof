/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189ef8 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_GetCollectionListImpl [assembly=ScriptCore
   token=0x06000BF6; ; return=System.String]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

undefined1 * ScriptCore.UserToolUtils::UserToolUtils_GetCollectionListImpl(void)

{
  void *this;
  int *piVar1;
  int unaff_ESI;
  undefined1 *puVar2;
  undefined1 local_34 [4];
  undefined1 *local_30;
  undefined1 *local_2c;
  undefined **local_28;
  char *local_24;
  undefined **local_20 [2];
  undefined2 local_18;
  undefined2 local_16;
  
  this = DAT_011d9ac8;
  if (DAT_011d9ac8 != (void *)0x0) {
    GetGlobalInterfacePointer_11D5BBC();
    local_30 = &DAT_011c8e54;
    local_2c = &DAT_011c8e54;
    local_24 = "Scratch/UserToolHost/CollInfo";
    local_28 = (undefined **)&DAT_011c8e56;
    FUN_007e00c0(this,&local_30);
    local_20[0] = &PTR_FUN_0100886c;
    local_16 = 0x13;
    local_18 = 0xb;
    FUN_004f59c0(local_20,0x13,9,&local_30,0x10,1);
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    puVar2 = local_34;
    (**(code **)(*piVar1 + 0x50))(local_20);
    local_28 = &PTR_FUN_00fba6f4;
    if (((uint)local_20[0] & 4) != 0) {
      FUN_004f5760(&local_28,'\0');
    }
    if ((2 < (int)((int)local_30 - unaff_ESI & 0xfffffffeU)) && (unaff_ESI != 0)) {
      FUN_004e44e0(unaff_ESI);
    }
    return puVar2;
  }
  return (undefined1 *)0x0;
}

