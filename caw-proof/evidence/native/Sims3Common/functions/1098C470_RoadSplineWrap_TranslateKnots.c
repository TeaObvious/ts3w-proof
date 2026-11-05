/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RoadSplineWrap_TranslateKnots. Export ordinal(s):
   2085. Entry VA: 0x1098c470. Original managed P/Invoke MethodDef(s): CSHostWrap:0x0600021F. This
   is an export/declaration annotation only; ABI, behavior and runtime execution require the
   original instructions and caller evidence.
   
   Original CAW 1.22.10 Sims3Common.dll: RoadSplineWrap_TranslateKnots converts four managed2D delta
   vectors and moving flag, then returns whether helper0x1013D2E0 AL is nonzero. A write can occur
   before false; the original managed command owns rollback. Analyst-assigned helper names are not
   recovered original symbols. Original instructions govern decompiler ABI/register artifacts. */

bool __cdecl
RoadSplineWrap_TranslateKnots
          (void *param_1,float param_2,undefined4 param_3,float param_4,undefined4 param_5,
          float param_6,undefined4 param_7,float param_8,undefined4 param_9,char param_10)

{
  uint uVar1;
  float local_50;
  undefined4 uStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  undefined4 uStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  undefined4 uStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  undefined4 uStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x98c470  2085  RoadSplineWrap_TranslateKnots */
  local_40 = param_8;
  uStack_3c = param_9;
  fStack_38 = param_8;
  fStack_34 = param_8;
  local_30 = param_6;
  uStack_2c = param_7;
  fStack_28 = param_6;
  fStack_24 = param_6;
  local_20 = param_4;
  uStack_1c = param_5;
  fStack_18 = param_4;
  fStack_14 = param_4;
  local_50 = param_2;
  uStack_4c = param_3;
  fStack_48 = param_2;
  fStack_44 = param_2;
  uVar1 = CAW_RoadSplineTranslateKnotsAndValidate
                    (param_1,&local_50,&local_20,&local_30,&local_40,param_10);
  return (char)uVar1 != '\0';
}

