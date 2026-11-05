# PC 1.67 pond depth and ice cover

The reference is the original PC 1.67 `Shaders_Win32.precomp`, SHA-256
`d16ce5d5a5aac7978c91fd9f04fbdc39e979e58743cfde0e53d3accf7d81f981`.
The selected one-based shader IDs are VS3274 and PS3275, SHDB array indexes
3273 and 3274. Their VSHD/PSHD bytecode starts at archive offsets 4334386 and
4335445, with lengths 1044 and 2324 bytes. These are shader offsets, not virtual
addresses in `TS3W.exe`.

The excerpts retain exact D3D9 tokens and bytecode-relative offsets. The paired
C files are analyst translations of the reviewed depth/cover slice, not Ghidra
native decompilations or a reconstruction of the complete shader.

- [VS3274 depth instructions](VS3274-depth.asm.txt) ([annotated translation](VS3274-depth.c)) compute `(packedY - packedW) / 256` and export twice that depth as `TEXCOORD4.x`.
- [PS3275 depth and cover instructions](PS3275-depth-cover.asm.txt) ([annotated translation](PS3275-depth-cover.c)) combine the interpolated depth, freeze amount and ice patch sample. Saturation belongs to the cover expression; the depth input has no seven-metre ceiling.

For freeze amount 0.8 and patch sample zero, ten-metre depth yields cover
approximately 0.5277334; seven-metre depth yields approximately 0.7339054.
These are static equation evaluations, not recorded GPU output. Other colour,
normal, reflection and lighting paths are outside the selected slice.
