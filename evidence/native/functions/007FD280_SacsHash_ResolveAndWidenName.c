/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 SACS migration contract): PC1.67 hash-to-text bridge calls007D9040, null on
   miss; on hit allocates two bytes per source character plus terminator and widens source char
   values into16-bit units. Signed char promotion follows native compiler instructions, so arbitrary
   high-byte text is not proven equivalent to .NET ASCII replacement. Allocation ownership is
   separate from current immutable index. */

short * SacsHash_ResolveAndWidenName(void)

{
  char *pcVar1;
  char cVar2;
  longlong lVar3;
  char *pcVar4;
  char *pcVar5;
  short *psVar6;
  short *psVar7;
  
  pcVar4 = (char *)KeyNames_FindFirstMappedName();
  if (pcVar4 == (char *)0x0) {
    return (short *)0x0;
  }
  pcVar1 = pcVar4 + 1;
  pcVar5 = pcVar4;
  do {
    cVar2 = *pcVar5;
    pcVar5 = pcVar5 + 1;
  } while (cVar2 != '\0');
  lVar3 = (ulonglong)(((int)pcVar5 - (int)pcVar1) + 1) * 2;
  psVar6 = (short *)FUN_004e4500(-(uint)((int)((ulonglong)lVar3 >> 0x20) != 0) | (uint)lVar3,
                                 "SACS/StateMachine/HashToString/16-bit-copy",0);
  cVar2 = *pcVar4;
  psVar7 = psVar6;
  while (cVar2 != '\0') {
    pcVar4 = pcVar4 + 1;
    *psVar7 = (short)cVar2;
    psVar7 = psVar7 + 1;
    cVar2 = *pcVar4;
  }
  psVar6[(int)pcVar5 - (int)pcVar1] = 0;
  return psVar6;
}

