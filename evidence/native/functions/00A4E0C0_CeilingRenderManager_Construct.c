/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */



/* Original PC 1.67: Bind actual vtable01060C08 and construct24-byte clock+30 with mode5/startfalse.
   Defaults do not establish successful calibration or full loading lifecycle. */

undefined4 * __fastcall CeilingRenderManager_Construct(undefined4 *param_1)

{
  *param_1 = &PTR_FUN_01060c08;
  param_1[1] = 0;
  param_1[2] = 0;
  param_1[3] = 0;
  param_1[4] = 0;
  param_1[5] = 0;
  param_1[6] = 0;
  param_1[7] = 0;
  param_1[8] = 0;
  param_1[9] = 0;
  param_1[10] = "LotRenderer/CeilingRenderManager/mCeilingModels";
  param_1[0xb] = 1.0;
  ElapsedClock_ConstructAndOptionallyStart(param_1 + 0xc,5,'\0');
  param_1[0x12] = 0;
  param_1[0x13] = 0;
  param_1[0x14] = 0;
  param_1[0x15] = 0;
  param_1[0x16] = 0;
  param_1[0x17] = 0;
  *(undefined1 *)(param_1 + 0x18) = 1;
  param_1[0x19] = 0;
  param_1[0x1a] = 0;
  param_1[0x1b] = 0;
  param_1[0x1c] = "LotRenderer/CeilingRenderManager/mLevelsWithUnderside";
  return param_1;
}

