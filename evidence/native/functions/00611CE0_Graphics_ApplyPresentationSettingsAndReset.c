/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original contract. ECX graphics manager; copies width/height/windowed and current
   sample-level lookup(38 viaFE8AD8) into presentation parameters, forces sample quality0, then
   calls6111D0(true). The caller ignores return; do not infer callback success or universal
   rendering parity from this entry. */

void __fastcall Graphics_ApplyPresentationSettingsAndReset(void *param_1)

{
  int iVar1;
  
  iVar1 = *(int *)((int)param_1 + 0xe0);
  *(undefined4 *)(iVar1 + 0x14c) = *(undefined4 *)((int)param_1 + 0x2c);
  *(undefined4 *)(iVar1 + 0x150) = *(undefined4 *)((int)param_1 + 0x30);
  *(uint *)(iVar1 + 0x16c) = (uint)*(byte *)((int)param_1 + 0x24);
  *(undefined4 *)(iVar1 + 0x15c) =
       *(undefined4 *)(&DAT_00fe8ad8 + *(int *)((int)param_1 + 0x38) * 4);
  *(undefined4 *)(iVar1 + 0x160) = 0;
  *(undefined4 *)(iVar1 + 0x17c) = *(undefined4 *)((int)param_1 + 0x34);
  *(uint *)(iVar1 + 0x180) =
       (-(uint)(*(char *)((int)param_1 + 0x25) != '\0') & 0x80000001) + 0x80000000;
  Graphics_ResetDeviceAndNotifyOwners(param_1,'\x01');
  return;
}

