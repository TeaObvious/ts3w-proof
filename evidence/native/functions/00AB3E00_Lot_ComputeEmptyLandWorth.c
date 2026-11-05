/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Original PC1.67 empty-footprint worth leaf. ECX supplies the lot; loads DWORD dimensions at+178
   and+174, calls AB0B60 when byte1183EEC is zero, and reads Single rate1183EF0. IMUL keeps low32
   area; CVTSI2SS treats the product as signed Int32, MULSS multiplies the rate, MOVSS stores
   Single, and FLD/FISTP converts to Int32 under the inherited x87 control word. Full EAX is
   returned. No positive-dimension, finite, overflow, nonnegative or output-range guard appears in
   this leaf. Caller/lifetime and ambient floating-control state are separate contracts. */

int __fastcall Lot_ComputeEmptyLandWorth(int param_1)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(param_1 + 0x178);
  iVar2 = *(int *)(param_1 + 0x174);
  if (DAT_01183eec == '\0') {
    LotSettings_LoadToolTunables(&DAT_01183eec);
  }
  return (int)ROUND((float)(iVar1 * iVar2) * _DAT_01183ef0);
}

