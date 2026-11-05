/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Verified PC 1.67 registration table at 0x01163250 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_GetPondLevelImpl [assembly=ScriptCore token=0x06000747; x: System.Single,
   z: System.Single, waterLevel: System.Single&; return=System.Boolean]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls.
   
   PC 1.67 installed-water/pond-resource original boundary review (2026-10-17). Registered
   pond-level wrapper complete120B37Listing. Absentworld ALfalse and output untouched. Otherwise
   calls C60E20 then FST stores output BEFORE comparing exact -100 using x87 subtraction/SSE
   abs<=1.5258789e-05; MOVMSKPS==F givesALBoolean. This is near-sentinel true, not conventional
   success. Preserve all actualtypes/output/cleanup. Original managed LotPond
   constructor/startup/ID/corner/BuildBuy lifetime remains its authority. All IDs, physical ABI,
   prototypes/types/body/bytes/Listing/flow/analysis remain unchanged; current resource/cache policy
   is preserved. */

bool __cdecl ScriptCore.World::World_GetPondLevelImpl(float param_1,float param_2,float *param_3)

{
  float fVar1;
  undefined4 extraout_ECX;
  int iVar2;
  float10 fVar3;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  
  if (DAT_011edbc4 != (void *)0x0) {
    fVar3 = WorldPonds_GetLevelAtPoint(DAT_011edbc4,param_1,param_2,'\x01');
    *param_3 = (float)fVar3;
    fVar1 = (float)(fVar3 - (float10)-100.0);
    auVar4._0_4_ = fVar1 * -1.0;
    auVar4._4_4_ = fVar1 * -1.0;
    auVar4._8_4_ = fVar1 * -1.0;
    auVar4._12_4_ = fVar1 * -1.0;
    auVar5._4_4_ = fVar1;
    auVar5._0_4_ = fVar1;
    auVar5._8_4_ = fVar1;
    auVar5._12_4_ = fVar1;
    auVar5 = maxps(auVar4,auVar5);
    auVar6._4_4_ = -(uint)(auVar5._4_4_ <= 1.5258789e-05);
    auVar6._0_4_ = -(uint)(auVar5._0_4_ <= 1.5258789e-05);
    auVar6._8_4_ = -(uint)(auVar5._8_4_ <= 1.5258789e-05);
    auVar6._12_4_ = -(uint)(auVar5._12_4_ <= 1.5258789e-05);
    iVar2 = movmskps(extraout_ECX,auVar6);
    return iVar2 == 0xf;
  }
  return false;
}

