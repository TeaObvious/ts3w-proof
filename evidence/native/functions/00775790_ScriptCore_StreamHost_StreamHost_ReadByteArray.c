/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162918 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadByteArray [assembly=ScriptCore token=0x06001035; handle:
   System.UInt32, buffer: System.Byte[], offset: System.Int32, count: System.Int32;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 metadata limit: existing body owns only00775790, one address byte; actual Ghidra Listing
   has ZERO instructions. Retained224-byte pristine PE window is BOUNDED evidence, not a complete
   defined function. No body/instruction/prototype/storage/flow repair. Bounded original path
   resolves stream(-2) BEFORE null array(-6). Interface+0x70 fills data/count outputs. Signed
   negative offset/count or range failure returns-7; count0 returns0 after validation. Otherwise
   virtual+0x30(data+offset,count) returns actual count except FFFFFFFF maps-3. Plain RET visible.
   Two stored parameters/decompiler unaff values are incomplete projections of the original managed
   four-argument import; no prototype/body repair or current temporary-copy atomicity inferred. */

int ScriptCore_StreamHost__StreamHost_ReadByteArray(uint param_1,int param_2)

{
  uint uVar1;
  int *piVar2;
  int *piVar3;
  int iVar4;
  int unaff_ESI;
  int unaff_retaddr;
  uint *puVar5;
  undefined4 uStack_4;
  
  uVar1 = param_1;
  piVar2 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
      piVar2 = (int *)(**(code **)(*piVar2 + 0xcc))(uVar1);
      if (piVar2 != (int *)0x0) {
        DAT_011d7838 = uVar1;
        DAT_011d783c = piVar2;
      }
    }
    else {
      piVar2 = (int *)0x0;
    }
  }
  iVar4 = param_2;
  if (piVar2 == (int *)0x0) {
    return -2;
  }
  if (param_2 == 0) {
    return -6;
  }
  piVar3 = (int *)GetGlobalInterfacePointer_11D5BBC();
  puVar5 = &param_1;
  param_1 = 0;
  uStack_4 = 0;
  (**(code **)(*piVar3 + 0x70))(iVar4,&uStack_4,puVar5);
  if ((((unaff_retaddr < 0) || ((int)param_1 < 0)) || (unaff_ESI < unaff_retaddr)) ||
     (unaff_ESI - unaff_retaddr < (int)param_1)) {
    iVar4 = -7;
  }
  else {
    if (param_1 == 0) {
      return 0;
    }
    iVar4 = (**(code **)(*piVar2 + 0x30))((int)puVar5 + unaff_retaddr,param_1);
    if (iVar4 == -1) {
      return -3;
    }
  }
  return iVar4;
}

