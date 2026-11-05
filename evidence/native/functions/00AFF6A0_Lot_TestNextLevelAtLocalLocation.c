/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: checks a next-level location condition at LotXZLevel {float x;float z;int level}.
   Rejects null lot/outside X/Z or level range in AL, otherwise encodes a compact cell key,
   increments its level byte, and forwards to 00ad0d00 with caller flag and literal1. 00ab5dc0
   consumes AL to choose its special midpoint branch when lot+4b0 is set; routing also reuses this
   helper. Exact property meaning is not recovered here; high EAX bits are unspecified for the
   boolean use. */

uint __cdecl Lot_TestNextLevelAtLocalLocation(void *param_1,LotXZLevel *param_2,undefined4 param_3)

{
  char cVar1;
  void *pvVar2;
  LotXZLevel *in_EAX;
  uint uVar3;
  
  pvVar2 = param_1;
  if (param_1 != (void *)0x0) {
    in_EAX = param_2;
    if ((((0.0 <= param_2->x) && (param_2->x <= (float)*(int *)((int)param_1 + 0x174))) &&
        (0.0 <= param_2->z)) &&
       (((param_2->z <= (float)*(int *)((int)param_1 + 0x178) &&
         (*(int *)((int)param_1 + 0x17c) <= param_2->level)) &&
        (param_2->level <= *(int *)((int)param_1 + 0x180))))) {
      param_1 = (void *)0xff00ffff;
      LotLocation_EncodeCellAndQuadrant(&param_2->x,(char *)&param_1);
      cVar1 = param_1._2_1_ + '\x01';
      param_1._0_3_ = CONCAT12(cVar1,param_1._0_2_);
      uVar3 = FUN_00ad0d00(pvVar2,(char *)&param_1,param_3,1,(undefined1 *)0x0);
      return uVar3;
    }
  }
  return (uint)in_EAX & 0xffffff00;
}

