/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. ECX sceneobject,floatRGBA4. Stores presented
   RGB/alpha at+1D0..1DC. SIMD shuffle/add computes B+(G+R), with separate binary32 rounding, NOT
   decompiler grouping (B+G)+R. For finite RGB sum>=binary32(2.99), snaps RGB to1 and clears byte208
   mask2; otherwise retainsRGB/sets mask2. Effective old/new alpha is factor+1E8 *
   (presentedAlpha+1DC * factor+1E4), in that grouping, unless byte208 mask20 forces1. Decompiled
   left-associated product also loses instruction grouping. Calls006FC840 for bandchanges,
   then006FC800 descendant callbacks. Factor producers and final shader/material blending remain
   unresolved. */

void __thiscall SceneObject_SetTintOpacity(void *this,float *rgba4)

{
  float fVar1;
  float local_28;
  float local_24;
  
  local_28 = DAT_00f998f8;
                    /* SIMD scalar lane first adds G+R; 006FD28F then adds B+(G+R). Preserve
                       binary32 grouping; decompiler reassociates this sum. */
  if (rgba4[2] + rgba4[1] + *rgba4 < (float)s_4____Renderer_SceneObject_mLight_00ffad1f._1_4_) {
    *(float *)((int)this + 0x1d0) = *rgba4;
    *(undefined4 *)((int)this + 0x1d4) = *(undefined4 *)((int)this + 0x1d4);
    *(undefined4 *)((int)this + 0x1d8) = *(undefined4 *)((int)this + 0x1d8);
    *(undefined4 *)((int)this + 0x1dc) = *(undefined4 *)((int)this + 0x1dc);
    fVar1 = rgba4[1];
    *(undefined4 *)((int)this + 0x1d0) = *(undefined4 *)((int)this + 0x1d0);
    *(float *)((int)this + 0x1d4) = fVar1;
    *(undefined4 *)((int)this + 0x1d8) = *(undefined4 *)((int)this + 0x1d8);
    *(undefined4 *)((int)this + 0x1dc) = *(undefined4 *)((int)this + 0x1dc);
    fVar1 = rgba4[2];
    *(undefined4 *)((int)this + 0x1d0) = *(undefined4 *)((int)this + 0x1d0);
    *(undefined4 *)((int)this + 0x1d4) = *(undefined4 *)((int)this + 0x1d4);
    *(float *)((int)this + 0x1d8) = fVar1;
    *(undefined4 *)((int)this + 0x1dc) = *(undefined4 *)((int)this + 0x1dc);
    *(byte *)((int)this + 0x208) = *(byte *)((int)this + 0x208) | 2;
  }
  else {
    *(float *)((int)this + 0x1d0) = DAT_00f998f8;
    *(undefined4 *)((int)this + 0x1d4) = *(undefined4 *)((int)this + 0x1d4);
    *(undefined4 *)((int)this + 0x1d8) = *(undefined4 *)((int)this + 0x1d8);
    *(undefined4 *)((int)this + 0x1dc) = *(undefined4 *)((int)this + 0x1dc);
    *(undefined4 *)((int)this + 0x1d0) = *(undefined4 *)((int)this + 0x1d0);
    *(float *)((int)this + 0x1d4) = local_28;
    *(undefined4 *)((int)this + 0x1d8) = *(undefined4 *)((int)this + 0x1d8);
    *(undefined4 *)((int)this + 0x1dc) = *(undefined4 *)((int)this + 0x1dc);
    *(undefined4 *)((int)this + 0x1d0) = *(undefined4 *)((int)this + 0x1d0);
    *(undefined4 *)((int)this + 0x1d4) = *(undefined4 *)((int)this + 0x1d4);
    *(float *)((int)this + 0x1d8) = local_28;
    *(undefined4 *)((int)this + 0x1dc) = *(undefined4 *)((int)this + 0x1dc);
    *(byte *)((int)this + 0x208) = *(byte *)((int)this + 0x208) & 0xfd;
  }
  if ((*(byte *)((int)this + 0x208) & 0x20) == 0) {
                    /* Old effective alpha first multiplies alpha * factor1E4; then factor1E8 * that
                       rounded product. Decompiler reassociates this product. */
    local_24 = *(float *)((int)this + 0x1e8) *
               *(float *)((int)this + 0x1dc) * *(float *)((int)this + 0x1e4);
  }
  else {
    local_24 = local_28;
  }
  fVar1 = rgba4[3];
  *(undefined4 *)((int)this + 0x1d0) = *(undefined4 *)((int)this + 0x1d0);
  *(undefined4 *)((int)this + 0x1d4) = *(undefined4 *)((int)this + 0x1d4);
  *(undefined4 *)((int)this + 0x1d8) = *(undefined4 *)((int)this + 0x1d8);
  *(float *)((int)this + 0x1dc) = fVar1;
  if ((*(byte *)((int)this + 0x208) & 0x20) == 0) {
                    /* New effective alpha uses the same grouping: factor1E8 * (newAlpha *
                       factor1E4). */
    local_28 = *(float *)((int)this + 0x1e8) *
               *(float *)((int)this + 0x1dc) * *(float *)((int)this + 0x1e4);
  }
  else {
  }
  SceneObject_NotifyOpacityBandChange(this,local_24,local_28);
  SceneObject_VisitDescendantVisualCallbacks(this);
  return;
}

