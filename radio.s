.org 1800h

.org 3000H 
	
	
;Implementare

BEGIN:
	
	ld B,0 ; Using this register for the MUTE function
	ld IX, PASS_TEXT

PASS:	
	call SCAN
	cp TASTA_R
	jp nz, PASS
	LD IX, RADIO_STATIONS


STATII_NUMEROTARE:

NUM_STATIA_1:
	ld ix, RADIO_STATION_1
	call SCAN
	
	cp TASTA_1
	jp z, STATIA_1_BEGIN
	
	cp TASTA_R
	jp nz, NUM_STATIA_1

NUM_STATIA_2:
	ld ix, RADIO_STATION_2
	call SCAN
	
	cp TASTA_2
	jp z, STATIA_2_BEGIN
	
	cp TASTA_R
	jp nz, NUM_STATIA_2
	
NUM_STATIA_3:
	ld ix, RADIO_STATION_3
	call SCAN
	
	cp TASTA_3
	jp z, STATIA_3_BEGIN
	
	cp TASTA_R
	jp nz, NUM_STATIA_3
	
NUM_STATIA_4:
	ld ix, RADIO_STATION_4
	call SCAN
	
	cp TASTA_4
	jp z, STATIA_4_BEGIN
	
	cp TASTA_R
	jp STATII_NUMEROTARE
	
	jp nz, NUM_STATIA_4
	
		
STATIA_1_BEGIN:

	LD E, 000H
	LD IX, STATIA_1_SHOW_PRE

STATIA_1_SHOW_2:
	LD D, 000H

STATIA_1_SHOW_1:

	CALL 0624H
	INC D
	LD A,D
	CP 100	;viteza
	JP NZ, STATIA_1_SHOW_1
	
	DEC IX
	INC E
	LD A,E
	CP 21
	JP NZ, STATIA_1_SHOW_2
	jp POST_1_SHOW

POST_1_SHOW:
	LD IX, POST_1
	call SCAN
	cp TASTA_T
	jp z, MUTE_1
	
	cp TASTA_R
	jr z, STATII_NUMEROTARE
	jp POST_1_SHOW

STATIA_2_BEGIN:

	LD E, 000H
	LD IX, STATIA_2_SHOW_PRE

STATIA_2_SHOW_2:
	LD D, 000H

STATIA_2_SHOW_1:

	CALL 0624H
	INC D
	LD A,D
	CP 80	;viteza
	JP NZ, STATIA_2_SHOW_1
	
	DEC IX
	INC E
	LD A,E
	CP 10
	JP NZ, STATIA_2_SHOW_2
	jp POST_2_SHOW

POST_2_SHOW:
	LD IX, POST_2
	call SCAN
	cp TASTA_T
	jp z, MUTE_2
	
	cp TASTA_R
	jp z, STATII_NUMEROTARE
	jp POST_2_SHOW
	
STATIA_3_BEGIN:

	LD E, 000H
	LD IX, STATIA_3_SHOW_PRE

STATIA_3_SHOW_2:
	LD D, 000H

STATIA_3_SHOW_1:

	CALL 0624H
	INC D
	LD A,D
	CP 80	;viteza
	JP NZ, STATIA_3_SHOW_1
	
	DEC IX
	INC E
	LD A,E
	CP 12
	JP NZ, STATIA_3_SHOW_2
	jp POST_3_SHOW

POST_3_SHOW:
	LD IX, POST_3
	call SCAN
	cp TASTA_T
	jr z, MUTE_3
	
	cp TASTA_R
	jp z, STATII_NUMEROTARE
	jp POST_3_SHOW
	
STATIA_4_BEGIN:

	LD E, 000H
	LD IX, STATIA_4_SHOW_PRE

STATIA_4_SHOW_2:
	LD D, 000H

STATIA_4_SHOW_1:

	CALL 0624H
	INC D
	LD A,D
	CP 80	;viteza
	JP NZ, STATIA_4_SHOW_1
	
	DEC IX
	INC E
	LD A,E
	CP 11
	JP NZ, STATIA_4_SHOW_2
	jp POST_4_SHOW

POST_4_SHOW:
	LD IX, POST_4
	call SCAN
	cp TASTA_T
	jr z, MUTE_4
	
	cp TASTA_R
	jp z, STATII_NUMEROTARE
	jp POST_4_SHOW
	
	
	
MUTE_1:
	INC B
	and $01	
	jr z, MAKE_MUTE_1
	jp UNMUTE_TEXT
	
	jp BEGIN

MAKE_MUTE_1:
	ld IX, MUTE_TEXT
	call SCAN
	jp POST_1_SHOW
	

MAKE_UNMUTE_1:
	ld IX, UNMUTE_TEXT
	call SCAN
	jp POST_1_SHOW
	
MUTE_2:
	INC B
	and $01	
	jr z, MAKE_MUTE_2
	jp UNMUTE_TEXT
	
	jp BEGIN

MAKE_MUTE_2:
	ld IX, MUTE_TEXT
	call SCAN
	jp POST_2_SHOW
	

MAKE_UNMUTE_2:
	ld IX, UNMUTE_TEXT
	call SCAN
	jp POST_2_SHOW
	
MUTE_3:
	INC B
	and $01	
	jr z, MAKE_MUTE_3
	jp UNMUTE_TEXT
	
	jp BEGIN

MAKE_MUTE_3:
	ld IX, MUTE_TEXT
	call SCAN
	jp POST_3_SHOW
	

