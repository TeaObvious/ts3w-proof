/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 variation/leaf metadata contract. ECX owner and THREE stack words, RET0C; only
   first properties argument is read in this body. Remaining two words retained as unknown unused
   ABI slots, not silently dropped. Calls template/primitive initializer. Collection
   propertyAF289042, transform54CB7EBB and scale70E47545; per item scale/variation same SSE or
   table/x87 boundary as binary reader. UInt32 owner low identity is loaded from owner+4 ->DWORD+8;
   nextDWORD+0C is copied locally but not supplied to lookup. Failed collection lookup still reaches
   final helper and returns AL1; do not invent global success validation from this result. Property
   accessor/matrix helper contracts remain unexpanded. */

byte __thiscall
TreeComponent_ReadPropertyPrimitives
          (void *this,void *properties,undefined4 unusedWord2,undefined4 unusedWord3)

{
  float fVar1;
  int iVar2;
  char cVar3;
  undefined4 uVar4;
  void *this_00;
  undefined4 *local_6c;
  uint local_68;
  int local_64;
  uint local_60;
  uint local_5c [2];
  undefined4 local_54;
  uint local_50 [19];
  
  TreeComponent_ReloadTemplateAndInitializePrimitives(this);
  local_68 = 0;
  cVar3 = NativePropertyStream_ReadUInt32(properties,0xaf289042,&local_68);
  if (cVar3 != '\0') {
    FUN_007b7fb0((void *)(*(int *)((int)this + 8) + 8),local_68);
    local_60 = 0;
    if (local_68 != 0) {
      local_64 = 0;
      do {
        this_00 = (void *)(*(int *)(*(int *)((int)this + 8) + 8) + local_64);
        local_6c = (undefined4 *)0x0;
        uVar4 = NativePropertyStream_OpenChild(properties,local_60,&local_6c);
        if ((char)uVar4 != '\0') {
          local_5c[0] = 0x10;
          NativePropertyStream_ReadSingleArray(local_6c,0x54cb7ebb,local_50,local_5c);
          TreePrimitive_SetYawTranslation(this_00,local_50);
          NativePropertyStream_ReadSingle(local_6c,0x70e47545,(uint *)((int)this_00 + 0x48));
          iVar2 = *(int *)((int)this + 0xc);
          if ((iVar2 == 0) ||
             ((fVar1 = *(float *)(iVar2 + 0x54), fVar1 <= 1.1920929e-07 && (-1.1920929e-07 <= fVar1)
              ))) {
            local_54 = *(undefined4 *)(*(int *)((int)this + 4) + 0xc);
            local_5c[0] = VariationWords_Lookup1999(*(uint *)(*(int *)((int)this + 4) + 8));
                    /* Unsigned word normalization uses signed FILD, conditional double2^32
                       correction, double constant01045940(bits3DF0000000100000, rounded
                       reciprocal4294967295, NOT exact2^-32) multiply, one final FSTPfloat; no
                       intermediate FSTPfloat. */
            fVar1 = (float)(int)local_5c[0];
            if ((int)local_5c[0] < 0) {
              fVar1 = fVar1 + 4.2949673e+09;
            }
            *(float *)((int)this_00 + 0x4c) = fVar1 * 2.3283064e-10;
          }
          else {
            *(float *)((int)this_00 + 0x4c) =
                 ((*(float *)((int)this_00 + 0x48) * *(float *)(iVar2 + 0x50) -
                  *(float *)(iVar2 + 0x50)) / fVar1 + 1.0) * 0.5;
          }
        }
        if (local_6c != (undefined4 *)0x0) {
          iVar2 = local_6c[1];
          local_6c[1] = iVar2 + -1;
          if (iVar2 + -1 == 0) {
            local_6c[1] = 1;
            (**(code **)*local_6c)(1);
          }
        }
        local_64 = local_64 + 0x50;
        local_60 = local_60 + 1;
      } while (local_60 < local_68);
    }
    FUN_0095ab30((int)this);
    TreeComponent_RefreshClusterBounds((int)this);
  }
  FUN_0095af50((int)this);
  return 1;
}

