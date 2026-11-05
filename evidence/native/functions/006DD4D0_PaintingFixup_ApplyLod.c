/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 painting contract. ECX=fixup; input LOD, output LOD pointer, substitution DWORD,
   context pointer; RET 16, Boolean AL. Stage is a full DWORD, but its comparison with 5 is SIGNED:
   zero produces (2,0,0,0), stages1..4 produce one unit channel, nonnegative >=5 stays zero.
   High-bit stages pass the gate and use unchecked 32-bit address arithmetic, base+stage*4-4: some
   alias a channel, others write outside the vector. There is no lower-bound guard. Overrides have
   0x28-byte (40-byte) memory stride: tag4/hash6CC0FD85/key16; tag1/hashFBF9E8C5/float4
   pointer/count4. Input LOD byte72 nonzero retains and substitutes it through 6DB170; otherwise
   6DB3D0 clone failure explicitly returns false without publishing output. Full clone child
   behavior is unexpanded. Iterates UINT32 mesh count from 60FC70 and mesh pointers at LOD+40. Null
   meshes/current material at mesh+2C skip; definition is material+54 and byte3D gates Painting.
   Calls definition substitution with two overrides, allow-type-change0, append-missing1; acquires
   material using selector FFFFFFFE; binds via 691400(material,false,context). Those two helper
   Boolean results are ignored. Retains/publishes output LOD, releases locals and temporary
   substitution storage, returns true. No explicit Painting shader-hash check in THIS body. Stack
   mesh count is UINT32 at -98, reveal vector float[4] at -94; previous merged float count/index
   expressions were decompiler artifacts, not numeric conversions. Texture/shader math and full
   lifetime remain separate. */

bool __thiscall
PaintingFixup_ApplyLod
          (void *this,void *inputLod,void **outputLod,uint substitutionWord,void *renderContext)

{
  int iVar1;
  void *arg0;
  int *this_00;
  byte bVar2;
  bool bVar3;
  void *pvVar4;
  uint selector;
  uint uVar5;
  int *local_a4;
  int *piStack_a0;
  int *piStack_9c;
  uint meshCount;
  float revealChannels [4];
  undefined4 local_84;
  undefined4 local_80;
  uint local_7c;
  undefined1 local_74;
  void *local_6c;
  uint local_68;
  undefined4 uStack_64;
  byte local_50 [16];
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_18;
  undefined4 local_14;
  undefined4 local_10;
  undefined4 local_c;
  float *local_8;
  undefined4 local_4;
  
  local_40 = *(undefined4 *)((int)this + 8);
  local_3c = *(undefined4 *)((int)this + 0xc);
  local_38 = *(undefined4 *)((int)this + 0x10);
  local_34 = *(undefined4 *)((int)this + 0x14);
  iVar1 = *(int *)((int)this + 0x18);
  local_18 = 0;
  local_14 = 0;
  local_10 = 0;
  local_c = 0;
  local_50[4] = 0x85;
  local_50[5] = 0xfd;
  local_50[6] = 0xc0;
  local_50[7] = 0x6c;
  local_50[0] = 4;
  local_50[1] = 0;
  local_50[2] = 0;
  local_50[3] = 0;
  revealChannels[0] = 0.0;
  revealChannels[1] = 0.0;
  revealChannels[2] = 0.0;
  revealChannels[3] = 0.0;
  if (iVar1 == 0) {
    revealChannels[0] = 2.0;
  }
  else {
                    /* SIGNED JGE 5. High-bit stages pass: 32-bit base+stage*4-4 may alias a channel
                       or address outside the vector; no unsigned range guard. */
    if (iVar1 < 5) {
      revealChannels[iVar1 + -1] = 1.0;
    }
  }
  local_8 = revealChannels;
  local_24 = 0xfbf9e8c5;
  local_28 = 1;
  local_4 = 4;
  FUN_006db0a0(&local_84);
  local_80 = 0;
  local_84 = 0;
  local_7c = substitutionWord;
  local_74 = 1;
  local_a4 = (int *)0x0;
  if (*(char *)((int)inputLod + 0x72) == '\0') {
    bVar3 = ModelLOD_CloneWithMaterialSubstitutions(inputLod,&local_a4,&local_84,renderContext);
    if (!bVar3) {
      if (local_a4 != (int *)0x0) {
        (**(code **)(*local_a4 + 4))(local_a4);
      }
      FUN_0073ebe0((int)local_6c,local_68);
      uStack_64 = 0;
      if (1 < local_68) {
        Memory_FreeIfNonNull(local_6c);
      }
      return false;
    }
  }
  else {
    (*(code *)**(undefined4 **)inputLod)(inputLod);
    local_a4 = inputLod;
    ModelLOD_ApplyMaterialSubstitutions(inputLod,inputLod,&local_84,renderContext);
  }
                    /* EAX mesh count is a DWORD at stack -98; EBP loop index is integer. No
                       float/count CVT instruction. */
  meshCount = GetNativeDescriptorTypeName_Field44(local_a4);
  uVar5 = 0;
  if (meshCount != 0) {
    do {
      arg0 = *(void **)(local_a4[0x10] + uVar5 * 4);
      if ((arg0 != (void *)0x0) && (pvVar4 = FUN_00c2ed00(arg0), pvVar4 != (void *)0x0)) {
        pvVar4 = *(void **)((int)pvVar4 + 0x54);
        bVar2 = MaterialDef_GetPaintingGateByte(pvVar4);
        if (bVar2 != 0) {
          piStack_9c = (int *)0x0;
          MaterialDef_CreateSubstituted(pvVar4,local_50,2,0,1,&piStack_9c);
          this_00 = piStack_9c;
          piStack_a0 = (int *)0x0;
          selector = FUN_006caf60();
          MaterialDef_AcquireMaterial(this_00,&piStack_a0,selector);
          Drawable_RebindEffectiveMaterial(arg0,piStack_a0,'\0',renderContext);
          if (piStack_a0 != (int *)0x0) {
            (**(code **)(*piStack_a0 + 4))(piStack_a0);
          }
          if (piStack_9c != (int *)0x0) {
            (**(code **)(*piStack_9c + 4))(piStack_9c);
          }
        }
      }
      uVar5 = uVar5 + 1;
    } while (uVar5 < meshCount);
  }
  *outputLod = local_a4;
  (**(code **)*local_a4)(local_a4);
  if (local_a4 != (int *)0x0) {
    (**(code **)(*local_a4 + 4))(local_a4);
  }
  FUN_0073ebe0((int)local_6c,local_68);
  uStack_64 = 0;
  if (1 < local_68) {
    Memory_FreeIfNonNull(local_6c);
  }
  return true;
}

