/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity:
   FootprintComponent_DrawRoutingSlotFootprintPolygons. Export ordinal(s): 1810. Entry VA:
   0x1097ff50. Original managed P/Invoke MethodDef(s): CSHostWrap:0x060001B9. This is an
   export/declaration annotation only; ABI, behavior and runtime execution require the original
   instructions and caller evidence. */

void __cdecl
FootprintComponent_DrawRoutingSlotFootprintPolygons(void *param_1,void *param_2,void *param_3)

{
  float local_50 [6];
  undefined4 uStack_38;
  undefined4 uStack_34;
  undefined4 local_30;
  undefined4 uStack_2c;
  float fStack_28;
  undefined4 uStack_24;
  undefined4 local_20;
  undefined4 uStack_1c;
  undefined4 uStack_18;
  float fStack_14;
  
                    /* 0x97ff50  1810  FootprintComponent_DrawRoutingSlotFootprintPolygons */
  if ((param_1 != (void *)0x0) && (param_2 != (void *)0x0)) {
    local_50[0] = DAT_10acb0d4;
    local_50[1] = 0.0;
    local_50[2] = 0.0;
    local_50[3] = 0.0;
    local_50[4] = 0.0;
    local_50[5] = DAT_10acb0d4;
    uStack_38 = 0;
    uStack_34 = 0;
    local_30 = 0;
    uStack_2c = 0;
    fStack_28 = DAT_10acb0d4;
    uStack_24 = 0;
    local_20 = 0;
    uStack_1c = 0;
    uStack_18 = 0;
    fStack_14 = DAT_10acb0d4;
    FUN_10739320(param_1,param_2,local_50,param_3,'\x01');
  }
  return;
}

