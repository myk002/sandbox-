local u = df.global.world.units.active[0]
print(('Your position: (%d, %d, %d)'):format(u.pos.x, u.pos.y, u.pos.z))

for k,v in ipairs(df.global.world.items.other.IN_PLAY) do
    if v.flags.artifact then
        local ref = dfhack.items.getGeneralRef(v, df.general_ref_type.IS_ARTIFACT)
        if ref then
            print(('%s is at (%d, %d, %d)'):format(dfhack.TranslateName(ref:getArtifact().name), v.pos.x, v.pos.y, v.pos.z))
        end
    end
end
