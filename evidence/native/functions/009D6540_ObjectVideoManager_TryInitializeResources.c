/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* ECX receiver; no explicit stack arguments observed, three RET0 exits set AL only.
   Full141-instruction/433-byte body ends009D66F0; exclude15trailingCC bytes and precedingCC. Sets
   receiver+90/global011EA998 before subscriptions/settings/resource work can fail, so a later flag
   fast path may return AL1 with no black resource. Registers literal
   BADA_F60C/635A339E/06168BE5/1EAB13F0 through service virtual+24; delivery semantics unselected.
   Reads named VideoPauseDistance/VideoVirtualLength settings. Produces011EA99C via
   Video/BlackTexture and0061A2A0, passes1,1,1,0x10,2,DefaultTextures to0061A360; on a nonnull
   returned pointer writes one zero byte then calls006198A0. Helper format/lock semantics, native
   opaque RGBA8 and visibility/decode policy are not established. Stored function metadata does not
   establish the inferred receiver or return width; instruction-level ECX/AL/RET behavior is
   authoritative. */

undefined4 __fastcall ObjectVideoManager_TryInitializeResources(int param_1)

{
  Ts3SkinTexture2D *this;
  char cVar1;
  bool bVar2;
  int *piVar3;
  void *this_00;
  undefined4 *puVar4;
  float10 fVar5;
  PC167_SurfaceMapping PStack_28;
  
  if (*(char *)(param_1 + 0x90) != '\0') {
    return 1;
  }
  cVar1 = ScriptCore.GameUtils::GameUtils_AddOrConfigureProfiler();
  if (cVar1 != '\0') {
    *(undefined1 *)(param_1 + 0x90) = 1;
    DAT_011ea998 = param_1;
    FUN_00f2d170(&PTR_PTR_01182598);
    piVar3 = (int *)MessageDispatch_GetCurrent();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x24))(param_1 + 0x10,0xbadaf60c,0,0);
      (**(code **)(*piVar3 + 0x24))(param_1 + 0x10,0x635a339e,0,0);
    }
    piVar3 = (int *)FUN_007693a0();
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 0x24))(param_1 + 0x10,0x6168be5,0,0);
      (**(code **)(*piVar3 + 0x24))(param_1 + 0x10,0x1eab13f0,0,0);
    }
    this_00 = (void *)Graphics_GetManagerSingleton();
    if (this_00 != (void *)0x0) {
      Graphics_RegisterResetOwner(this_00,param_1 + 0x14);
    }
    fVar5 = FUN_0058af50((short *)PTR_u_Config_01150ab0,L"VideoPauseDistance",
                         *(float *)(param_1 + 0x94));
    *(float *)(param_1 + 0x94) = (float)fVar5;
    fVar5 = FUN_0058af50((short *)PTR_u_Config_01150ab0,L"VideoVirtualLength",
                         *(float *)(param_1 + 0x98));
    *(float *)(param_1 + 0x98) = (float)fVar5;
    if (DAT_011ea99c != (Ts3SkinTexture2D *)0x0) {
      return 1;
    }
    puVar4 = (undefined4 *)FUN_004e4500(0x34,"Video/BlackTexture",0);
    if (puVar4 == (undefined4 *)0x0) {
      DAT_011ea99c = (Ts3SkinTexture2D *)0x0;
      return 0;
    }
    DAT_011ea99c = (Ts3SkinTexture2D *)Texture_Construct(puVar4);
    if (DAT_011ea99c != (Ts3SkinTexture2D *)0x0) {
      (**(code **)(*(int *)DAT_011ea99c + 4))();
      bVar2 = Texture_Create2D(DAT_011ea99c,1,1,1,0x10,2,"DefaultTextures");
      if (bVar2) {
        Surface_MapTextureLevel(DAT_011ea99c,&PStack_28,0,0);
        this = DAT_011ea99c;
        if (PStack_28.bits == (undefined1 *)0x0) {
          return 1;
        }
        *(undefined1 *)PStack_28.bits = 0;
        Surface_UnmapIfMapped(this,&PStack_28);
        return 1;
      }
    }
  }
  return 0;
}

