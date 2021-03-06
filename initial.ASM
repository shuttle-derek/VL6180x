; Generated by holtek-gcc v3.19, Mon Apr 06 10:41:26 2020
; 
; Configuration:
;       without long instruction
;       Single ROM, Multi-RAM
;       bits_per_rom_unit:14
;       with mp1
;       with tbhp, address(0x1f)
;          Use ret-const
;       
;       
;       
; use 'tabrdc' instead of 'tabrd'
;       

#pragma translator "holtek-gcc 4.6.4" "3.19" "build 20130711"
; Rebuild 718

ir equ [2]
mp equ [3]
sbp equ [7]
acc equ [5]
bp equ [4]
status equ [10]
c equ [10].0
ac equ [10].1
z equ [10].2
ov equ [10].3
intc equ [11]

extern ra:byte
extern rb:byte
extern rc:byte
extern rd:byte
extern re:byte
extern rf:byte
extern rg:byte
extern rh:byte
extern _Crom2Prom:near
extern _Crom2PromNext:near

RAMBANK 0 @HCCINIT, @HCCINIT0

RAMBANK 0 @BITDATASEC, @BITDATASEC1
@HCCINIT	.section 'data'
@HCCINIT0	.section 'data'
@BITDATASEC	 .section 'data'
@BITDATASEC1	 .section 'data'

#pragma debug scope 1 1
	extern __DELAY3:near
	extern __DELAYX3:near
	extern __DELAYX6:near
	extern __DELAYY5:near
	extern __DELAYY3:near
	extern _builtin_holtek_delay_2:byte
___scc equ [11]
___pa equ [20]
___pac equ [21]
___papu equ [22]
___pawu equ [23]
___pb equ [37]
___pbc equ [38]
___pbpu equ [39]
___pas0 equ [31]
___pas1 equ [32]
___pbs0 equ [33]
___ifs equ [61]
___simc2 equ [27]
___simc0 equ [25]
___uucr1 equ [26]
___uucr2 equ [27]
___ubrg equ [29]
___wdtc equ [18]
public _initial
#pragma debug scope 2 1
#line 5 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
_initial .section 'code'
_initial proc
#line 6 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [11].7
#line 7 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	set [11].6
#line 8 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [11].5
#line 10 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,32
	mov [20],a
#line 12 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,144
	mov [21],a
#line 13 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [22]
#line 14 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [23]
#line 18 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,2
	mov [37],a
#line 19 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [38]
#line 20 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,4
	mov [39],a
#line 22 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,4
	mov [31],a
#line 24 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,128
	mov [32],a
#line 25 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,2
	mov [33],a
#line 27 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,12
	mov [61],a
#line 28 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [27]
#line 29 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,16
	mov [25],a
#line 30 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,128
	mov [26],a
#line 31 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,129
	mov [27],a
#line 32 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	mov a,12
	mov [29],a
#line 67 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	set [18].2
#line 68 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [18].1
#line 69 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	set [18].0
	ret
_initial endp
#line 69 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
#pragma debug scope 1 1
___sadc0 equ [58]
___sadc1 equ [59]
___sadc2 equ [60]
___intc0 equ [34]
public _halt_set
#pragma debug scope 3 1
#line 89 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
_halt_set .section 'code'
_halt_set proc
#line 90 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [11]
#line 91 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [58]
#line 92 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [59]
#line 93 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [60]
#line 94 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [34].0
	ret
_halt_set endp
#line 94 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
#pragma debug scope 1 1
public _wake_set
#pragma debug scope 4 1
#line 98 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
_wake_set .section 'code'
_wake_set proc
#line 99 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [11]
	ret
_wake_set endp
#line 99 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
#pragma debug scope 1 1
___bp equ [4]
___mp0 equ [1]
___iar0 equ [0]
public _clear_ram
#pragma debug scope 5 1
#line 103 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
_clear_ram .section 'code'
_clear_ram proc
#line 104 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [4]
#line 105 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	set [1]
	jmp _L5
_L6:
#line 107 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
;# 107 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c" 1
	clr wdt
#line 108 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	clr [0]
#line 105 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
	dec [1]
