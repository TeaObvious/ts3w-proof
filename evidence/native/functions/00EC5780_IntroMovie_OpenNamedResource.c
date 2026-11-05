/* Genuine /TS3W.exe C export, captured November 5; current function identifiers verified.
   Earlier body/ABI/variable qualifications remain; no new runtime or whole-function acceptance. */



/* Analyst PC1.67 intro gain and resource-open instruction contract. thiscall ECX movie view plus
   FOUR physical stack words UTF-16name,UInt32width,UInt32height,binary32gain; both returns RET0x10
   clean16bytes. Missing manager9D64C0 returns ALfalse before view dimensions/resource lookup.
   UInt32 dimensions use signed FILD plus stored float2^32 correction for signbit, then FSTP to
   view+4/+8. There is NO intermediate binary32 store between signed FILD and optional FADD: actual
   C float casts/addition can obscure extended evaluation. Zeroes16-byte resource key; resource
   service4AFE80 virtual+80 takes keyOut,name,typeB1CC1AF6,group0. Indirect call ABI has ECX plus
   FOUR stack words. Forwards key and supplied gain as SIXTH of ELEVEN stack words to9D79E0 (ECX
   manager), with width/height next and other selected words0; no local key-success or gain clamp.
   Bounded consumer9D7BD0..9D7C1B copies gain word to entry+9C; complete codec dispatch,
   synchronization, completion, skip and failure/lifetime are not established here. Selected9D79E0
   paths clean0x2C bytes. This helper's false/true result is low AL, not arbitrary high EAX. */

bool __thiscall
IntroMovie_OpenNamedResource(void *this,ushort *resourceName,uint width,uint height,float gain)

{
  float fVar1;
  bool bVar2;
  void *arg0;
  int *arg0_00;
  undefined4 local_10;
  undefined4 local_c;
  undefined4 local_8;
  undefined4 local_4;
  
  arg0 = (void *)FUN_009d64c0();
  if (arg0 == (void *)0x0) {
    return false;
  }
  fVar1 = (float)(int)width;
                    /* UInt32 width: signed FILD followed by optional x87 FADD float2^32, THEN one
                       FSTP binary32. C float cast/add may imply an earlier rounding absent from
                       instructions. */
  if ((int)width < 0) {
    fVar1 = fVar1 + 4.2949673e+09;
  }
  *(float *)((int)this + 4) = fVar1;
  fVar1 = (float)(int)height;
                    /* Same single-final-store unsigned conversion for height; no binary32 rounding
                       between FILD and correction. */
  if ((int)height < 0) {
    fVar1 = fVar1 + 4.2949673e+09;
  }
  *(float *)((int)this + 8) = fVar1;
  arg0_00 = (int *)FUN_004afe80();
  local_10 = 0;
  local_c = 0;
  local_8 = 0;
  local_4 = 0;
  (**(code **)(*arg0_00 + 0x80))(arg0_00,&local_10,resourceName,0xb1cc1af6,0);
                    /* Fourth original caller argument is binary32gain. FLD then FSTP forwards it as
                       manager argument6; old three-word signature rendered unaff_retaddr and lost
                       this dataflow. */
  bVar2 = ObjectVideoManager_StartOrUpdateObject
                    (arg0,&local_10,0,(void *)0x0,0,0,gain,width,height,0,0,0);
  return bVar2;
}

