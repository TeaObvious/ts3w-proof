/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* 
   
   Original CAW 1.22.10 Sims3Common.dll: Selects the directed quad edge from mask1,2,4,8. Processes
   a closed input when at least3 vertices; a two-vertex input emits the first point if inside then
   clips the single first-to-second segment. Inputs with fewer than2 vertices emit nothing. Segment
   transitions delegate0x10145E40 and append actual intersection vertices. Analyst-assigned helper
   names are not recovered original symbols. Original instructions govern decompiler ABI/register
   artifacts. */

void __cdecl
CAW_RoadClipPolygonAgainstQuadEdge(undefined4 *param_1,float *param_2,int *param_3,void *param_4)

{
  uint uVar1;
  float *pfVar2;
  float *pfVar3;
  float *pfVar4;
  byte local_b4;
  float local_b0;
  float fStack_ac;
  float fStack_a8;
  float fStack_a4;
  float local_a0;
  float fStack_9c;
  float fStack_98;
  float fStack_94;
  float local_90;
  float fStack_8c;
  float fStack_88;
  float fStack_84;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  byte local_70;
  float local_6c;
  float local_60;
  float fStack_5c;
  float fStack_58;
  float fStack_54;
  float local_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float local_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  undefined1 local_30;
  float local_2c;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
  pfVar4 = (float *)param_3[1];
  pfVar3 = (float *)*param_3;
  uVar1 = (int)pfVar4 - (int)pfVar3 >> 6;
  if (1 < uVar1) {
    switch(*param_1) {
    case 1:
      local_b0 = *param_2;
      fStack_ac = param_2[1];
      fStack_a8 = param_2[2];
      fStack_a4 = param_2[3];
      local_a0 = param_2[4];
      fStack_9c = param_2[5];
      fStack_98 = param_2[6];
      fStack_94 = param_2[7];
      break;
    case 2:
      local_b0 = param_2[4];
      fStack_ac = param_2[5];
      fStack_a8 = param_2[6];
      fStack_a4 = param_2[7];
      local_a0 = param_2[8];
      fStack_9c = param_2[9];
      fStack_98 = param_2[10];
      fStack_94 = param_2[0xb];
      break;
    case 4:
      local_b0 = param_2[8];
      fStack_ac = param_2[9];
      fStack_a8 = param_2[10];
      fStack_a4 = param_2[0xb];
      local_a0 = param_2[0xc];
      fStack_9c = param_2[0xd];
      fStack_98 = param_2[0xe];
      fStack_94 = param_2[0xf];
      break;
    case 8:
      local_b0 = param_2[0xc];
      fStack_ac = param_2[0xd];
      fStack_a8 = param_2[0xe];
      fStack_a4 = param_2[0xf];
      local_a0 = *param_2;
      fStack_9c = param_2[1];
      fStack_98 = param_2[2];
      fStack_94 = param_2[3];
    }
    if (uVar1 < 3) {
      local_90 = *pfVar3;
      fStack_8c = pfVar3[1];
      fStack_88 = pfVar3[2];
      fStack_84 = pfVar3[3];
      local_80 = pfVar3[4];
      fStack_7c = pfVar3[5];
      fStack_78 = pfVar3[6];
      fStack_74 = pfVar3[7];
      local_70 = *(byte *)(pfVar3 + 8);
      local_6c = pfVar3[9];
      local_60 = pfVar3[0xc];
      fStack_5c = pfVar3[0xd];
      fStack_58 = pfVar3[0xe];
      fStack_54 = pfVar3[0xf];
      local_50 = pfVar3[0x10];
      fStack_4c = pfVar3[0x11];
      fStack_48 = pfVar3[0x12];
      fStack_44 = pfVar3[0x13];
      local_40 = pfVar3[0x14];
      fStack_3c = pfVar3[0x15];
      fStack_38 = pfVar3[0x16];
      fStack_34 = pfVar3[0x17];
      local_30 = *(undefined1 *)(pfVar3 + 0x18);
      local_2c = pfVar3[0x19];
      local_b4 = (byte)*param_1;
      local_20 = pfVar3[0x1c];
      fStack_1c = pfVar3[0x1d];
      fStack_18 = pfVar3[0x1e];
      fStack_14 = pfVar3[0x1f];
      if ((local_b4 & local_70) == 0) {
        FUN_1013e3d0(param_4,&local_90);
      }
      CAW_RoadClipSegmentAgainstQuadEdge
                (param_1,param_2,&local_b0,&local_a0,&local_90,&local_50,param_4);
    }
    else {
      pfVar2 = pfVar4 + -0x10;
      if (pfVar3 != pfVar4) {
        do {
          CAW_RoadClipSegmentAgainstQuadEdge
                    (param_1,param_2,&local_b0,&local_a0,pfVar2,pfVar3,param_4);
          pfVar4 = pfVar3 + 0x10;
          pfVar2 = pfVar3;
          pfVar3 = pfVar4;
        } while (pfVar4 != (float *)param_3[1]);
        return;
      }
    }
  }
  return;
}