_L5:
	mov a,191
	sub a,[1]
	snz c
	jmp _L6
	ret
_clear_ram endp
#line 105 "F:\Project\Carilex\E-Signal\i2c\200323-1\200323-1\initial.c"
#pragma debug scope 1 1
#pragma debug variable 8 1 ___mp0 "__mp0" 1
#pragma debug struct_begin 42 "__bp_bits"
#pragma debug field 21 8 0 1 "__dmbp0" ;0,1
#pragma debug field 21 8 0 7 ;1,7
#pragma debug struct_end
#pragma debug union_begin 43 ""
#pragma debug field 2 42 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 43 1 ___bp "__bp" 1
#pragma debug struct_begin 44 "__scc_bits"
#pragma debug field 21 8 0 1 "__fsiden" ;0,1
#pragma debug field 21 8 0 1 "__fhiden" ;1,1
#pragma debug field 21 8 0 3 ;2,3
#pragma debug field 21 8 0 1 "__cks0" ;5,1
#pragma debug field 21 8 0 1 "__cks1" ;6,1
#pragma debug field 21 8 0 1 "__cks2" ;7,1
#pragma debug struct_end
#pragma debug union_begin 45 ""
#pragma debug field 2 44 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 45 1 ___scc "__scc" 1
#pragma debug struct_begin 46 "__wdtc_bits"
#pragma debug field 21 8 0 1 "__ws0" ;0,1
#pragma debug field 21 8 0 1 "__ws1" ;1,1
#pragma debug field 21 8 0 1 "__ws2" ;2,1
#pragma debug field 21 8 0 1 "__we0" ;3,1
#pragma debug field 21 8 0 1 "__we1" ;4,1
#pragma debug field 21 8 0 1 "__we2" ;5,1
#pragma debug field 21 8 0 1 "__we3" ;6,1
#pragma debug field 21 8 0 1 "__we4" ;7,1
#pragma debug struct_end
#pragma debug union_begin 47 ""
#pragma debug field 2 46 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 47 1 ___wdtc "__wdtc" 1
#pragma debug struct_begin 48 "__pa_bits"
#pragma debug field 21 8 0 1 "__pa0" ;0,1
#pragma debug field 21 8 0 1 "__pa1" ;1,1
#pragma debug field 21 8 0 1 "__pa2" ;2,1
#pragma debug field 21 8 0 1 "__pa3" ;3,1
#pragma debug field 21 8 0 1 "__pa4" ;4,1
#pragma debug field 21 8 0 1 "__pa5" ;5,1
#pragma debug field 21 8 0 1 "__pa6" ;6,1
#pragma debug field 21 8 0 1 "__pa7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 49 ""
#pragma debug field 2 48 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 49 1 ___pa "__pa" 1
#pragma debug struct_begin 50 "__pac_bits"
#pragma debug field 21 8 0 1 "__pac0" ;0,1
#pragma debug field 21 8 0 1 "__pac1" ;1,1
#pragma debug field 21 8 0 1 "__pac2" ;2,1
#pragma debug field 21 8 0 1 "__pac3" ;3,1
#pragma debug field 21 8 0 1 "__pac4" ;4,1
#pragma debug field 21 8 0 1 "__pac5" ;5,1
#pragma debug field 21 8 0 1 "__pac6" ;6,1
#pragma debug field 21 8 0 1 "__pac7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 51 ""
#pragma debug field 2 50 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 51 1 ___pac "__pac" 1
#pragma debug struct_begin 52 "__papu_bits"
#pragma debug field 21 8 0 1 "__papu0" ;0,1
#pragma debug field 21 8 0 1 "__papu1" ;1,1
#pragma debug field 21 8 0 1 "__papu2" ;2,1
#pragma debug field 21 8 0 1 "__papu3" ;3,1
#pragma debug field 21 8 0 1 "__papu4" ;4,1
#pragma debug field 21 8 0 1 "__papu5" ;5,1
#pragma debug field 21 8 0 1 "__papu6" ;6,1
#pragma debug field 21 8 0 1 "__papu7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 53 ""
#pragma debug field 2 52 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 53 1 ___papu "__papu" 1
#pragma debug struct_begin 54 "__pawu_bits"
#pragma debug field 21 8 0 1 "__pawu0" ;0,1
#pragma debug field 21 8 0 1 "__pawu1" ;1,1
#pragma debug field 21 8 0 1 "__pawu2" ;2,1
#pragma debug field 21 8 0 1 "__pawu3" ;3,1
#pragma debug field 21 8 0 1 "__pawu4" ;4,1
#pragma debug field 21 8 0 1 "__pawu5" ;5,1
#pragma debug field 21 8 0 1 "__pawu6" ;6,1
#pragma debug field 21 8 0 1 "__pawu7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 55 ""
#pragma debug field 2 54 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 55 1 ___pawu "__pawu" 1
#pragma debug struct_begin 56 "__simc0_bits"
#pragma debug field 21 8 0 1 "__simicf" ;0,1
#pragma debug field 21 8 0 1 "__simen" ;1,1
#pragma debug field 21 8 0 1 "__simdeb0" ;2,1
#pragma debug field 21 8 0 1 "__simdeb1" ;3,1
#pragma debug field 21 8 0 1 "__umd" ;4,1
#pragma debug field 21 8 0 1 "__sim0" ;5,1
#pragma debug field 21 8 0 1 "__sim1" ;6,1
#pragma debug field 21 8 0 1 "__sim2" ;7,1
#pragma debug struct_end
#pragma debug union_begin 57 ""
#pragma debug field 2 56 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 57 1 ___simc0 "__simc0" 1
#pragma debug struct_begin 58 "__uucr1_bits"
#pragma debug field 21 8 0 1 "__utx8" ;0,1
#pragma debug field 21 8 0 1 "__urx8" ;1,1
#pragma debug field 21 8 0 1 "__utxbrk" ;2,1
#pragma debug field 21 8 0 1 "__ustops" ;3,1
#pragma debug field 21 8 0 1 "__uprt" ;4,1
#pragma debug field 21 8 0 1 "__upren" ;5,1
#pragma debug field 21 8 0 1 "__ubno" ;6,1
#pragma debug field 21 8 0 1 "__uren" ;7,1
#pragma debug struct_end
#pragma debug union_begin 59 ""
#pragma debug field 2 58 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 59 1 ___uucr1 "__uucr1" 1
#pragma debug struct_begin 60 "__simc2_bits"
#pragma debug field 21 8 0 1 "__trf" ;0,1
#pragma debug field 21 8 0 1 "__wcol" ;1,1
#pragma debug field 21 8 0 1 "__csen" ;2,1
#pragma debug field 21 8 0 1 "__mls" ;3,1
#pragma debug field 21 8 0 1 "__ckeg" ;4,1
#pragma debug field 21 8 0 1 "__ckpolb" ;5,1
#pragma debug field 21 8 0 2 ;6,2
#pragma debug struct_end
#pragma debug union_begin 61 ""
#pragma debug field 2 60 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 61 1 ___simc2 "__simc2" 1
#pragma debug struct_begin 62 "__uucr2_bits"
#pragma debug field 21 8 0 1 "__uteie" ;0,1
#pragma debug field 21 8 0 1 "__utiie" ;1,1
#pragma debug field 21 8 0 1 "__urie" ;2,1
#pragma debug field 21 8 0 1 "__uwake" ;3,1
#pragma debug field 21 8 0 1 "__uadden" ;4,1
#pragma debug field 21 8 0 1 "__ubrgh" ;5,1
#pragma debug field 21 8 0 1 "__urxen" ;6,1
#pragma debug field 21 8 0 1 "__utxen" ;7,1
#pragma debug struct_end
#pragma debug union_begin 63 ""
#pragma debug field 2 62 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 63 1 ___uucr2 "__uucr2" 1
#pragma debug struct_begin 64 "__ubrg_bits"
#pragma debug field 21 8 0 1 "__ubrg0" ;0,1
#pragma debug field 21 8 0 1 "__ubrg1" ;1,1
#pragma debug field 21 8 0 1 "__ubrg2" ;2,1
#pragma debug field 21 8 0 1 "__ubrg3" ;3,1
#pragma debug field 21 8 0 1 "__ubrg4" ;4,1
#pragma debug field 21 8 0 1 "__ubrg5" ;5,1
#pragma debug field 21 8 0 1 "__ubrg6" ;6,1
#pragma debug field 21 8 0 1 "__ubrg7" ;7,1
#pragma debug struct_end
#pragma debug union_begin 65 ""
#pragma debug field 2 64 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 65 1 ___ubrg "__ubrg" 1
#pragma debug struct_begin 66 "__pas0_bits"
#pragma debug field 21 8 0 1 "__pas00" ;0,1
#pragma debug field 21 8 0 1 "__pas01" ;1,1
#pragma debug field 21 8 0 1 "__pas02" ;2,1
#pragma debug field 21 8 0 1 "__pas03" ;3,1
#pragma debug field 21 8 0 1 "__pas04" ;4,1
#pragma debug field 21 8 0 1 "__pas05" ;5,1
#pragma debug field 21 8 0 1 "__pas06" ;6,1
#pragma debug field 21 8 0 1 "__pas07" ;7,1
#pragma debug struct_end
#pragma debug union_begin 67 ""
#pragma debug field 2 66 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 67 1 ___pas0 "__pas0" 1
#pragma debug struct_begin 68 "__pas1_bits"
#pragma debug field 21 8 0 1 "__pas10" ;0,1
#pragma debug field 21 8 0 1 "__pas11" ;1,1
#pragma debug field 21 8 0 1 "__pas12" ;2,1
#pragma debug field 21 8 0 1 "__pas13" ;3,1
#pragma debug field 21 8 0 1 "__pas14" ;4,1
#pragma debug field 21 8 0 1 "__pas15" ;5,1
#pragma debug field 21 8 0 1 "__pas16" ;6,1
#pragma debug field 21 8 0 1 "__pas17" ;7,1
#pragma debug struct_end
#pragma debug union_begin 69 ""
#pragma debug field 2 68 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 69 1 ___pas1 "__pas1" 1
#pragma debug struct_begin 70 "__pbs0_bits"
#pragma debug field 21 8 0 1 "__pbs00" ;0,1
#pragma debug field 21 8 0 1 "__pbs01" ;1,1
#pragma debug field 21 8 0 1 "__pbs02" ;2,1
#pragma debug field 21 8 0 1 "__pbs03" ;3,1
#pragma debug field 21 8 0 1 "__pbs04" ;4,1
#pragma debug field 21 8 0 1 "__pbs05" ;5,1
#pragma debug field 21 8 0 2 ;6,2
#pragma debug struct_end
#pragma debug union_begin 71 ""
#pragma debug field 2 70 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 71 1 ___pbs0 "__pbs0" 1
#pragma debug struct_begin 72 "__intc0_bits"
#pragma debug field 21 8 0 1 "__emi" ;0,1
#pragma debug field 21 8 0 1 "__inte" ;1,1
#pragma debug field 21 8 0 1 "__opde" ;2,1
#pragma debug field 21 8 0 1 "__ade" ;3,1
#pragma debug field 21 8 0 1 "__intf" ;4,1
#pragma debug field 21 8 0 1 "__opdf" ;5,1
#pragma debug field 21 8 0 1 "__adf" ;6,1
#pragma debug field 21 8 0 1 ;7,1
#pragma debug struct_end
#pragma debug union_begin 73 ""
#pragma debug field 2 72 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 73 1 ___intc0 "__intc0" 1
#pragma debug struct_begin 74 "__pb_bits"
#pragma debug field 21 8 0 1 "__pb0" ;0,1
#pragma debug field 21 8 0 1 "__pb1" ;1,1
#pragma debug field 21 8 0 1 "__pb2" ;2,1
#pragma debug field 21 8 0 5 ;3,5
#pragma debug struct_end
#pragma debug union_begin 75 ""
#pragma debug field 2 74 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 75 1 ___pb "__pb" 1
#pragma debug struct_begin 76 "__pbc_bits"
#pragma debug field 21 8 0 1 "__pbc0" ;0,1
#pragma debug field 21 8 0 1 "__pbc1" ;1,1
#pragma debug field 21 8 0 1 "__pbc2" ;2,1
#pragma debug field 21 8 0 5 ;3,5
#pragma debug struct_end
#pragma debug union_begin 77 ""
#pragma debug field 2 76 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 77 1 ___pbc "__pbc" 1
#pragma debug struct_begin 78 "__pbpu_bits"
#pragma debug field 21 8 0 1 "__pbpu0" ;0,1
#pragma debug field 21 8 0 1 "__pbpu1" ;1,1
#pragma debug field 21 8 0 1 "__pbpu2" ;2,1
#pragma debug field 21 8 0 5 ;3,5
#pragma debug struct_end
#pragma debug union_begin 79 ""
#pragma debug field 2 78 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 79 1 ___pbpu "__pbpu" 1
#pragma debug struct_begin 80 "__sadc0_bits"
#pragma debug field 21 8 0 1 "__sacs0" ;0,1
#pragma debug field 21 8 0 1 "__sacs1" ;1,1
#pragma debug field 21 8 0 1 "__sacs2" ;2,1
#pragma debug field 21 8 0 1 "__sacs3" ;3,1
#pragma debug field 21 8 0 1 "__adrfs" ;4,1
#pragma debug field 21 8 0 1 "__adcen" ;5,1
#pragma debug field 21 8 0 1 "__adbz" ;6,1
#pragma debug field 21 8 0 1 "__start" ;7,1
#pragma debug struct_end
#pragma debug union_begin 81 ""
#pragma debug field 2 80 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 81 1 ___sadc0 "__sadc0" 1
#pragma debug struct_begin 82 "__sadc1_bits"
#pragma debug field 21 8 0 1 "__sacks0" ;0,1
#pragma debug field 21 8 0 1 "__sacks1" ;1,1
#pragma debug field 21 8 0 1 "__sacks2" ;2,1
#pragma debug field 21 8 0 1 ;3,1
#pragma debug field 21 8 0 1 "__sains0" ;4,1
#pragma debug field 21 8 0 1 "__sains1" ;5,1
#pragma debug field 21 8 0 1 "__sains2" ;6,1
#pragma debug field 21 8 0 1 "__sains3" ;7,1
#pragma debug struct_end
#pragma debug union_begin 83 ""
#pragma debug field 2 82 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 83 1 ___sadc1 "__sadc1" 1
#pragma debug struct_begin 84 "__sadc2_bits"
#pragma debug field 21 8 0 1 "__pgags0" ;0,1
#pragma debug field 21 8 0 1 "__pgags1" ;1,1
#pragma debug field 21 8 0 1 "__savrs0" ;2,1
#pragma debug field 21 8 0 1 "__savrs1" ;3,1
#pragma debug field 21 8 0 1 "__pgais" ;4,1
#pragma debug field 21 8 0 2 ;5,2
#pragma debug field 21 8 0 1 "__adpgaen" ;7,1
#pragma debug struct_end
#pragma debug union_begin 85 ""
#pragma debug field 2 84 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 85 1 ___sadc2 "__sadc2" 1
#pragma debug struct_begin 86 "__ifs_bits"
#pragma debug field 21 8 0 1 "__scsbs0" ;0,1
#pragma debug field 21 8 0 1 "__scsbs1" ;1,1
#pragma debug field 21 8 0 1 "__rxsdisdas0" ;2,1
#pragma debug field 21 8 0 1 "__rxsdisdas1" ;3,1
#pragma debug field 21 8 0 1 "__sckscls0" ;4,1
#pragma debug field 21 8 0 1 "__sckscls1" ;5,1
#pragma debug field 21 8 0 2 ;6,2
#pragma debug struct_end
#pragma debug union_begin 87 ""
#pragma debug field 2 86 "bits"
#pragma debug field 0 8 "byte"
#pragma debug union_end
#pragma debug variable 87 1 ___ifs "__ifs" 1
#pragma debug variable 8 1 ___iar0 "__iar0" 1

; 
; Generated by holtek-gcc v3.19, Mon Apr 06 10:41:26 2020
; Rebuild 718
; end of file
