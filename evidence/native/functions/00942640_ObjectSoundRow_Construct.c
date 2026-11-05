/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 object sound admission. ECX20-byte row, packed ID + byte name RET8, returns SAME
   row EAX. ID0; string begin4/end8/capacityC zero before string assign405AD0; label10=10445E8.
   Complete copied string ownership delegated to that helper; no backend start here. */

void * __thiscall ObjectSoundRow_Construct(void *this,uint packedSoundId,byte *soundNameBytes)

{
  *(uint *)this = packedSoundId;
  *(undefined4 *)((int)this + 4) = 0;
  *(undefined4 *)((int)this + 8) = 0;
  *(undefined4 *)((int)this + 0xc) = 0;
  *(char **)((int)this + 0x10) = "Audio/AudioComponent/SoundName";
  FUN_00405ad0((undefined4 *)((int)this + 4),(char *)soundNameBytes);
  return this;
}

