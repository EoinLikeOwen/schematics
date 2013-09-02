Description
============

A minimal DIP dev board for the XMEGA A4U microcontroller.  Does not provide power regulation, analog power conditioning, or a USB connector.  Access is provided to all ports, including PORTR if the crystal is not populated (which is why the crystal is a through-hole footprint).

Status
=======

Ordered, assembled, in use.  All the functions I've needed so far work fine.  I have not tested general EMC or any analog functions - there may be some noise since I didn't run a separate analog ground trace or isolation area for the crystal and the decoupling capacitors are poorly placed.  There will probably be a v2, I have learned a lot since making these.