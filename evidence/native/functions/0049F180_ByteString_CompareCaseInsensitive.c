/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC 1.67 Sims3Pack instruction review. cdecl(two begin/end byte-string records). Compare
   common-length prefix using0049F000, then length difference; zero indicates case-insensitive
   equality. Caller fields are ASCII names; Unicode normalization is not established. */

uint __thiscall ByteString_CompareCaseInsensitive(void *this,byte *param_1)

{
  byte bVar1;
  byte *pbVar2;
  byte *pbVar3;
  uint uVar4;
  byte **ppbVar5;
  byte *pbVar6;
  byte *local_4;
  
  pbVar2 = param_1;
  pbVar3 = param_1 + 1;
  do {
    bVar1 = *param_1;
    param_1 = param_1 + 1;
  } while (bVar1 != 0);
  pbVar3 = param_1 + -(int)pbVar3;
  pbVar6 = (byte *)(*(int *)((int)this + 4) - (int)*(byte **)this);
  local_4 = pbVar6;
  ppbVar5 = &param_1;
  if ((int)pbVar6 <= (int)pbVar3) {
    ppbVar5 = &local_4;
  }
  param_1 = pbVar3;
  uVar4 = Bytes_CompareCaseFolded(*(byte **)this,pbVar2,(int)*ppbVar5);
  if (uVar4 == 0) {
    if ((int)pbVar6 < (int)pbVar3) {
      return 0xffffffff;
    }
    uVar4 = (uint)((int)pbVar3 < (int)pbVar6);
  }
  return uVar4;
}

