/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* CAW 1.22.10 Sims3Common.dll PE export identity: RDA_SetObjectToWorldSpaceMatrix. Export
   ordinal(s): 2011. Entry VA: 0x10989c30. Original managed P/Invoke MethodDef(s):
   CSHostWrap:0x06000EDF. This is an export/declaration annotation only; ABI, behavior and runtime
   execution require the original instructions and caller evidence. */

void __cdecl RDA_SetObjectToWorldSpaceMatrix(float *param_1)

{
  void *this;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* 0x989c30  2011  RDA_SetObjectToWorldSpaceMatrix */
  if (param_1 != (float *)0x0) {
    this = (void *)FUN_104de3a0();
    if (this != (void *)0x0) {
      fStack_44 = param_1[3];
      fStack_48 = param_1[2];
      fStack_4c = param_1[1];
      local_50 = *param_1;
      fStack_34 = param_1[7];
      fStack_38 = param_1[6];
      fStack_3c = param_1[5];
      local_40 = param_1[4];
      fStack_24 = param_1[0xb];
      fStack_28 = param_1[10];
      fStack_2c = param_1[9];
      local_30 = param_1[8];
      fStack_14 = param_1[0xf];
      fStack_18 = param_1[0xe];
      fStack_1c = param_1[0xd];
      local_20 = param_1[0xc];
      FUN_104dfee0(this,&local_50);
    }
  }
  return;
}

