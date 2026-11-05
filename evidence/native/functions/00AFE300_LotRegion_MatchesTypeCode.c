/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original instruction qualification: cdecl rawID/requestedtype, ALBool/plainRET. Only FFFFFFFF rejects before C8BBB0. Resolved rowDWORD88 compared to requested type. No service-null guard in this selected body; do not invent safe initialization semantics. */

/* Analyst note (PC1.67 lot-level support comparison): Analyst exact type predicate. Physical cdecl
   signed region id and requested Int32 code, plain RET; AL bool. Region id-1 returns AL0. Otherwise
   registry service DAT_011EE034 resolves C8BBB0; null result AL0, else compare signed DWORD row+88
   with requested code and SETZ/MOV AL. No type-name enum or every region lifetime is inferred.
   ACF820 invokes exact codes3 and optionally6; integer EAX upper bits are not the predicate ABI. */

bool __cdecl LotRegion_MatchesTypeCode(int param_1,int param_2)

{
  int iVar1;
  
  if (param_1 != -1) {
    iVar1 = FUN_00c8bbb0(DAT_011ee034,param_1);
    if (iVar1 != 0) {
      return *(int *)(iVar1 + 0x88) == param_2;
    }
  }
  return false;
}
