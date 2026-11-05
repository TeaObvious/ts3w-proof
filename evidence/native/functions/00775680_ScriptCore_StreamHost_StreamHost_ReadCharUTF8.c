/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162908 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadCharUTF8 [assembly=ScriptCore token=0x06001033; handle:
   System.UInt32, value: System.Char&; return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775680, 00775784]]: 261 original owned bytes/104 actual
   Listing instructions. Handle plus physical UTF-16 output pointer despite stored one-parameter
   inference. Resolve stream(-2), request one byte via+0x30; exact1 continues, FFFFFFFF-3, other
   count-1. ASCII<80 writes one code unit and returns0. Non-ASCII calls004F40D0, rejects
   trailingCount0(-4), requests that trailing count but compares returned count to literal1;
   then004F46E0 receives the same trailing count as source length and must report1 output unit for
   success. Preserve these actual arguments/arithmetic; do not silently add a leading byte to the
   length or substitute current byte-widening return1/EOF-zero behavior. */

uint __cdecl ScriptCore.StreamHost::StreamHost_ReadCharUTF8(uint param_1)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  short *unaff_retaddr;
  undefined4 uStack_10;
  LPWSTR local_8;
  
  piVar1 = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      uStack_10 = 0x7756af;
      piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
      uStack_10 = param_1;
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
      if (piVar1 != (int *)0x0) {
        DAT_011d7838 = param_1;
        DAT_011d783c = piVar1;
      }
    }
    else {
      piVar1 = (int *)0x0;
    }
  }
  if (piVar1 == (int *)0x0) {
    return 0xfffffffe;
  }
  uStack_10 = 1;
  iVar2 = (**(code **)(*piVar1 + 0x30))();
  if (iVar2 != 1) {
    return (uint)(iVar2 != -1) * 2 - 3;
  }
  if (0x7f < (byte)uStack_10) {
    uVar3 = Utf_GetTrailingByteCount((byte *)&uStack_10);
    if (uVar3 == 0) {
      return 0xfffffffc;
    }
    iVar2 = (**(code **)(*piVar1 + 0x30))((int)&uStack_10 + 1,uVar3);
    if (iVar2 == 1) {
      uVar3 = Utf_DecodeByteBufferWithOptionalTerminator(local_8,1,(LPCWSTR)&stack0xffffffe8,uVar3);
      return -(uint)(uVar3 != 1) & 0xfffffffc;
    }
    return (uint)(iVar2 != -1) * 2 - 3;
  }
  *unaff_retaddr = (short)(char)(byte)uStack_10;
  return 0;
}

