const c = @cImport({
    @cInclude("random.c");
});

const rng_value_t = c.Sfc32State;

pub export fn LocalRandomSeed(seed: u32) rng_value_t {
    var result: rng_value_t = undefined;

    c.SFC32_Seed(&result, seed, 1);
    return result;
}
