# Group-K
UI 99-00 Computer Architecture Project 


Architecture
___________________________________________________________________________________
Its general architecture looks like a MIPS unicycle.

it has 4 parts:

. Register File
. ALU: Arithmetic Logic Unit
. Control: responsible for creating control flags throughout the CPU
. CPU: containing the full assembly of the other modules.
___________________________________________________________________________________


Instruction Set
___________________________________________________________________________________
Instructions have the following format:


R-type: (add,sub,and,or)

|----|   |----| |----| |----|   |----------------|
  op       r1     r2     r3      1111111111111111



I-type (addi,lw,sw,beq)

|----|   |----| |----| |----|   |----------------|
  op       r1     r2    1111        Immediate


J-type (jump)
|----|   |----| |----| |----|   |----------------|
  op      1111   1111   1111        Immediate

 ________________________________________________________________________________
|  op  |  Instruction  |                       Function                          |
|______|_______________|_________________________________________________________|
| 0000 |     add       |            REGDest <- REGSource + REGSource             |
|______|_______________|_________________________________________________________|
| 0001 |     sub       |            REGDest <- REGSource - REGSource             |
|______|_______________|_________________________________________________________|
| 0010 |     and       |            REGDest <- REGSource & REGSource             |
|______|_______________|_________________________________________________________|
| 0011 |     or        |            REGDest <- REGSource | REGSource             |
|______|_______________|_________________________________________________________|
| 0100 |     addi      |            REGDest <- REGSource | Immediate             |
|______|_______________|_________________________________________________________|
| 0101 |     beq       |          jump to label if subtraction is zero           |
|______|_______________|_________________________________________________________|
| 0110 |     jmp       |                     jump to label                       |
|______|_______________|_________________________________________________________|
| 0111 |     lw        |                REGDest <- MEM[REGSource]                |
|______|_______________|_________________________________________________________|
| 1000 |     sw        |                MEM[REGDest] <- REGSource                |
|______|_______________|_________________________________________________________|
