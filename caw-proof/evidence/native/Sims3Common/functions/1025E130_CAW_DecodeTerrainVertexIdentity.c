/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Converts a global grid identity by division and remainder
   into an X/Z coordinate pair in optimizer float vertex order X,Z,zero,X. Height is supplied
   separately by the compacting caller. Analyst-assigned helper names are not recovered original
   symbols. Original instructions govern decompiler ABI/register artifacts. */

void __thiscall CAW_DecodeTerrainVertexIdentity(void *this,float *param_1,uint param_2)

{
  float fVar1;
  float fVar2;
  float fVar3;
  uint uVar4;
  int iVar5;
  
  fVar3 = DAT_10aae18c;
  uVar4 = param_2 / *(uint *)((int)this + 8);
  iVar5 = param_2 - *(uint *)((int)this + 8) * uVar4;
  fVar1 = (float)iVar5;
  if (iVar5 < 0) {
    fVar1 = fVar1 + _DAT_10aae190;
  }
  fVar2 = (float)(int)uVar4;
  if ((int)uVar4 < 0) {
    fVar2 = fVar2 + _DAT_10aae190;
  }
  *param_1 = fVar1;
  param_1[1] = fVar2;
  param_1[2] = fVar3;
  param_1[3] = fVar1;
  return;
}

