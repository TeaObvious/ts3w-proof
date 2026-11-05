/* Analyst translation of the component routing in the selected original shader
 * slice, NOT Ghidra native pseudocode and NOT the complete shader.
 * Float operations here explain component correspondence only, not GPU PP/FMA
 * precision. MOV destination masks select the same component positions from
 * the source swizzle; ZW does not mean take the source's first two components.
 */
void StandingWater_NormalComponentRouting(
    const float first_rgba[4], const float second_rgba[4], float decoded_xz[4])
{
    decoded_xz[0] = first_rgba[3] * 2.0f - 0.99609375f;
    decoded_xz[1] = first_rgba[2] * 2.0f - 0.99609375f;
    decoded_xz[2] = second_rgba[3] * 2.0f - 0.99609375f;
    decoded_xz[3] = second_rgba[2] * 2.0f - 0.99609375f;
}
