/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628c0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteByteArray [assembly=ScriptCore token=0x0600102A; handle:
   System.UInt32, data: System.Byte[], offset: System.Int32, length: System.Int32;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 metadata limit: existing body owns only00775220, one address byte; actual Ghidra Listing
   has ZERO instructions. Retained208-byte pristine PE window is BOUNDED evidence, not a complete
   defined function. No body/instruction/prototype/storage/flow repair. Bounded original path
   null-checks array first(-6), then signed offset<0 or length<=0(-7), then resolves stream(-2).
   Interface+0x70 receives array and two output addresses; null returned data-6, range failures-7.
   Admitted data+offset/count goes to stream virtual+0x38; nonzero AL maps0, zero AL maps-3. Plain
   RET visible. Decompiler unaff_EDI/output labels require physical stack accounting. Current
   whole-array copy/zero-count/status policy is not native equivalence. */

int ScriptCore_StreamHost__StreamHost_WriteByteArray
              (uint param_1,int param_2,int param_3,int param_4)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char cVar4;
  int *piVar5;
  int *piVar6;
  int unaff_EDI;
  int iStack_4;
  
  iVar3 = param_4;
  iVar2 = param_3;
  iVar1 = param_2;
  if (param_2 == 0) {
    return -6;
  }
  if ((param_3 < 0) || (param_4 < 1)) {
    return -7;
  }
  piVar5 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    piVar5 = (int *)StreamHost_ResolveTaggedStreamAndCache(param_1);
  }
  if (piVar5 == (int *)0x0) {
    return -2;
  }
  piVar6 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar6 + 0x70))(iVar1,&param_2,&iStack_4);
  if (iStack_4 == 0) {
    return -6;
  }
  if ((iVar2 < unaff_EDI) && (iVar3 <= unaff_EDI - iVar2)) {
    cVar4 = (**(code **)(*piVar5 + 0x38))(iStack_4 + iVar2,iVar3);
    return (-(uint)(cVar4 != '\0') & 3) - 3;
  }
  return -7;
}

