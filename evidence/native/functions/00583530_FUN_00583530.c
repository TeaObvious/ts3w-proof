/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */

/* Instruction-qualified semantics. Physical stdcall four stack words/RET10; current Ghidra C shows only first two used binding/payload pointers. Full150 Listing starts/443 bytes verified. Payload kindC1E40006 gate; resolve actor via virtual24 or577A10. Component11EA0FC presence is remembered; alternate component11DD484+2C signbit takes render-command04878BC4 path. Otherwise VisualState required. Debug global11CE800+31 selects tint instead of ordinary visibility. Ordinary compares payload+28 against exact Float32 37800000 (1/65536), COMISS/JBE makes unordered hidden. Calls95E650 first, then only remembered component present and hidden calls797E90 with GUIDlow/high and destroy=false. The C string ViewToClipSpaceMatrix is a false type for immediate00FF8844 tint. Complete actor/reference/debug/mode consumers remain separate. */

void FUN_00583530(int *param_1,int param_2)

{
  bool bVar1;
  void *pvVar2;
  void *pvVar3;
  int iVar4;
  char *toRGB;
  void *this;
  byte abStack_60 [8];
  undefined4 uStack_58;
  undefined4 uStack_54;
  uint uStack_50;
  uint uStack_4c;
  
  if ((param_2 != 0) && (*(int *)(param_2 + 8) == -0x3e1bfffa)) {
    this = (void *)0x0;
    if (((*(int *)(*param_1 + 8) == 0) ||
        (this = (void *)(**(code **)(**(int **)(*param_1 + 8) + 0x24))(), this == (void *)0x0)) &&
       (*(int *)(*param_1 + 0xc) != 0)) {
      this = (void *)FUN_00577a10(*(int *)(*param_1 + 0xc));
    }
    if (this != (void *)0x0) {
      pvVar2 = Object_GetComponentByMask(this,DAT_011ea0fc);
      pvVar3 = Object_GetComponentByMask(this,DAT_011dd484);
      if ((pvVar3 != (void *)0x0) && (*(int *)((int)pvVar3 + 0x2c) < 0)) {
        uStack_58 = *(undefined4 *)((int)this + 8);
        uStack_54 = *(undefined4 *)((int)this + 0xc);
        abStack_60[0] = 0xc4;
        abStack_60[1] = 0x8b;
        abStack_60[2] = 0x87;
        abStack_60[3] = 4;
        abStack_60[4] = 0;
        abStack_60[5] = 0;
        abStack_60[6] = 0;
        abStack_60[7] = 0;
        uStack_50 = DAT_01150988;
        uStack_4c = -(uint)(1.5258789e-05 < *(float *)(param_2 + 0x28)) & DAT_01150988;
        RenderCommand_EnqueueIfDispatcherExists(abStack_60);
        FUN_00582a70((int)abStack_60);
        return;
      }
      pvVar3 = Object_GetComponentByMask(this,DAT_011ea2a8);
      if (pvVar3 != (void *)0x0) {
        if (*(char *)(DAT_011ce800 + 0x31) != '\0') {
          if (*(float *)(param_2 + 0x28) <= 1.5258789e-05) {
            toRGB = "ViewToClipSpaceMatrix";
          }
          else {
            iVar4 = FUN_00582b70(param_1);
            if ((iVar4 == 0) || (((byte)*(undefined4 *)(iVar4 + 0xc) & 2) != 2)) {
              toRGB = (char *)0x0;
            }
            else {
              toRGB = (char *)0xff00;
            }
          }
          VisualState_SetTintTransition(pvVar3,(uint)toRGB,0.0,0,0);
          return;
        }
        bVar1 = 1.5258789e-05 < *(float *)(param_2 + 0x28);
        FUN_0095e650(pvVar3,bVar1);
        if ((pvVar2 != (void *)0x0) && (!bVar1)) {
          ScriptCore.World::World_ObjectDetachAutoDestroyEffects
                    (*(undefined4 *)((int)this + 8),*(undefined4 *)((int)this + 0xc),'\0');
        }
      }
    }
  }
  return;
}
