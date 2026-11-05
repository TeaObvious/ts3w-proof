/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x01161560 (original PC 1.67 TS3W.exe).
   ScriptCore.OnlineFeatures::OnlineFeaturesHost_IsPackInstalled [assembly=ScriptCore
   token=0x0600062A; packageId: System.String; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

char ScriptCore_OnlineFeatures__OnlineFeaturesHost_IsPackInstalled(void)

{
  char cVar1;
  void *this;
  int *piVar2;
  ushort *puVar3;
  undefined1 auStack_2c [8];
  undefined4 uStack_24;
  
  this = (void *)FUN_00982e60();
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  if ((this != (void *)0x0) && (piVar2 != (int *)0x0)) {
    puVar3 = (ushort *)(**(code **)(*piVar2 + 0x58))();
    uStack_24 = 0x745e02;
    FUN_005020a0(&stack0xffffffec,puVar3,0x10);
    FUN_00500c90(auStack_2c,(undefined4 *)&stack0xffffffec);
    cVar1 = FUN_0098a3c0(this);
    return cVar1;
  }
  return '\0';
}

