/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* CAW 1.22.10 Sims3Common.dll PE export identity: WorldWrap_MoveLot. Export ordinal(s): 2681. Entry
   VA: 0x109986e0. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060004C0. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

bool __cdecl WorldWrap_MoveLot(void *param_1,void *param_2,float *param_3,float param_4,int param_5)

{
  float fVar1;
  uint uVar2;
  char cVar3;
  double dVar4;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x9986e0  2681  WorldWrap_MoveLot */
  if ((param_1 != (void *)0x0) && (param_2 != (void *)0x0)) {
    fStack_18 = param_3[2];
    fVar1 = param_4 * _DAT_10aca97c;
    local_20 = *param_3;
    cVar3 = param_5 != 0;
    fStack_1c = param_3[1];
    fStack_14 = local_20;
    dVar4 = floor((double)fVar1);
    uVar2 = FUN_10234b10(param_1,param_2,&local_20,(fVar1 - (float)dVar4) * _DAT_10b97c04,cVar3);
    return (char)uVar2 != '\0';
  }
  return false;
}

