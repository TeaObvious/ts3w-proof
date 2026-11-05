/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 original instruction review. ECX component; four stack slots, RET10h:
   targetFloat,durationFloat,fromFloat,explicitFromByte. Original MULSS(255/256),ADDSS49152 then
   MOVSS spill/MOV integer reload is BIT REINTERPRETATION, not numeric float-to-int cast shown by
   decompiler. ADD B8C00000 and signed byte-mask clamp; ordinary finite normalized inputs use
   ambient MXCSR (nearest-even assumed for vectors), arbitrary huge/NaN behavior not established.
   Preserve RGB low24; commit requested alpha high8 to+0C before event26. Equal packed target skips
   unless explicitFrom nonzero. Payload duration+0,one byte explicitFrom+4,padding+5..7
   unspecified,fromARGB+8,targetARGB+12. No duration validation here. */

void __thiscall
VisualState_SetOpacityTransition
          (void *this,float toOpacity,float duration,float fromOpacity,byte explicitFrom)

{
  uint uVar1;
  float local_10;
  byte local_c;
  int local_8;
  uint local_4;
  
                    /* Bit reinterpretation: MOVSS store then MOV DWORD reload. No numerical
                       float-to-int conversion; C cast rendered by decompiler must not be ported
                       literally. */
  uVar1 = (int)(toOpacity * DAT_00fb3f64 + DAT_01045a80) + 0xb8c00000;
  local_4 = ((uint)(byte)~(byte)((int)uVar1 >> 0x1f) & uVar1 & 0xff |
            (int)(0xff - uVar1) >> 0x1f & 0xffU) * 0x1000000 +
            (*(uint *)((int)this + 0xc) & 0xffffff);
                    /* Compare packed quantized target; ordinary same-target request does not emit
                       solely because duration changed. */
  if ((*(uint *)((int)this + 0xc) != local_4) || (explicitFrom != 0)) {
    local_10 = duration;
    local_c = explicitFrom;
    uVar1 = (int)(fromOpacity * DAT_00fb3f64 + DAT_01045a80) + 0xb8c00000;
                    /* Commit requested target field BEFORE event26. Actual renderer presented alpha
                       follows a separate transition. */
    *(uint *)((int)this + 0xc) = local_4;
    local_8 = ((uint)(byte)~(byte)((int)uVar1 >> 0x1f) & uVar1 & 0xff |
              (int)(0xff - uVar1) >> 0x1f & 0xffU) * 0x1000000 + (local_4 & 0xffffff);
    ObjectEvents_Dispatch(0x1a,*(void **)((int)this + 4),&local_10);
  }
  return;
}

