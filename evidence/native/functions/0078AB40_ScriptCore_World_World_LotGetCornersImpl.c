/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Verified PC 1.67 registration table at 0x011633d8 (TS3W.exe SHA256
   694a81bf2554e8fee4df49da76976411f68b043500012d72ca6e3d1972c5b5e3).
   ScriptCore.World::World_LotGetCornersImpl [assembly=ScriptCore token=0x06000778; lotId:
   System.UInt64; return=Sims3.SimIFace.LotCorners]
   The table establishes entry identity only. Parameter types/names come from pristine managed
   metadata; calling convention, argument stack use, returns and side effects require
   instruction-level checking. The decompiler may mis-track the stack across indirect host calls. */

float * ScriptCore_World__World_LotGetCornersImpl(float *param_1,int param_2,int param_3)

{
  float fVar1;
  float fVar2;
  float fVar3;
  void *pvVar4;
  int *piVar5;
  float10 fVar6;
  
  pvVar4 = DAT_011edbc4;
  if (DAT_011edbc4 == (void *)0x0) {
    piVar5 = (int *)0x0;
  }
  else {
    piVar5 = WorldObjects_FindLotByGuid(DAT_011edbc4,param_2,param_3,(uint *)0x0);
  }
  *param_1 = 0.0;
  memset(param_1 + 1,0,0x2c);
  if (piVar5 != (int *)0x0) {
    fVar1 = (float)piVar5[0x4d];
    param_1[3] = (float)piVar5[0x4f];
    param_1[5] = (float)piVar5[0x50];
    param_1[6] = (float)piVar5[0x51];
    param_1[8] = (float)piVar5[0x52];
    fVar3 = (float)piVar5[0x53];
    *param_1 = fVar1;
    fVar2 = (float)piVar5[0x4e];
    param_1[9] = fVar3;
    param_1[0xb] = (float)piVar5[0x54];
    param_1[2] = fVar2;
    fVar6 = WorldSurface_QueryHeight
                      (pvVar4,fVar1,fVar2,0,'\x01','\0',(undefined1 *)0x0,(undefined1 *)0x0,'\0',
                       '\0');
    param_1[1] = (float)fVar6;
    fVar6 = WorldSurface_QueryHeight
                      (pvVar4,param_1[3],param_1[5],0,'\x01','\0',(undefined1 *)0x0,
                       (undefined1 *)0x0,'\0','\0');
    param_1[4] = (float)fVar6;
    fVar6 = WorldSurface_QueryHeight
                      (pvVar4,param_1[6],param_1[8],0,'\x01','\0',(undefined1 *)0x0,
                       (undefined1 *)0x0,'\0','\0');
    param_1[7] = (float)fVar6;
    fVar6 = WorldSurface_QueryHeight
                      (pvVar4,param_1[9],param_1[0xb],0,'\x01','\0',(undefined1 *)0x0,
                       (undefined1 *)0x0,'\0','\0');
    param_1[10] = (float)fVar6;
  }
  return param_1;
}

