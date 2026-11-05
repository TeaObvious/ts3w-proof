/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteStringUTF8 [assembly=ScriptCore token=0x0600102D; handle:
   System.UInt32, s: System.String; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775ed0, 00775fe1]]: 274 original owned bytes/117 actual
   Listing instructions. Null original string-6 before stream resolution(-2). Interface+0x5C/+0x58
   supplies length/data to004F3CC0. Build seven-bit encoded BYTE length; stream+0x38 prefix must
   return nonzero AL before payload write, whose AL is also tested. Success0; either write failure-3
   after visible cleanup; earlier prefix mutation is not rolled back. Plain RET. Decompiler stack
   buffer/length labels need physical accounting. Current pre-lookup CLR encoding, replacement
   policy and allocation failures are separate. */

undefined4 __cdecl ScriptCore.StreamHost::StreamHost_WriteStringUTF8(uint param_1,uint param_2)

{
  byte bVar1;
  uint uVar2;
  char cVar3;
  int *piVar4;
  int *piVar5;
  char *pcVar6;
  LPCWSTR pWVar7;
  byte *pbVar8;
  uint uVar9;
  void *unaff_EBP;
  int iStack_18;
  int iStack_14;
  
  if (param_2 == 0) {
    return 0xfffffffa;
  }
  piVar4 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    piVar4 = (int *)StreamHost_ResolveTaggedStreamAndCache(param_1);
  }
  if (piVar4 == (int *)0x0) {
    return 0xfffffffe;
  }
  piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
  pcVar6 = (char *)(**(code **)(*piVar5 + 0x5c))(param_2,0);
  pWVar7 = (LPCWSTR)(**(code **)(*piVar5 + 0x58))();
  Utf_ConvertWideSpanToByteStorage(&iStack_18,pWVar7,param_2,pcVar6);
  uVar9 = iStack_14 - iStack_18;
  bVar1 = (byte)uVar9;
  pbVar8 = &stack0xffffffe0;
  uVar2 = uVar9;
  while( true ) {
    uVar2 = uVar2 >> 7;
    if (uVar2 == 0) break;
    *pbVar8 = (bVar1 & 0x7f) + 0x80;
    bVar1 = (byte)uVar2;
    pbVar8 = pbVar8 + 1;
  }
  *pbVar8 = bVar1 & 0x7f;
  cVar3 = (**(code **)(*piVar4 + 0x38))(&stack0xffffffe0,pbVar8 + (1 - (int)&stack0xffffffe0));
  if ((cVar3 != '\0') && (cVar3 = (**(code **)(*piVar4 + 0x38))(unaff_EBP,uVar9), cVar3 != '\0')) {
    if ((1 < iStack_18 - (int)unaff_EBP) && (unaff_EBP != (void *)0x0)) {
      Memory_FreeIfNonNull(unaff_EBP);
    }
    return 0;
  }
  if ((1 < iStack_18 - (int)unaff_EBP) && (unaff_EBP != (void *)0x0)) {
    Memory_FreeIfNonNull(unaff_EBP);
  }
  return 0xfffffffd;
}

