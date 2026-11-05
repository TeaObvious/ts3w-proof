/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01189f88 (original PC 1.67 TS3W.exe).
   ScriptCore.UserToolUtils::UserToolUtils_TerrainPaintToolActiveImpl [assembly=ScriptCore
   token=0x06000C20; ; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint ScriptCore_UserToolUtils__UserToolUtils_TerrainPaintToolActiveImpl(void)

{
  int iVar1;
  uint uVar2;
  
  uVar2 = FUN_00cef500();
  if ((uVar2 == 0) || (*(int *)(uVar2 + 0x30) != 0x12)) {
    return uVar2 & 0xffffff00;
  }
  iVar1 = *(int *)(uVar2 + 0x2c);
  if (((iVar1 != 0) && (iVar1 != 0x28)) && (*(char *)(iVar1 + 100) != '\0')) {
    return 1;
  }
  return 0;
}

