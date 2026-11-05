/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* Analyst PC1.67 Actual ECX scene renderer, one stack DWORD item pointer, RET4. Null item or zero
   AL from6FA970 takes the identity branch. Accepted source calls actual item virtual+10 and TEST
   AL: nonzero alone obtains6FAE70 into stack output, copies four16-byte blocks to
   globals11D2A90..ACC and binds renderer handle+1DC via79A040. Accepted source always
   obtains6FAF40, copies four blocks to11D2A50..A8C and binds+1E0. Rejected branch lazily
   initializes identity at11D2A10..A4C under bit4 of11D2AD0 and binds only+1E0; it does NOT
   clear+1DC. Existing enclosing6EA9A0 clears all four queue handles afterward. Bits1/2 mark the two
   copied static payloads; actual semantics of source getter/virtual predicate/deeper transforms
   remain bounded. No whole context retention, current Vulkan alpha-mask/batching/cache-counter or
   frame-receipt parity is inferred. Full owned instruction envelope is retained. */

void __thiscall SceneShadow_UpdateItemMatrixPayloads(void *this,int *param_1)

{
  void *this_00;
  char cVar1;
  undefined4 uVar2;
  float *pfVar3;
  undefined1 (*pauVar4) [16];
  float afStack_50 [19];
  
  this_00 = DAT_011d8530;
  if (param_1 != (int *)0x0) {
    uVar2 = SceneObject_TestShadowMatrixSource((int)param_1);
                    /* Actual TEST AL from6FA970; source wrapper itself normalizes EAX0/1, this
                       caller consumes only low byte. */
    if ((char)uVar2 != '\0') {
      cVar1 = (**(code **)(*param_1 + 0x10))();
                    /* Actual virtual+10 AL condition controls only payloadA/+1DC update;
                       payloadB/+1E0 still follows on accepted-source path. */
      if (cVar1 != '\0') {
        if ((_DAT_011d2ad0 & 1) == 0) {
          _DAT_011d2ad0 = _DAT_011d2ad0 | 1;
        }
        pfVar3 = SceneObject_CopyMatrixPayloadAOrIdentity(param_1,afStack_50);
        _DAT_011d2a90 = *pfVar3;
        fRam011d2a94 = pfVar3[1];
        fRam011d2a98 = pfVar3[2];
        fRam011d2a9c = pfVar3[3];
        _DAT_011d2aa0 = pfVar3[4];
        fRam011d2aa4 = pfVar3[5];
        fRam011d2aa8 = pfVar3[6];
        fRam011d2aac = pfVar3[7];
        _DAT_011d2ab0 = pfVar3[8];
        fRam011d2ab4 = pfVar3[9];
        fRam011d2ab8 = pfVar3[10];
        fRam011d2abc = pfVar3[0xb];
        _DAT_011d2ac0 = pfVar3[0xc];
        fRam011d2ac4 = pfVar3[0xd];
        fRam011d2ac8 = pfVar3[0xe];
        fRam011d2acc = pfVar3[0xf];
                    /* Bind actual64-byte copied payloadA through renderer handle+1DC; no guessed
                       matrix semantic name. */
        FUN_0079a040(this_00,*(uint *)((int)this + 0x1dc),0x11d2a90);
      }
      if ((_DAT_011d2ad0 & 2) == 0) {
        _DAT_011d2ad0 = _DAT_011d2ad0 | 2;
      }
      pauVar4 = SceneObject_CopyMatrixPayloadBOrIdentity(param_1,(undefined1 (*) [16])afStack_50);
      _DAT_011d2a50 = *(undefined4 *)*pauVar4;
      uRam011d2a54 = *(undefined4 *)(*pauVar4 + 4);
      uRam011d2a58 = *(undefined4 *)(*pauVar4 + 8);
      uRam011d2a5c = *(undefined4 *)(*pauVar4 + 0xc);
      _DAT_011d2a60 = *(undefined4 *)pauVar4[1];
      uRam011d2a64 = *(undefined4 *)(pauVar4[1] + 4);
      uRam011d2a68 = *(undefined4 *)(pauVar4[1] + 8);
      uRam011d2a6c = *(undefined4 *)(pauVar4[1] + 0xc);
      _DAT_011d2a70 = *(undefined4 *)pauVar4[2];
      uRam011d2a74 = *(undefined4 *)(pauVar4[2] + 4);
      uRam011d2a78 = *(undefined4 *)(pauVar4[2] + 8);
      uRam011d2a7c = *(undefined4 *)(pauVar4[2] + 0xc);
      _DAT_011d2a80 = *(undefined4 *)pauVar4[3];
      uRam011d2a84 = *(undefined4 *)(pauVar4[3] + 4);
      uRam011d2a88 = *(undefined4 *)(pauVar4[3] + 8);
      uRam011d2a8c = *(undefined4 *)(pauVar4[3] + 0xc);
      FUN_0079a040(this_00,*(uint *)((int)this + 0x1e0),0x11d2a50);
      return;
    }
  }
  if ((_DAT_011d2ad0 & 4) == 0) {
    _DAT_011d2ad0 = _DAT_011d2ad0 | 4;
    _DAT_011d2a10 = 1.0;
    uRam011d2a14 = 0;
    uRam011d2a18 = 0;
    uRam011d2a1c = 0;
    _DAT_011d2a20 = 0;
    fRam011d2a24 = 1.0;
    uRam011d2a28 = 0;
    uRam011d2a2c = 0;
    _DAT_011d2a30 = 0;
    uRam011d2a34 = 0;
    fRam011d2a38 = 1.0;
    uRam011d2a3c = 0;
    _DAT_011d2a40 = 0;
    uRam011d2a44 = 0;
    uRam011d2a48 = 0;
    fRam011d2a4c = 1.0;
  }
                    /* Rejected/null source binds identity to handle+1E0 ONLY; no+1DC clear here.
                       Whole queue6EA9A0 later clears all four handles. */
  FUN_0079a040(this_00,*(uint *)((int)this + 0x1e0),0x11d2a10);
  return;
}


