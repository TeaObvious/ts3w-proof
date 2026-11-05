/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Verified PC 1.67 registration table at 0x011633e8 (original PC 1.67 TS3W.exe).
   ScriptCore.World::World_LotGetPtInsideImpl [assembly=ScriptCore token=0x0600077A; lotId:
   System.UInt64; return=Sims3.SimIFace.Vector3]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float * ScriptCore_World__World_LotGetPtInsideImpl(float *param_1,int param_2,int param_3)

{
  void *pvVar1;
  int *piVar2;
  float10 fVar3;
  float fVar4;
  float fVar5;
  
  pvVar1 = DAT_011edbc4;
  if (DAT_011edbc4 == (void *)0x0) {
    piVar2 = (int *)0x0;
  }
  else {
    piVar2 = FUN_00c62810(DAT_011edbc4,param_2,param_3,(int *)0x0);
  }
  *param_1 = 0.0;
  param_1[1] = 0.0;
  param_1[2] = 0.0;
  fVar5 = DAT_0106f8c8;
  if (piVar2 != (int *)0x0) {
    fVar4 = ((float)piVar2[0x53] + (float)piVar2[0x51] + (float)piVar2[0x4f] + (float)piVar2[0x4d])
            * DAT_0106f8c8;
    *param_1 = fVar4;
    fVar5 = ((float)piVar2[0x54] + (float)piVar2[0x52] + (float)piVar2[0x50] + (float)piVar2[0x4e])
            * fVar5;
    param_1[2] = fVar5;
    fVar3 = FUN_00c6a090(pvVar1,fVar4,fVar5,0,'\x01','\0',(undefined1 *)0x0,(undefined1 *)0x0,'\0',
                         '\0');
    param_1[1] = (float)fVar3;
  }
  return param_1;
}

