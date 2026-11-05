/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011633e8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
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
    piVar2 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_2,param_3,(uint *)0x0);
  }
  *param_1 = 0.0;
  param_1[1] = 0.0;
  param_1[2] = 0.0;
  if (piVar2 != (int *)0x0) {
    fVar4 = ((float)piVar2[0x53] + (float)piVar2[0x51] + (float)piVar2[0x4f] + (float)piVar2[0x4d])
            * 0.25;
    *param_1 = fVar4;
    fVar5 = ((float)piVar2[0x54] + (float)piVar2[0x52] + (float)piVar2[0x50] + (float)piVar2[0x4e])
            * 0.25;
    param_1[2] = fVar5;
    fVar3 = WorldSurface_QueryHeight
                      (pvVar1,fVar4,fVar5,0,'\x01','\0',(undefined1 *)0x0,(undefined1 *)0x0,'\0',
                       '\0');
    param_1[1] = (float)fVar3;
  }
  return param_1;
}

