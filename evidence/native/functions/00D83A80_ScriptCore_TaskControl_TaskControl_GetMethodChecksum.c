/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x0108d678 (original PC 1.67 TS3W.exe).
   ScriptCore.TaskControl::TaskControl_GetMethodChecksum [assembly=ScriptCore token=0x0600012A;
   handle: System.IntPtr, checksum: System.UInt32&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

uint __cdecl ScriptCore.TaskControl::TaskControl_GetMethodChecksum(ushort *param_1,uint *param_2)

{
  int *piVar1;
  uint uVar2;
  uint uVar3;
  undefined **ppuVar4;
  char cVar5;
  byte *pbVar6;
  int iVar7;
  int iVar8;
  
  piVar1 = (int *)FUN_00e85670(param_1);
  if (piVar1 == (int *)0x0) {
    uVar2 = 0;
    if (((param_1[1] & 3) != 0) &&
       ((piVar1 = FUN_00e52210(param_1), (piVar1[0x11] & 0x100U) != 0 ||
        (uVar2 = FUN_00e52e50(piVar1), uVar2 == 0)))) {
      uVar2 = 0;
      if ((ushort *)piVar1[3] != (ushort *)0x0) {
        piVar1 = (int *)FUN_00e85670((ushort *)piVar1[3]);
        uVar2 = 0;
        if (piVar1 != (int *)0x0) goto LAB_00d83ad1;
      }
    }
    return uVar2 & 0xffffff00;
  }
LAB_00d83ad1:
  *param_2 = 0;
  iVar7 = *piVar1;
  pbVar6 = (byte *)piVar1[1];
  uVar2 = 0x50c5d1e;
  do {
    if (iVar7 < 2) {
      *param_2 = uVar2;
      return CONCAT31((int3)((uint)piVar1 >> 8),1);
    }
    cVar5 = *(char *)((int)&PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0108d2f0 +
                     (uint)*pbVar6);
    iVar8 = 0;
    uVar3 = 1;
    if (cVar5 == '\b') {
      if (iVar7 < 2) goto switchD_00d83b39_default;
      ppuVar4 = &PTR_DAT_0108d3f0;
      if (*pbVar6 != 0xf0) {
        ppuVar4 = &PTR_s_anager_IsCustomProxyControlImpl_010100e8_0x19_0108d4f0;
      }
      cVar5 = *(char *)((uint)pbVar6[1] + (int)ppuVar4);
      uVar3 = 2;
    }
    switch(cVar5) {
    case '\x01':
      break;
    case '\x02':
      iVar8 = 4;
      break;
    case '\x03':
      uVar3 = uVar3 + 1;
      break;
    case '\x04':
      uVar3 = uVar3 + 2;
      break;
    case '\x05':
      uVar3 = uVar3 + 4;
      break;
    case '\x06':
      uVar3 = uVar3 + 8;
      break;
    case '\a':
      uVar3 = uVar3 + 4;
      if (4 < iVar7) {
        uVar3 = uVar3 + *(int *)(pbVar6 + 1) * 4;
      }
      break;
    default:
      goto switchD_00d83b39_default;
    }
    iVar7 = iVar7 - (iVar8 + uVar3);
    if (iVar7 < 0) {
switchD_00d83b39_default:
      return uVar3 & 0xffffff00;
    }
    for (; uVar3 != 0; uVar3 = uVar3 - 1) {
      uVar2 = uVar2 * 0x1000193 ^ (uint)*pbVar6;
      pbVar6 = pbVar6 + 1;
    }
    pbVar6 = pbVar6 + iVar8;
    piVar1 = (int *)0x0;
  } while( true );
}

