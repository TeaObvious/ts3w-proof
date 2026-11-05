/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 local light rig contract. ECXrig+selection RET4. Computesresponses
   for-X,+X,-Y,+Y,-Z,+Z via6B7E90, sequentialMAXPS intoinitialzero fourlanemax.
   Dynamiclimitfrom11D1BA8 passed asONEstackfloat; EAXpointsmaxresponse to6B7640, resultXMM0,
   NOTvoid/noargs andNOTST0. If COMISS1,result NOTJBE (orderedresult<1) scales
   via6B8350(selection,result). Four-laneresponsescomputed; ratio selectsRGB only.
   FullFPstate/globaldefaultsnotestablished. */

void __thiscall Rig_BalanceSelectedResponse(void *this,Analyst_RigBankSelection *selection)

{
  undefined1 (*pauVar1) [16];
  undefined1 (*pauVar2) [16];
  undefined1 (*pauVar3) [16];
  undefined1 (*pauVar4) [16];
  undefined1 (*pauVar5) [16];
  undefined1 (*pauVar6) [16];
  float *pfVar7;
  float fVar8;
  undefined1 auVar9 [16];
  float fVar10;
  float fVar11;
  float fVar12;
  float local_80;
  float fStack_7c;
  float fStack_78;
  float fStack_74;
  undefined1 local_70 [8];
  float fStack_68;
  float fStack_64;
  float local_60 [4];
  float local_50 [4];
  float local_40 [4];
  float local_30 [4];
  float local_20 [7];
  
  fVar10 = 0.0;
  local_80 = FLOAT_00f998f8;
  fStack_74 = 0.0;
  fStack_78 = 0.0;
  fStack_7c = 0.0;
  auVar9._0_12_ = ZEXT812(0);
  auVar9._12_4_ = 0;
  _local_70 = ZEXT416((uint)(0.0 - FLOAT_00f998f8));
  pauVar1 = (undefined1 (*) [16])Rig_ResponseOnDirection(this,local_60,selection,(float *)local_70);
  local_70._4_4_ = fStack_7c;
  local_70._0_4_ = local_80;
  fStack_68 = fStack_78;
  fStack_64 = fStack_74;
  pauVar2 = (undefined1 (*) [16])Rig_ResponseOnDirection(this,local_50,selection,(float *)local_70);
  fStack_7c = FLOAT_00f998f8;
  local_70._4_4_ = auVar9._4_4_ - FLOAT_00f998f8;
  local_70._0_4_ = auVar9._0_4_ - fVar10;
  fStack_68 = auVar9._8_4_ - fVar10;
  fStack_64 = auVar9._12_4_ - fVar10;
  local_80 = fVar10;
  fStack_78 = fVar10;
  fStack_74 = fVar10;
  pauVar3 = (undefined1 (*) [16])Rig_ResponseOnDirection(this,local_40,selection,(float *)local_70);
  local_70._4_4_ = fStack_7c;
  local_70._0_4_ = local_80;
  fStack_68 = fStack_78;
  fStack_64 = fStack_74;
  pauVar4 = (undefined1 (*) [16])Rig_ResponseOnDirection(this,local_30,selection,(float *)local_70);
  fStack_78 = FLOAT_00f998f8;
  local_70._4_4_ = auVar9._4_4_ - fVar10;
  local_70._0_4_ = auVar9._0_4_ - fVar10;
  fStack_68 = auVar9._8_4_ - FLOAT_00f998f8;
  fStack_64 = auVar9._12_4_ - fVar10;
  fVar8 = fVar10;
  fVar11 = FLOAT_00f998f8;
  fVar12 = fVar10;
  local_80 = fVar10;
  fStack_7c = fVar10;
  fStack_74 = fVar10;
  pauVar5 = (undefined1 (*) [16])Rig_ResponseOnDirection(this,&local_80,selection,(float *)local_70)
  ;
  local_70._4_4_ = fVar8;
  local_70._0_4_ = fVar10;
  fStack_68 = fVar11;
  fStack_64 = fVar12;
  pauVar6 = (undefined1 (*) [16])Rig_ResponseOnDirection(this,local_20,selection,(float *)local_70);
  auVar9 = maxps(auVar9,*pauVar1);
  auVar9 = maxps(auVar9,*pauVar2);
  auVar9 = maxps(auVar9,*pauVar3);
  auVar9 = maxps(auVar9,*pauVar4);
  auVar9 = maxps(auVar9,*pauVar5);
  _local_70 = maxps(auVar9,*pauVar6);
  pfVar7 = (float *)FUN_007e51a0(&DAT_011d1ba8);
                    /* CUSTOM ABI child: EAX=&fourlaneResponse, stackfloat=dynamiclimit, XMM0=float
                       ratio; callerpops4. Prior noargs/voidC losesreal dataflow. */
  fVar8 = Rig_ResponseLimitRatio((float *)local_70,*pfVar7);
  if (fVar8 < FLOAT_00f998f8) {
    Rig_ScaleSelectedColors(this,selection,fVar8);
  }
  return;
}

