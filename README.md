# Milo-V2
Millennium Machines Milo V2.0
<p align="center">
  <img height="500" src="https://github.com/MillenniumMachines/Milo-V2.0/Images/Milo_Miley.png">
</p>
## Known Issues
We should avoid these issues from Milo V1.5 before releasing Milo V2.0

* Mains e-stop wiring in V1.5, particularly for 110v countries as e-stops are generally not rated for high current.
  * Spec a contactor and low-voltage e-stop circuit?
* Proper sealing of electronics enclosure and VFD from errant chips - screens on fan ports etc.
  * Is it worth thinking more about how the mill body and the base connect so even without an enclosure, this can be placed out of harms way?
  * Single connector system between mill and electronics base / casa?
* Heat-set insert issues between BOM and LDO specs, as well as LDO-specific printed parts with differing measurements.
  * Be clear about insert dimensions (diameter and length in particular) in BOM.
  * Work with kit providers to get the correct inserts.
  * Try and avoid vendor-specific printed parts _if at all possible_.
* VFD configuration, particularly when kits are released with a "preconfigured" VFD that is _not_ preconfigured (correctly).
  * Modbus configuration of VFD?
* Think about increasing spindle mounting plate width to 120mm to accommodate 98mm spacing on readily available spindle clamps.
* Spec threaded lead-screw nuts as part of BOM.
