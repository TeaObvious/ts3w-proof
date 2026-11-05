/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* PC1.67 thiscallECXdecoder,threewords descriptor,data,rowPitch RET0Chex; readybyte10
   anddecoderhandle8 required. Callspluginvirtual18 with handleC plus3words; nonzeropluginEAX
   normalizedfullEAX0/1. Failure paths onlyXORAL,so physicalreturnisALBoolean; upperbitsundefined.
   Actualpixelchannel/palettealgorithm belongsplugin target,not thisforwarder. */

bool __thiscall
ImageDecoder_ConvertFrameToPixels(void *this,undefined *frame,undefined *data,uint rowPitch)

{
  int iVar1;
  
  if ((*(char *)((int)this + 0x10) != '\0') && (*(int *)((int)this + 8) != 0)) {
    iVar1 = (**(code **)(*(int *)((int)this + 8) + 0x18))
                      (*(undefined4 *)((int)this + 0xc),frame,data,rowPitch);
    return iVar1 != 0;
  }
  return false;
}

