/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: StreamHost_ReadCharUTF8. Export ordinal(s): 2454.
   Entry VA: 0x10567a70. Original managed P/Invoke MethodDef(s): ScriptCore:0x06000F3B. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl StreamHost_ReadCharUTF8(uint param_1)

{
  int *piVar1;
  int iVar2;
  uint uVar3;
  short *unaff_retaddr;
  undefined4 uStack_10;
  LPWSTR local_8;
  
                    /* 0x567a70  2454  StreamHost_ReadCharUTF8 */
  piVar1 = DAT_10c7b0a8;
  if (param_1 != DAT_10c7b0a4) {
    if ((param_1 & 0xff000000) == 0x60000000) {
      uStack_10 = 0x10567a9f;
      piVar1 = (int *)FUN_1055b120();
      uStack_10 = param_1;
      piVar1 = (int *)(**(code **)(*piVar1 + 0xcc))();
      if (piVar1 != (int *)0x0) {
        DAT_10c7b0a4 = param_1;
        DAT_10c7b0a8 = piVar1;
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
    uVar3 = FUN_109272e0((byte *)&uStack_10);
    if (uVar3 == 0) {
      return 0xfffffffc;
    }
    iVar2 = (**(code **)(*piVar1 + 0x30))((int)&uStack_10 + 1,uVar3);
    if (iVar2 == 1) {
      uVar3 = FUN_109278f0(local_8,1,(LPCWSTR)&stack0xffffffe8,uVar3);
      return -(uint)(uVar3 != 1) & 0xfffffffc;
    }
    return (uint)(iVar2 != -1) * 2 - 3;
  }
  *unaff_retaddr = (short)(char)(byte)uStack_10;
  return 0;
}

