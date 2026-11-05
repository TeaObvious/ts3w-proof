/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC 1.67 original: ECX planner/component, six stack words, RET 0x18. Passes world at +0x0C,
   auxiliary at +0x10, self and original mask/XZ/context/reason/height to 00658830; ADD ESP 0x24
   restores that call. It leaves returned AL intact. Existing void decompiler signature does not
   describe the physical AL result; no prototype adjustment is made by this annotation. */

void __thiscall
NeighborhoodVisibility_TestPlannerPoint
          (void *this,byte param_1,float param_2,float param_3,undefined4 param_4,
          undefined4 *param_5,float param_6)

{
  NeighborhoodVisibility_TestWorldPoint
            (param_1,*(void **)((int)this + 0xc),*(undefined4 *)((int)this + 0x10),this,param_2,
             param_3,param_4,param_5,param_6);
  return;
}

