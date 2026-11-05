/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst: PC1.67. Caller-cleaned four stack words: nullable lot, world X/Z, floor-level word;
   boolean is AL. Null lot clears AL only. Otherwise independently inverse-transforms the original
   world point without edge allowance and delegates the local X/Z/level predicate00B04EA0. */

uint __cdecl
Lot_TestPlatformAtWorldXZLevel(void *param_1,float param_2,float param_3,undefined4 param_4)

{
  void *pvVar1;
  uint in_EAX;
  uint uVar2;
  float local_10;
  void *local_c;
  float local_8;
  undefined4 local_4;
  
  pvVar1 = param_1;
  if (param_1 != (void *)0x0) {
    Lot_WorldXZToLocalXZ(param_1,param_2,param_3,(float *)&param_1,&local_10);
    local_c = param_1;
    local_8 = local_10;
    local_4 = param_4;
    uVar2 = Lot_TestPlatformAtLocalXZLevel(pvVar1,(float *)&local_c);
    return uVar2;
  }
  return in_EAX & 0xffffff00;
}

