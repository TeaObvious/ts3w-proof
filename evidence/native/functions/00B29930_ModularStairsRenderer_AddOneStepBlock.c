/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst note (PC1.67 stair collision and renderer contract): ECX renderer; RET24 same nine
   physical stack slots as B298A0. B230C0 receives rise .1875 at106C28C and run .25 at106C284;
   product lookup C8E7D0 then getter C95ED0 and composition B28BD0. Selected by quarter-step
   remainder in B2AC90; 4-to-1 rise/run ratio and explicit quotient/remainder dispatch establish
   block role. */

void __thiscall
ModularStairsRenderer_AddOneStepBlock
          (void *this,uint flightId,int level,uint retainedWord,void *descriptor,float *position4,
          int direction,float *outAdvance4,void *metaSceneObject,byte flag)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  float *pfVar4;
  float *pfVar5;
  int iVar6;
  char cVar7;
  float local_30 [4];
  float local_20 [7];
  
  FUN_00b230c0(this,direction,DAT_0106c28c,DAT_0106c284,position4,outAdvance4,local_20,local_30,
               '\x01');
  iVar1 = FUN_00c8e7d0(DAT_011ee034,descriptor,'\x01');
  cVar7 = '\x01';
  iVar6 = 0;
  pfVar5 = local_30;
  pfVar4 = local_20;
  puVar3 = (undefined4 *)((int)descriptor + 0x10);
  piVar2 = (int *)FUN_00c95ed0(iVar1);
  FUN_00b28bd0(this,piVar2,puVar3,pfVar4,pfVar5,flightId,level,retainedWord,iVar6,metaSceneObject,
               flag,cVar7);
  return;
}

