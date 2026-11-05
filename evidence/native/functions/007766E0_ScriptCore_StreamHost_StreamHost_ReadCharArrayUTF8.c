/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01162920 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.StreamHost::StreamHost_ReadCharArrayUTF8 [assembly=ScriptCore token=0x06001036;
   handle: System.UInt32, buffer: System.Char[], offset: System.Int32, count: System.Int32;
   return=System.Int32]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 metadata limit: existing body owns only007766e0, one address byte; actual Ghidra Listing
   has ZERO instructions. Retained560-byte pristine PE window is BOUNDED evidence, not a complete
   defined function. No body/instruction/prototype/storage/flow repair. Bounded original path
   resolves stream(-2), then null array(-6), interface+0x70 outputs, signed offset/count/range
   validation(-7) and count0 success0. It grows a temporary byte buffer, performs stream+0x30 reads,
   converts FFFFFFFF to-3, and accumulates further byte requests using004F40D0 leading-byte trailing
   counts. Converter004F40F0 receives8-to16 plus returned base destination pointer and count
   capacity; visible offset is validated but not added to that destination at the conversion call.
   Incomplete conversion-4; success returns produced UTF-16 count after cleanup. Physical four
   original import arguments govern the stored two-parameter/decompiler-unaff projection. Current
   raw pointer/one-byte widening placeholder is not this SAFEARRAY UTF8 workflow. */

uint ScriptCore_StreamHost__StreamHost_ReadCharArrayUTF8(int *param_1,int param_2)

{
  int *piVar1;
  int *piVar2;
  int iVar3;
  int iVar4;
  uint uVar5;
  int *unaff_ESI;
  int *piVar6;
  uint uVar7;
  int unaff_retaddr;
  LPWSTR pWStack_12c;
  int *piStack_128;
  int iStack_124;
  LPCWSTR apWStack_120 [2];
  undefined4 uStack_118;
  char *pcStack_114;
  LPCWSTR pWStack_110;
  
  if (param_1 == DAT_011d7838) {
    piStack_128 = DAT_011d783c;
  }
  else if (((uint)param_1 & 0xff000000) == 0x60000000) {
    piVar1 = (int *)GetGlobalInterfacePointer_11D5BBC();
    piStack_128 = (int *)(**(code **)(*piVar1 + 0xcc))(param_1);
    if (piStack_128 != (int *)0x0) {
      DAT_011d7838 = param_1;
      DAT_011d783c = piStack_128;
    }
  }
  else {
    piStack_128 = (int *)0x0;
  }
  piVar1 = piStack_128;
  uVar7 = 0;
  if (piStack_128 == (int *)0x0) {
    return 0xfffffffe;
  }
  if (param_2 == 0) {
    return 0xfffffffa;
  }
  piVar2 = (int *)GetGlobalInterfacePointer_11D5BBC();
  uStack_118 = 0;
  apWStack_120[0] = (LPCWSTR)0x0;
  (**(code **)(*piVar2 + 0x70))(param_2,apWStack_120,&uStack_118);
  if ((((unaff_retaddr < 0) || ((int)param_1 < 0)) || (iStack_124 < unaff_retaddr)) ||
     (iStack_124 - unaff_retaddr < (int)param_1)) {
    return 0xfffffff9;
  }
  if (param_1 == (int *)0x0) {
    return 0;
  }
  FUN_0072f1a0((int *)apWStack_120);
  pcStack_114 = "Scripting/TempReadCharsBuffer";
  piVar2 = param_1;
  do {
    FUN_00776390(apWStack_120,(int)piVar2 + uVar7);
    iVar3 = (**(code **)(*piVar1 + 0x30))((int)apWStack_120[0] + uVar7,piVar2);
    if (iVar3 == -1) {
      if ((apWStack_120[0] != (LPCWSTR)0x0) && (apWStack_120[0] != pWStack_110)) {
        Memory_FreeIfNonNull(apWStack_120[0]);
      }
      return 0xfffffffd;
    }
    uVar7 = uVar7 + iVar3;
    if (iVar3 < (int)piVar2) break;
    piVar6 = (int *)0x0;
    iVar3 = 0;
    if ((int)piVar2 < 1) break;
    do {
      iVar4 = Utf_GetTrailingByteCount(&stack0xfffffecb);
      iVar3 = iVar3 + 1;
      piVar6 = (int *)((int)piVar6 + iVar4);
    } while (iVar3 < (int)piVar2);
    piVar1 = unaff_ESI;
    piVar2 = piVar6;
  } while (piVar6 != (int *)0x0);
  piStack_128 = param_1;
  uVar5 = Utf_ConvertEncodingUnits(apWStack_120[0],uVar7,8,pWStack_12c,(uint *)&piStack_128,0x10);
  piVar1 = piStack_128;
  if (uVar7 <= uVar5) {
    if ((apWStack_120[0] != (LPCWSTR)0x0) && (apWStack_120[0] != pWStack_110)) {
      Memory_FreeIfNonNull(apWStack_120[0]);
    }
    return (uint)piVar1;
  }
  if ((apWStack_120[0] != (LPCWSTR)0x0) && (apWStack_120[0] != pWStack_110)) {
    Memory_FreeIfNonNull(apWStack_120[0]);
  }
  return 0xfffffffc;
}

