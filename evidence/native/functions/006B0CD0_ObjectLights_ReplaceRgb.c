/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object Lighting instruction contract. ECX object-light manager; FIVE physical
   stack words UInt32GUIDlow/high then floatR/G/B, RET14; Boolean AL. Finds exact GUID map iterator
   using TWO words; compares integer pointer/sentinel (old float/NaN expression was a type
   artifact). Missing sentinel or node+10==0 returnsAL0. Visits source pointers node+20..24 in order
   and expands RGB to aligned(R,G,B,R) before ReplaceAlignedColor4. Calls downstream6C4E50 after
   loop even when empty, returnsAL1; full downstream meaning/command registration unexpanded. No
   float normalization/finite checks. Map helper call-site has only local two-word output/key ABI
   override; shared target unchanged. The retained actual C still merges lifetime-reused lookup and
   later RGB stack slots as floats: its (float)GUID casts, float pointer comparisons and -NAN test
   are decompiler artifacts. Raw6B0CF1/CF5 store DWORD bits with MOV,6B0D08 compares integer
   pointers,6B0D0D ADD EAX10/JZ rejects integer node FFFFFFF0; NO numeric UInt32-to-float conversion
   or floating compare occurs on GUID/iterator. Use raw instructions for those expressions. */

bool __thiscall
ObjectLights_ReplaceRgb
          (void *this,uint objectGuidLow,uint objectGuidHigh,float red,float green,float blue)

{
  undefined4 *puVar1;
  int iVar2;
  undefined4 *puVar3;
  float local_30;
  float fStack_2c;
  float fStack_28;
  float fStack_24;
  float local_20;
  float fStack_1c;
  float fStack_18;
  float fStack_14;
  
                    /* MOV DWORD preserves GUID bits; actual C's float cast reflects reused later
                       RGB stack slots, not a conversion instruction. */
  local_30 = (float)objectGuidLow;
  fStack_2c = (float)objectGuidHigh;
  FUN_00a9c810((void *)((int)this + 4),(uint *)&local_20,(uint *)&local_30);
  if ((local_20 != *(float *)(*(int *)((int)this + 8) + *(int *)((int)this + 0xc) * 4)) &&
     (local_20 != -NAN)) {
    puVar3 = *(undefined4 **)((int)local_20 + 0x20);
    puVar1 = *(undefined4 **)((int)local_20 + 0x24);
    if (puVar3 != puVar1) {
                    /* Fourth lane was set from RED, so local packet RGB3 becomes(R,G,B,R), not RGBA
                       with alpha1. */
      local_20 = red;
      fStack_1c = green;
      fStack_18 = blue;
      fStack_14 = red;
      do {
        local_30 = local_20;
        fStack_2c = fStack_1c;
        fStack_28 = fStack_18;
        fStack_24 = fStack_14;
        LightSource_ReplaceAlignedColor4((void *)*puVar3,&local_30);
        puVar3 = puVar3 + 1;
      } while (puVar3 != puVar1);
    }
    iVar2 = FUN_006e9640();
    FUN_006c4e50(*(void **)(iVar2 + 0xd4),objectGuidLow,objectGuidHigh);
    return true;
  }
  return false;
}