MAKE_UNMUTE_3:
	ld IX, UNMUTE_TEXT
	call SCAN
	jp POST_3_SHOW
	
MUTE_4:
	INC B
	and $01	
	jr z, MAKE_MUTE_4
	jp UNMUTE_TEXT
	
	jp BEGIN

MAKE_MUTE_4:
	ld IX, MUTE_TEXT
	call SCAN
	jp POST_4_SHOW
	

MAKE_UNMUTE_4:
	ld IX, UNMUTE_TEXT
	call SCAN
	jp POST_4_SHOW
	

STATIA_1_SHOW_TEXT:
	
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB 030H	;I
	.DB 08FH	;E
	.DB	09BH	;Z
	.DB 030H	;I
	.DB 085H	;L
	.DB	0A3H	;o
	.DB	003H	;r
	.DB 087H	;t
	.DB 08DH	;C
	.DB 08FH	;E
	.DB 085H	;L
	.DB 08FH	;E
	.DB 000H	;
	.DB	0A3H	;o
	
	
STATIA_1_SHOW_PRE:
	
	.DB 030H	;I
	.DB	0B3H	;D
	.DB 0BBH 	;a
	.DB	003H	;r
	.DB 000H	;_
	.DB 070H	;1
	
STATIA_2_SHOW_TEXT:
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	0B5H	;U
	.DB	09BH	;Z
	.DB 000H	;
	.DB	0A3H	;o
	
STATIA_2_SHOW_PRE:
	.DB 030H	;I
	.DB	0B3H	;D
	.DB 0BBH 	;a
	.DB	003H	;r
	.DB 000H	;_
	.DB 09BH	;2
	
	
STATIA_3_SHOW_TEXT:
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	023H	;n
	.DB	023H	;n	
	.DB 00FH	;F
	.DB 000H	;_
	.DB 087H	;t
	.DB 08FH	;E
	
STATIA_3_SHOW_PRE:
	.DB	037H	;H
	.DB 0ADH	;G
	.DB 030H	;I
	.DB 0AEH	;S
	.DB 000H	;_
	.DB 0FAH	;3

STATIA_4_SHOW_TEXT:
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB	000H	;
	.DB 0AEH	;S
	.DB	03FH	;A
	.DB 087H	;t
	.DB 030H	;I
	
STATIA_4_SHOW_PRE:
	.DB 03DH	;N
	.DB 030H	;I
	.DB	003H	;r
	.DB 087H	;t
	.DB 000H	;_
	.DB 036H	;4
	
BLOCK_AFIS:
	.DB 010H	;_
	.DB 000H	;_
	.DB 002H	;_
	.DB 002H	;_
	.DB 000H	;_
	.DB 010H	;_
	
MUTE_TEXT:
	.DB 000H	;_
	.DB 08FH	;E
	.DB 087H	;t
	.DB	0B5H	;U
	.DB 03DH	;N
	.DB 000H	;_
	
UNMUTE_TEXT:	
	.DB 08FH	;E
	.DB 087H	;t
	.DB	0B5H	;U
	.DB 03DH	;N
	.DB 023H	;n
	.DB	0B5H	;U
	

POST_1:
	.DB 030H	;1
	.DB 000H	;_
	.DB 0C7H	;t
	.DB 0AEH	;S
	.DB 0BDH	;O
	.DB 01FH	;P

POST_2:
	.DB 09BH	;2
	.DB 000H	;_
	.DB 0C7H	;t
	.DB 0AEH	;S
	.DB 0BDH	;O
	.DB 01FH	;P
	
POST_3:
	.DB 0BAH	;3
	.DB 000H	;_
	.DB 0C7H	;t
	.DB 0AEH	;S
	.DB 0BDH	;O
	.DB 01FH	;P
	
POST_4:
	.DB 036H	;4
	.DB 000H	;_
	.DB 0C7H	;t
	.DB 0AEH	;S
	.DB 0BDH	;O
	.DB 01FH	;P

RADIO_STATIONS:
	.DB 036H	;4
	.DB 0BAH	;3
	.DB 09BH	;2
	.DB 030H	;1
	.DB 000H	
	.DB 0EEH	;S
	
RADIO_STATION_1:
	.DB 036H	;4
	.DB 0BAH	;3
	.DB 09BH	;2
	.DB 070H	;1
	.DB 000H	
	.DB 0EEH	;S
	
RADIO_STATION_2:
	.DB 036H	;4
	.DB 0BAH	;3
	.DB 0DBH	;2
	.DB 030H	;1
	.DB 000H	
	.DB 0EEH	;S

RADIO_STATION_3:
	.DB 036H	;4
	.DB 0FAH	;3
	.DB 09BH	;2
	.DB 030H	;1
	.DB 000H	
	.DB 0EEH	;S
	
RADIO_STATION_4:
	.DB 076H	;4
	.DB 0BAH	;3
	.DB 09BH	;2
	.DB 030H	;1
	.DB 000H	
	.DB 0EEH	;S

PASS_TEXT:
	.db 000h ; 
	.db 0AEH ;S
	.db 0AEH ;S
	.db 03Fh ;A
	.DB 01FH ;P
	.db 000h ; 


SCAN 		.equ 05FEH
TASTA_1			.equ 001h
TASTA_2			.equ 002h
TASTA_3			.equ 003h
TASTA_4			.equ 004h
TASTA_R			.equ 017h
TASTA_T			.equ 018h


.end
	rst 38h