/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* WARNING: Function: __alloca_probe replaced with injection: alloca_probe */
/* PC1.67 cdecl fivewords stream,resourceformat,preserveSourceFormat,outSurface,allocate;
   ALBoolean/plainRET. Initializes decoder,sets input,loads source and requires UNSIGNED
   framecount>=1,usesframe0. With preserve true rejects
   source64,source16->format3/16bits,32->format10/8setting,48->format11/16setting,other->format2/8setting;false->format10.
   Format bitcount444000 distinguishes2=8bpp,10=32bpp. Surface virtual4
   takeswidth,height,formatpair8bytes;virtual10 oneoutview pointer;virtual14 noargs. Invokes decoder
   conversion with copiedsource descriptor,data,rowpitch. This is NOT proof that arbitrary colored
   profiles use red-only or fixedonebytegrayscale conversion. Complete decoder plugin/palette
   channel conversion remains distinct. */

bool __cdecl
ImageResource_DecodeFirstFrameToSurface
          (undefined *source,uint format,bool preserveSourceFormat,undefined *outSurface,
          bool allocate)

{
  int iVar1;
  byte bVar2;
  bool bVar3;
  undefined4 uVar4;
  void *_Src;
  undefined4 *puVar5;
  uint format_00;
  undefined4 local_2a90;
  undefined *puStack_2a8c;
  uint uStack_2a88;
  undefined auStack_2a84 [8];
  int local_2a7c;
  undefined1 local_2a70 [24];
  undefined4 local_2a58;
  undefined4 uStack_4;
  
  uStack_4 = 0xc88d6a;
  FUN_004439b0(&local_2a90);
  bVar2 = FUN_004439d0(&local_2a90,(int *)source);
  if (((bVar2 == 0) || (uVar4 = FUN_00443c60(&local_2a90,format), (char)uVar4 == '\0')) ||
     (local_2a7c == 0)) {
LAB_00c88df5:
    FUN_00443c20(&local_2a90);
    return false;
  }
  bVar3 = false;
  _Src = (void *)FUN_00443a70(&local_2a90,0);
  if (_Src == (void *)0x0) goto LAB_00c88ed8;
  memcpy(local_2a70,_Src,0x2a70);
  if (preserveSourceFormat) {
    iVar1 = *(int *)((int)_Src + 0x1c);
    if (iVar1 == 0x40) {
      FUN_00443a30((int)&local_2a90);
      goto LAB_00c88df5;
    }
    if (iVar1 == 0x10) {
      format_00 = 3;
      local_2a58 = 0x10;
    }
    else {
      if (iVar1 == 0x20) {
        local_2a58 = 8;
        goto LAB_00c88e3a;
      }
      if (iVar1 == 0x30) {
        format_00 = 0xb;
        local_2a58 = 0x10;
      }
      else {
        format_00 = 2;
        local_2a58 = 8;
      }
    }
  }
  else {
LAB_00c88e3a:
    format_00 = 10;
  }
  if (allocate) {
    puVar5 = (undefined4 *)FUN_00444060(0x30);
    if (puVar5 == (undefined4 *)0x0) {
      uVar4 = 0;
    }
    else {
      uVar4 = FUN_004446f0(puVar5);
    }
    *(undefined4 *)outSurface = uVar4;
  }
  ImageSurface_BitsPerPixelForFormat(format_00);
  (**(code **)(**(int **)outSurface + 4))
            (*(undefined4 *)((int)_Src + 0x10),*(undefined4 *)((int)_Src + 0x14),format_00);
  (**(code **)(**(int **)outSurface + 0x10))(&uStack_2a88);
  bVar3 = ImageDecoder_ConvertFrameToPixels(&stack0xffffd55c,auStack_2a84,puStack_2a8c,uStack_2a88);
  (**(code **)(**(int **)outSurface + 0x14))();
  thunk_FUN_00446170((int)_Src);
LAB_00c88ed8:
  FUN_00443a30((int)&local_2a90);
  FUN_00443c20(&local_2a90);
  return bVar3;
}

