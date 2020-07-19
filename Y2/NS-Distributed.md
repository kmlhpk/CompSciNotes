# COMP2xxx Networks and Systems - Distributed Systems

## Lecture 1

Network layers put together = OSI model (physical -> application, 7 layers)

TCP/IP model = 4 or 5 layers (more concise than OSI, we will follow this in practice due to less translation between layers)

Unicasting: End to end, source->dest

Multicasting: one source, multiple destinations (receiving same info)

Components can be made differently (eg different hardware) as long as they produce the same output on the same input - they would still count as the "same" component, since they have no functional difference

You don't necessarily need high computing power in one component - you can have duplicates of low-powered machines, and in high volumes they can connect and provide high computational power

## Lecture 2

The "functions" your program uses may be developed by different entities and hosted on different, spatially discrete hardware. They need to be woven together seamlessly to appear.

"Transparency" in DistSys means to what extent the separation of components and entities in the system is visible to the end user. A transparency is some aspect of the system that is hidden from the user (programmer, system dev, user or application program). Not all basic transparencies can or should always be implemented together, and not all of them are available on the layer of the interface.

Migration and relocation are logically the same but different in implementation. Caching (reloc) is more general. Migration is done more by the service provider, whereas caching is more local.