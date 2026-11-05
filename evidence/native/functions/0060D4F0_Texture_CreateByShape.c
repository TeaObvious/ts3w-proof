/* Retained cf6f60a42fe8c5bd181495a32161217972cefebc export snapshot.
   Filename/link maintenance only; this is not a fresh decompilation or an annotation/persistence claim.
   Historical body, types, variables and behavior qualifications remain below. */


/* Analyst PC1.67 DDS instruction contract. cdecl
   texture,faces,depth,width,height,mips,format,flags. depth>=2 chooses volume; otherwise faces>=2
   chooses cube, else2D. Only AL is Boolean. This shape selector does not validate full DDS face
   flags. */

bool __cdecl
Texture_CreateByShape
          (void *texture,uint faces,uint depth,uint width,uint height,uint mips,uint format,
          uint flags)

{
  uint uVar1;
  
  if (depth < 2) {
    if (faces < 2) {
      uVar1 = Texture_Create2D(texture,width,height,mips,format,flags);
      if ((uVar1 & 0xff) == 0) {
        return false;
      }
    }
    else {
      uVar1 = Texture_CreateCube(texture,width,mips,format,flags);
      if ((uVar1 & 0xff) == 0) {
        return false;
      }
    }
  }
  else {
    uVar1 = Texture_CreateVolume(texture,width,height,depth,mips,format,flags);
    if ((uVar1 & 0xff) == 0) {
      return false;
    }
  }
  return true;
}

