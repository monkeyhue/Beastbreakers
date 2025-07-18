$data modify storage gae:root currentEntities.$(id) set value \
    {namespace:"gae",   \
    type:"$(type)", \
    aiState:0,  \
    id:$(id),   \
    stepHeight:$(stepHeight)d,  \
    fallHeight:$(fallHeight)d,  \
    coreHitbox:"$(coreHitbox)", \
    movement:{  \
        rotationSpeed:$(rotationSpeed), \
        coreHitbox:"$(coreHitbox)", \
        moveSpeed:$(speed)d,    \
        targetX:0,  \
        targetY:0,  \
        targetZ:0,  \
    },  \
    properties:{    \
        width:$(width), \
        height:$(height),   \
    }}