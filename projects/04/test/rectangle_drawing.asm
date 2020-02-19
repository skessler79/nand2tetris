// Program: Rectangle.asm
// Draws a filled rectangle at the
// screen's top left corner, with
// width of 16 pixels and height of
// RAM[0] pixels.
// Usage: put a non-negative number
//       (rectangle's height) in RAM[0].

	@SCREEN
	D=A
	@addr
	M=D		// addr = 16384
			// (screen's base address)
			
	@0
	D=M
	@n
	M=D		// n = RAM[0]
	
	@i
	M=0		// i = 0
	
(LOOP)
	@i
	D=M
	@n
	D=D-M
	@END
	D;JGT	// if i>n goto END
	
	@addr
	A=M
	M=-1	// RAM[addr]=1111111111111111