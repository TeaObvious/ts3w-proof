/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x011628d0 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_WriteCharArrayUTF8 [assembly=ScriptCore token=0x0600102C;
   handle: System.UInt32, data: System.Char[], offset: System.Int32, length: System.Int32;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 complete existing body [[00775da0, 00775ecc]]: 301 original owned bytes/119 actual
   Listing instructions. Null array-6, signed offset<0 or length<=0-7 precede stream resolution(-2).
   Interface+0x7C receives array and output addresses; null data-6 and range failures-7. Offset is
   validated, but the returned base pointer (without adding that offset at this call site) and
   length go to004F3CC0. Converted interval goes to virtual+0x38; AL chooses0/-3 after visible
   cleanup calls. Plain RET. Concrete guard/storage-helper ownership and exception unwind remain
   external; current selected-slice Encoding.UTF8/byte-count policy differs. */

undefined4 __cdecl
ScriptCore.StreamHost::StreamHost_WriteCharArrayUTF8
          (uint param_1,int param_2,int param_3,uint param_4)

{
  int iVar1;
  int iVar2;
  uint uVar3;
  char cVar4;
  int *stream;
  int *piVar5;
  int unaff_EBX;
  int unaff_EBP;
  int unaff_EDI;
  undefined1 local_2c [8];
  undefined1 auStack_24 [32];
  LPCWSTR pWStack_4;
  
  uVar3 = param_4;
  iVar2 = param_3;
  iVar1 = param_2;
  if (param_2 == 0) {
    return 0xfffffffa;
  }
  if ((param_3 < 0) || ((int)param_4 < 1)) {
    return 0xfffffff9;
  }
  stream = DAT_011d783c;
  if (param_1 != DAT_011d7838) {
    stream = (int *)StreamHost_ResolveTaggedStreamAndCache(param_1);
  }
  if (stream == (int *)0x0) {
    return 0xfffffffe;
  }
  param_2 = 0;
  piVar5 = (int *)GetGlobalInterfacePointer_11D5BBC();
  (**(code **)(*piVar5 + 0x7c))(iVar1,&param_2,local_2c);
  if (pWStack_4 == (LPCWSTR)0x0) {
    return 0xfffffffa;
  }
  if ((iVar2 < unaff_EDI) && ((int)uVar3 <= unaff_EDI - iVar2)) {
    StreamReader_Construct(auStack_24,stream,1);
    Utf_ConvertWideSpanToByteStorage
              (&stack0xffffffcc,pWStack_4,uVar3,"Scripting/WriteCharArrayUTF8");
    cVar4 = (**(code **)(*stream + 0x38))(unaff_EBX,unaff_EBP - unaff_EBX);
    if (cVar4 != '\0') {
      FUN_0071c6c0((int *)&stack0xffffffc4);
      StreamReader_ReleaseAuxiliary(local_2c);
      return 0;
    }
    FUN_0071c6c0((int *)&stack0xffffffc4);
    StreamReader_ReleaseAuxiliary(local_2c);
    return 0xfffffffd;
  }
  return 0xfffffff9;
}

