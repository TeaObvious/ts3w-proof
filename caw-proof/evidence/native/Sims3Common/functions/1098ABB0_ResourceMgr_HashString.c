/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: ResourceMgr_HashString. Export ordinal(s): 2031.
   Entry VA: 0x1098abb0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x06000891. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

uint __cdecl ResourceMgr_HashString(char *param_1)

{
  byte *pbVar1;
  byte *pbVar2;
  int iVar3;
  uint uVar4;
  byte *pbVar5;
  byte *local_10;
  byte *local_c;
  int local_8;
  char *local_4;
  
                    /* 0x98abb0  2031  ResourceMgr_HashString */
  local_10 = (byte *)0x0;
  local_c = (byte *)0x0;
  local_8 = 0;
  local_4 = "Services/HashString";
  FUN_1006f780(&local_10,param_1);
  pbVar2 = local_c;
  pbVar1 = local_10;
  for (pbVar5 = local_10; pbVar5 < pbVar2; pbVar5 = pbVar5 + 1) {
    iVar3 = tolower((uint)*pbVar5);
    *pbVar5 = (byte)iVar3;
  }
  uVar4 = FUN_108a73d0(pbVar1,(int)pbVar2 - (int)pbVar1,0x811c9dc5);
  if ((1 < local_8 - (int)pbVar1) && (pbVar1 != (byte *)0x0)) {
    FUN_10918e90((int)pbVar1);
  }
  return uVar4;
}

