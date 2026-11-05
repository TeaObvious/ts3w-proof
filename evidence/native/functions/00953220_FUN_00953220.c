/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Original PC1.67 instruction-qualified analyst note. Physical ECX is steering component+8, as established by955D19 and vtable10455A8 slot68=953220. Requires interface+90 sink; owner pointer is interface-4. Actual stack construction at9533B5..D3 passes event type4 and both owner GUID words to sink vtable+8, with vector inputs and four zero trailing words. Decompiler stack/local lane names are unreliable; exact vector provenance/math and managed dispatch/exception behavior remain open. No unconditional emitted event when the sink is absent. Display alias Steering_EmitTravellingEvent is a reference-file annotation; database symbols are unchanged. */

void __fastcall FUN_00953220(int *param_1)

{
  undefined1 auVar1 [16];
  undefined4 uVar2;
  float fVar3;
  float fVar7;
  float fVar8;
  undefined1 auVar4 [16];
  undefined1 auVar5 [16];
  undefined1 auVar6 [16];
  float fVar9;
  float fVar10;
  undefined1 in_XMM3 [16];
  float fStack_58;
  float fStack_54;
  float fStack_50;
  float fStack_4c;
  float fStack_48;
  float fStack_44;
  float fStack_40;
  float fStack_3c;
  float fStack_38;
  float fStack_34;
  float fStack_30;
  float fStack_2c;
  undefined1 auStack_28 [8];
  undefined1 local_20 [28];
  
  if (param_1[0x24] != 0) {
    (**(code **)(*param_1 + 0x1c))(local_20);
    uVar2 = (**(code **)(*param_1 + 0x38))(&fStack_44);
    auVar4._0_4_ = (fStack_48 - 0.0) * -1.0;
    auVar4._4_4_ = (fStack_44 - 0.0) * -1.0;
    auVar4._8_4_ = (fStack_40 - 0.0) * -1.0;
    auVar4._12_4_ = (fStack_3c - 0.0) * -1.0;
    auVar5._4_4_ = fStack_44 - 0.0;
    auVar5._0_4_ = fStack_48 - 0.0;
    auVar5._8_4_ = fStack_40 - 0.0;
    auVar5._12_4_ = fStack_3c - 0.0;
    auVar5 = maxps(auVar4,auVar5);
    auVar6._4_4_ = -(uint)(auVar5._4_4_ <= 1.5258789e-05);
    auVar6._0_4_ = -(uint)(auVar5._0_4_ <= 1.5258789e-05);
    auVar6._8_4_ = -(uint)(auVar5._8_4_ <= 1.5258789e-05);
    auVar6._12_4_ = -(uint)(auVar5._12_4_ <= 1.5258789e-05);
    uVar2 = movmskps(uVar2,auVar6);
    if (((byte)uVar2 & 7) == 7) {
      (**(code **)(*param_1 + 0x28))(&fStack_38);
      fVar3 = (fStack_34 * 1.0 - fStack_30 * 0.0) + fStack_2c * 0.0;
      fVar7 = (fStack_30 * 0.0 - fStack_38 * 1.0) + fStack_2c * 0.0;
      fVar8 = (fStack_38 * 0.0 - fStack_34 * 0.0) + fStack_2c * 1.0;
      fStack_58 = (fVar8 * fStack_34 - fVar7 * fStack_30) * 2.0 + 0.0;
      fStack_54 = (fVar3 * fStack_30 - fVar8 * fStack_38) * 2.0 + 0.0;
      fStack_50 = (fVar7 * fStack_38 - fVar3 * fStack_34) * 2.0 + 1.0;
      fStack_4c = (fVar3 * fStack_38 - fVar3 * fStack_38) * 2.0 + 0.0;
    }
    else {
      fVar3 = fStack_40 * fStack_40 + fStack_44 * fStack_44 + fStack_48 * fStack_48;
      auVar1._4_4_ = fVar3;
      auVar1._0_4_ = fVar3;
      auVar1._8_4_ = fVar3;
      auVar1._12_4_ = fVar3;
      auVar5 = rsqrtps(in_XMM3,auVar1);
      fVar7 = auVar5._0_4_;
      fVar8 = auVar5._4_4_;
      fVar9 = auVar5._8_4_;
      fVar10 = auVar5._12_4_;
      fVar7 = (1.0 - fVar7 * fVar7 * fVar3) * fVar7 * 0.5 + fVar7;
      fVar8 = (1.0 - fVar8 * fVar8 * fVar3) * fVar8 * 0.5 + fVar8;
      fVar9 = (1.0 - fVar9 * fVar9 * fVar3) * fVar9 * 0.5 + fVar9;
      fVar10 = (1.0 - fVar10 * fVar10 * fVar3) * fVar10 * 0.5 + fVar10;
      fStack_58 = ((1.0 - fVar7 * fVar7 * fVar3) * fVar7 * 0.5 + fVar7) * fStack_48;
      fStack_54 = ((1.0 - fVar8 * fVar8 * fVar3) * fVar8 * 0.5 + fVar8) * fStack_44;
      fStack_50 = ((1.0 - fVar9 * fVar9 * fVar3) * fVar9 * 0.5 + fVar9) * fStack_40;
      fStack_4c = ((1.0 - fVar10 * fVar10 * fVar3) * fVar10 * 0.5 + fVar10) * fStack_3c;
    }
    (**(code **)(*(int *)param_1[0x24] + 8))
              (auStack_28,&fStack_38,&fStack_58,4,*(undefined4 *)(param_1[-1] + 8),
               *(undefined4 *)(param_1[-1] + 0xc),0,0,0,0);
  }
  return;
}

