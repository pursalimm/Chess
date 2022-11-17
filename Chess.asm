.model small
.stack 1000
.data
    cr equ 0dh
    lf equ 0ah
    rowb db 0
    colb db 0
    rown db 0
    coln db 0
    temp dw 0  
    char db 0
    colr1 db 0
    colr2 db 0
    start db 18
    plz db 'PLEASE WAIT...'
    key db 'ESC:ABORT CHANGE POSITION     Q:QUIT'
    tec db 'Master:Yasser Elmi'
    pro db 'Programmer:'
    nam db 'Mehdi Baratzadeh Jovaini   850207836'
.code

;------------------------------------design------------------------------------------------------------
design proc
box db 6 dup(' '),,     '                              ',,cr,lf
    db 6 dup(' '),0c9h, 3 dup(0cdh),0cbh, 3 dup(0cdh),0cbh, 3 dup(0cdh),0cbh, 3 dup(0cdh),0cbh, 3 dup(0cdh),0cbh, 3 dup(0cdh),0cbh, 3 dup(0cdh),0cbh, 3 dup(0cdh),0bbh,cr,lf
    db 5 dup(' '),'H',0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,cr,lf
    db 6 dup(' '),0cch, 3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0b9h,cr,lf
    db 5 dup(' '),'G',0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,cr,lf
    db 6 dup(' '),0cch, 3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0b9h,cr,lf
    db 5 dup(' '),'F',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,cr,lf
    db 6 dup(' '),0cch, 3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0b9h,cr,lf
    db 5 dup(' '),'E',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,cr,lf
    db 6 dup(' '),0cch, 3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0b9h,cr,lf
    db 5 dup(' '),'D',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,cr,lf
    db 6 dup(' '),0cch, 3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0b9h,cr,lf
    db 5 dup(' '),'C',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,' ',00h,' ',0bah,cr,lf
    db 6 dup(' '),0cch, 3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0b9h,cr,lf
    db 5 dup(' '),'B',0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,cr,lf
    db 6 dup(' '),0cch, 3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0ceh,3 dup(0cdh),0b9h,cr,lf
    db 5 dup(' '),'A',0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,3 dup(' '),0bah,cr,lf
    db 6 dup(' '),0c8h, 3 dup(0cdh),0cah,3 dup(0cdh),0cah,3 dup(0cdh),0cah,3 dup(0cdh),0cah,3 dup(0cdh),0cah,3 dup(0cdh),0cah,3 dup(0cdh),0cah,3 dup(0cdh),0bch,cr,lf
    db 8 dup(' '),'1', 3 dup(' '),'2',3 dup(' '),'3',3 dup(' '),'4',3 dup(' '),'5',3 dup(' '),'6',3 dup(' '),'7',3 dup(' '),'8',cr,lf,'$'
design endp

;------------------------------------select 1 position-------------------------------------------------
keyr proc
     mov bh,00
          
     mov ah,7h       ;change position for a-->1,2,3,4,5,6,7,8
     cmp al,'a'
     jne grb
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pra2
     mov ah,02h
     mov dh,18
     mov dl,8
     int 10h
     call save1p     
     call seekp
pra2:cmp al,'2'
     jne pra3
     mov ah,02h
     mov dh,18
     mov dl,12
     int 10h 
     call save1p
     call seekp
pra3:cmp al,'3'
     jne pra4
     mov ah,02h
     mov dh,18
     mov dl,16
     int 10h
     call save1p
     call seekp
pra4:cmp al,'4'
     jne pra5
     mov ah,02h
     mov dh,18
     mov dl,20
     int 10h
     call save1p
     call seekp
pra5:cmp al,'5'
     jne pra6
     mov ah,02h
     mov dh,18
     mov dl,24
     int 10h
     call save1p
     call seekp
pra6:cmp al,'6'
     jne pra7
     mov ah,02h
     mov dh,18
     mov dl,28
     int 10h
     call save1p
     call seekp
pra7:cmp al,'7'
     jne pra8
     mov ah,02h
     mov dh,18
     mov dl,32
     int 10h
     call save1p
     call seekp
pra8:cmp al,'8'
     jne endr
     mov ah,02h
     mov dh,18
     mov dl,36
     int 10h
     call save1p
     call seekp
 grb:mov ah,7h       ;change position for b-->1,2,3,4,5,6,7,8
     cmp al,'b'
     jne grc
     mov ah,7h
     int 21h
     cmp al,'1'
     jne prb2
     mov ah,02h
     mov dh,16
     mov dl,8
     int 10h
     call save1p
     call seekp
prb2:cmp al,'2'
     jne prb3
     mov ah,02h
     mov dh,16
     mov dl,12
     int 10h
     call save1p
     call seekp
prb3:cmp al,'3'
     jne prb4
     mov ah,02h
     mov dh,16
     mov dl,16
     int 10h 
     call save1p
     call seekp
prb4:cmp al,'4'
     jne prb5
     mov ah,02h
     mov dh,16
     mov dl,20
     int 10h
     call save1p
     call seekp
prb5:cmp al,'5'
     jne prb6
     mov ah,02h
     mov dh,16
     mov dl,24
     int 10h
     call save1p
     call seekp
prb6:cmp al,'6'
     jne prb7
     mov ah,02h
     mov dh,16
     mov dl,28
     int 10h
     call save1p
     call seekp
prb7:cmp al,'7'
     jne prb8
     mov ah,02h
     mov dh,16
     mov dl,32
     int 10h
     call save1p
     call seekp
prb8:cmp al,'8'
     jne endr
     mov ah,02h
     mov dh,16
     mov dl,36
     int 10h
     call save1p
     call seekp
 grc:mov ah,7h       ;change position for c-->1,2,3,4,5,6,7,8
     cmp al,'c'
     jne grd
     mov ah,7h
     int 21h
     cmp al,'1'
     jne prc2
     mov ah,02h
     mov dh,14
     mov dl,8
     int 10h
     call save1p
     call seekp
prc2:cmp al,'2'
     jne prc3
     mov ah,02h
     mov dh,14
     mov dl,12
     int 10h 
     call save1p
     call seekp
prc3:cmp al,'3'
     jne prc4
     mov ah,02h
     mov dh,14
     mov dl,16
     int 10h
     call save1p
     call seekp
prc4:cmp al,'4'
     jne prc5
     mov ah,02h
     mov dh,14
     mov dl,20
     int 10h
     call save1p
     call seekp
prc5:cmp al,'5'
     jne prc6
     mov ah,02h
     mov dh,14
     mov dl,24
     int 10h 
     call save1p
     call seekp
prc6:cmp al,'6'
     jne prc7
     mov ah,02h
     mov dh,14
     mov dl,28
     int 10h
     call save1p
     call seekp
prc7:cmp al,'7'
     jne prc8
     mov ah,02h
     mov dh,14
     mov dl,32
     int 10h
     call save1p
     call seekp
prc8:cmp al,'8'
     jne endr
     mov ah,02h
     mov dh,14
     mov dl,36
     int 10h
     call save1p
     call seekp
 grd:mov ah,7h       ;change position for d-->1,2,3,4,5,6,7,8
     cmp al,'d'
     jne gre
     mov ah,7h
     int 21h
     cmp al,'1'
     jne prd2
     mov ah,02h
     mov dh,12
     mov dl,8
     int 10h
     call save1p
     call seekp
prd2:cmp al,'2'
     jne prd3
     mov ah,02h
     mov dh,12
     mov dl,12
     int 10h 
     call save1p
     call seekp
prd3:cmp al,'3'
     jne prd4
     mov ah,02h
     mov dh,12
     mov dl,16
     int 10h
     call save1p
     call seekp
prd4:cmp al,'4'
     jne prd5
     mov ah,02h
     mov dh,12
     mov dl,20
     int 10h
     call save1p
     call seekp
prd5:cmp al,'5'
     jne prd6
     mov ah,02h
     mov dh,12
     mov dl,24
     int 10h
     call save1p
     call seekp
prd6:cmp al,'6'
     jne prd7
     mov ah,02h
     mov dh,12
     mov dl,28
     int 10h
     call save1p
     call seekp
prd7:cmp al,'7'
     jne prd8
     mov ah,02h
     mov dh,12
     mov dl,32
     int 10h
     call save1p
     call seekp
prd8:cmp al,'8'
     jne endr
     mov ah,02h
     mov dh,12
     mov dl,36
     int 10h 
     call save1p
     call seekp
 gre:mov ah,7h       ;change position for e-->1,2,3,4,5,6,7,8
     cmp al,'e'
     jne grf
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pre2
     mov ah,02h
     mov dh,10
     mov dl,8
     int 10h
     call save1p
     call seekp
pre2:cmp al,'2'
     jne pre3
     mov ah,02h
     mov dh,10
     mov dl,12
     int 10h 
     call save1p
     call seekp
pre3:cmp al,'3'
     jne pre4
     mov ah,02h
     mov dh,10
     mov dl,16
     int 10h 
     call save1p
     call seekp
pre4:cmp al,'4'
     jne pre5
     mov ah,02h
     mov dh,10
     mov dl,20
     int 10h 
     call save1p
     call seekp
pre5:cmp al,'5'
     jne pre6
     mov ah,02h
     mov dh,10
     mov dl,24
     int 10h 
     call save1p
     call seekp
pre6:cmp al,'6'
     jne pre7
     mov ah,02h
     mov dh,10
     mov dl,28
     int 10h 
     call save1p
     call seekp
pre7:cmp al,'7'
     jne pre8
     mov ah,02h
     mov dh,10
     mov dl,32
     int 10h 
     call save1p
     call seekp
pre8:cmp al,'8'
     jne endr
     mov ah,02h
     mov dh,10
     mov dl,36
     int 10h 
     call save1p
     call seekp
 grf:mov ah,7h       ;change position for f-->1,2,3,4,5,6,7,8
     cmp al,'f'
     jne grg
     mov ah,7h
     int 21h
     cmp al,'1'
     jne prf2
     mov ah,02h
     mov dh,8
     mov dl,8
     int 10h 
     call save1p
     call seekp
prf2:cmp al,'2'
     jne prf3
     mov ah,02h
     mov dh,8
     mov dl,12
     int 10h 
     call save1p
     call seekp
prf3:cmp al,'3'
     jne prf4
     mov ah,02h
     mov dh,8
     mov dl,16
     int 10h 
     call save1p
     call seekp
prf4:cmp al,'4'
     jne prf5
     mov ah,02h
     mov dh,8
     mov dl,20
     int 10h 
     call save1p
     call seekp
prf5:cmp al,'5'
     jne prf8
     mov ah,02h
     mov dh,6
     mov dl,24
     int 10h 
     call save1p
     call seekp
prf6:cmp al,'6'
     jne prf7
     mov ah,02h
     mov dh,8
     mov dl,28
     int 10h 
     call save1p
     call seekp
prf7:cmp al,'7'
     jne prf8
     mov ah,02h
     mov dh,8
     mov dl,32
     int 10h
     call save1p
     call seekp
prf8:cmp al,'8'
     jne endr
     mov ah,02h
     mov dh,8
     mov dl,36
     int 10h 
     call save1p
     call seekp
 grg:cmp al,'g'      ;change position for g-->1,2,3,4,5,6,7,8
     jne grh
     mov ah,7h
     int 21h
     cmp al,'1'
     jne prg2
     mov ah,02h
     mov dh,6
     mov dl,8
     int 10h 
     call save1p
     call seekp
prg2:cmp al,'2'
     jne prg3
     mov ah,02h
     mov dh,6
     mov dl,12
     int 10h 
     call save1p
     call seekp
prg3:cmp al,'3'
     jne prg4
     mov ah,02h
     mov dh,6
     mov dl,16
     int 10h 
     call save1p
     call seekp
prg4:cmp al,'4'
     jne prg5
     mov ah,02h
     mov dh,6
     mov dl,20
     int 10h 
     call save1p
     call seekp
prg5:cmp al,'5'
     jne prg6
     mov ah,02h
     mov dh,6
     mov dl,24
     int 10h 
     call save1p
     call seekp
prg6:cmp al,'6'
     jne prg7
     mov ah,02h
     mov dh,6
     mov dl,28
     int 10h 
     call save1p
     call seekp
prg7:cmp al,'7'
     jne prg8
     mov ah,02h
     mov dh,6
     mov dl,32
     int 10h 
     call save1p
     call seekp
prg8:cmp al,'8'
     jne endr
     mov ah,02h
     mov dh,6
     mov dl,36
     int 10h 
     call save1p
     call seekp
 grh:cmp al,'h'      ;change position for h-->1,2,3,4,5,6,7,8
     jne endr
     mov ah,7h
     int 21h
     cmp al,'1'
     jne prh2
     mov ah,02h
     mov dh,4
     mov dl,8
     int 10h 
     call save1p
     call seekp
prh2:cmp al,'2'
     jne prh3
     mov ah,02h
     mov dh,4
     mov dl,12
     int 10h 
     call save1p
     call seekp
prh3:cmp al,'3'
     jne prh4
     mov ah,02h
     mov dh,4
     mov dl,16
     int 10h  
     call save1p
     call seekp
prh4:cmp al,'4'
     jne prh5
     mov ah,02h
     mov dh,4
     mov dl,20
     int 10h
     call save1p
     call seekp
prh5:cmp al,'5'
     jne prh6
     mov ah,02h
     mov dh,4
     mov dl,24
     int 10h   
     call save1p
     call seekp
prh6:cmp al,'6'
     jne prh7
     mov ah,02h
     mov dh,4
     mov dl,28
     int 10h
     call save1p
     call seekp
prh7:cmp al,'7'
     jne prh8
     mov ah,02h
     mov dh,4
     mov dl,32
     int 10h
     call save1p
     call seekp
prh8:cmp al,'8'
     jne endr
     mov ah,02h
     mov dh,4
     mov dl,36
     int 10h
     call save1p
     call seekp
endr:ret
keyr endp

;------------------------------------save one position-------------------------------------------------
save1p proc
     mov ah,08h
     int 10h
     mov char,al
     mov colr1,ah
     mov rowb,dh
     mov colb,dl
     ret
save1p endp

;------------------------------------save two position-------------------------------------------------
save2p proc
     mov ah,08h
     int 10h
     mov colr2,ah
     mov rown,dh
     mov coln,dl
     ret
save2p endp  

;------------------------------------back position and clear item--------------------------------------
backp proc
     mov ah,02h
     mov dh,rowb
     mov dl,colb
     int 10h
     mov ah,09h
     mov al,00h
     mov bl,11h
     mov cx,1
     int 10h
     ret
backp endp

;------------------------------------next position and show item---------------------------------------
nextp proc
     mov ah,02h
     mov dh,rown
     mov dl,coln
     int 10h
     mov ah,09h
     mov al,char
     mov bl,colr1
     mov cx,1
     int 10h
     ret
nextp endp

;------------------------------------compare black and white-------------------------------------------
comp proc
     mov ch,colr1
     cmp ch,colr2
     je  endc
     call backp
     call nextp
     xor ch,ch
endc:ret
comp endp

;------------------------------------Solj Help Position------------------------------------------------
soljh proc
     cmp ah,1fh
     jne sb
     mov ah,02h
     add dh,2  
     int 10h
     
     mov dl,0dbh
     int 21h   
     mov dl,08h
     int 21h
     mov cx,25
delw:loop delw
     mov dl,00h
     int 21h
     mov dh,rowb
     mov dl,colb
     int 10h     
     jmp sret
  sb:mov ah,02h
     sub dh,2  
     int 10h
     mov dl,0dbh
     int 21h
     mov dl,08h
     int 21h
     mov cx,25
delb:loop delb 
     mov dl,00h
     int 21h
     mov dh,rowb
     mov dl,colb
     int 10h     
sret:ret
soljh endp

;------------------------------------Rokh Help Position------------------------------------------------
rokhh proc
     
     
     ret
rokhh endp

;------------------------------------Asb Help Position-------------------------------------------------
asbh proc
    
     
     ret
asbh endp 

;------------------------------------Fill Help Position------------------------------------------------
fillh proc
     
     
     ret
fillh endp 

;------------------------------------Cazir Help Position-----------------------------------------------
vazirh proc
     
     
     ret
vazirh endp 

;------------------------------------Shah Help Position------------------------------------------------
shahh proc
     
     
     ret
shahh endp

;------------------------------------Show Help Position------------------------------------------------
showh proc
     
     ret
showh endp

;------------------------------------seek position-----------------------------------------------------
seekp proc
      cmp al,0eah
      jne rokh
      call soljh
      call keyw
 rokh:cmp al,0fh
      jne asb
      call rokhh
      call keyw
  asb:cmp al,06h
      jne fill  
      call asbh
      call keyw
 fill:cmp al,05h
      jne vazir
      call fillh
      call keyw
vazir:cmp al,04h
      jne shah  
      call vazirh
      call keyw
 shah:cmp al,03h
      jne endsp  
      call shahh
      call keyw
endsp:ret
seekp endp  

;------------------------------------select 2 position-------------------------------------------------
keyw proc
     mov bh,00
     
     mov ah,07h
     int 21h     
     mov ah,7h       ;change position for a-->1,2,3,4,5,6,7,8
     cmp al,'a'
     jne gwb
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pwa2
     mov ah,02h
     mov dh,18
     mov dl,8
     int 10h
     call save2p
     call comp
pwa2:cmp al,'2'
     jne pwa3
     mov ah,02h
     mov dh,18
     mov dl,12
     int 10h
     call save2p 
     call comp
pwa3:cmp al,'3'
     jne pwa4
     mov ah,02h
     mov dh,18
     mov dl,16
     int 10h
     call save2p
     call comp
pwa4:cmp al,'4'
     jne pwa5
     mov ah,02h
     mov dh,18
     mov dl,20
     int 10h 
     call save2p
     call comp     
pwa5:cmp al,'5'
     jne pwa6
     mov ah,02h
     mov dh,18
     mov dl,24
     int 10h
     call save2p
     call comp    
pwa6:cmp al,'6'
     jne pwa7
     mov ah,02h
     mov dh,18
     mov dl,28
     int 10h 
     call save2p
     call comp    
pwa7:cmp al,'7'
     jne pwa8
     mov ah,02h
     mov dh,18
     mov dl,32
     int 10h
     call save2p
     call comp    
pwa8:cmp al,'8'
     jne endw
     mov ah,02h
     mov dh,18
     mov dl,36
     int 10h
     call save2p
     call comp    
 gwb:mov ah,7h       ;change position for b-->1,2,3,4,5,6,7,8
     cmp al,'b'
     jne gwc
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pwb2
     mov ah,02h
     mov dh,16
     mov dl,8
     int 10h
     call save2p
     call comp    
pwb2:cmp al,'2'
     jne pwb3
     mov ah,02h
     mov dh,16
     mov dl,12
     int 10h
     call save2p
     call comp    
pwb3:cmp al,'3'
     jne pwb4
     mov ah,02h
     mov dh,16
     mov dl,16
     int 10h 
     call save2p
     call comp    
pwb4:cmp al,'4'
     jne pwb5
     mov ah,02h
     mov dh,16
     mov dl,20
     int 10h
     call save2p
     call comp    
pwb5:cmp al,'5'
     jne pwb6
     mov ah,02h
     mov dh,16
     mov dl,24
     int 10h 
     call save2p
     call comp    
pwb6:cmp al,'6'
     jne pwb7 
     mov ah,02h
     mov dh,16
     mov dl,28
     int 10h 
     call save2p
     call comp    
pwb7:cmp al,'7'
     jne pwb8
     mov ah,02h
     mov dh,16
     mov dl,32
     int 10h 
     call save2p
     call comp    
pwb8:cmp al,'8'
     jne endw
     mov ah,02h
     mov dh,16
     mov dl,36
     int 10h 
     call save2p
     call comp    
 gwc:mov ah,7h       ;change position for c-->1,2,3,4,5,6,7,8
     cmp al,'c'
     jne gwd
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pwc2
     mov ah,02h
     mov dh,14
     mov dl,8
     int 10h
     call save2p
     call comp    
pwc2:cmp al,'2'
     jne pwc3
     mov ah,02h
     mov dh,14
     mov dl,12
     int 10h
     call save2p
     call comp    
pwc3:cmp al,'3'
     jne pwc4
     mov ah,02h
     mov dh,14
     mov dl,16
     int 10h
     call save2p
     call comp    
pwc4:cmp al,'4'
     jne pwc5 
     mov ah,02h
     mov dh,14
     mov dl,20
     int 10h
     call save2p
     call comp    
pwc5:cmp al,'5'
     jne pwc6
     mov ah,02h
     mov dh,14
     mov dl,24
     int 10h
     call save2p
     call comp    
pwc6:cmp al,'6'
     jne pwc7
     mov ah,02h
     mov dh,14
     mov dl,28
     int 10h
     call save2p
     call comp    
pwc7:cmp al,'7'
     jne pwc8
     mov ah,02h
     mov dh,14
     mov dl,32
     int 10h
     call save2p
     call comp    
pwc8:cmp al,'8'
     jne endw 
     mov ah,02h
     mov dh,14
     mov dl,36
     int 10h 
     call save2p
     call comp
 gwd:mov ah,7h       ;change position for d-->1,2,3,4,5,6,7,8
     cmp al,'d'
     jne gwe
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pwd2
     mov ah,02h
     mov dh,12
     mov dl,8
     int 10h
     call save2p
     call comp    
pwd2:cmp al,'2'
     jne pwd3 
     mov ah,02h
     mov dh,12
     mov dl,12
     int 10h
     call save2p
     call comp    
pwd3:cmp al,'3'
     jne pwd4
     mov ah,02h
     mov dh,12
     mov dl,16
     int 10h 
     call save2p
     call comp    
pwd4:cmp al,'4'
     jne pwd5
     mov ah,02h
     mov dh,12
     mov dl,20
     int 10h
     call save2p
     call comp    
pwd5:cmp al,'5'
     jne pwd6
     mov ah,02h
     mov dh,12
     mov dl,24
     int 10h 
     call save2p
     call comp    
pwd6:cmp al,'6'
     jne pwd7 
     mov ah,02h
     mov dh,12
     mov dl,28
     int 10h
     call save2p
     call comp    
pwd7:cmp al,'7'
     jne pwd8 
     mov ah,02h
     mov dh,12
     mov dl,32
     int 10h
     call save2p
     call comp    
pwd8:cmp al,'8'
     jne endw 
     mov ah,02h
     mov dh,12
     mov dl,36
     int 10h
     call save2p
     call comp    
 gwe:mov ah,7h       ;change position for e-->1,2,3,4,5,6,7,8
     cmp al,'e'
     jne gwf
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pwe2
     mov ah,02h
     mov dh,10
     mov dl,8
     int 10h
     call save2p
     call comp    
pwe2:cmp al,'2'
     jne pwe3 
     mov ah,02h
     mov dh,10
     mov dl,12
     int 10h 
     call save2p
     call comp    
pwe3:cmp al,'3'
     jne pwe4 
     mov ah,02h
     mov dh,10
     mov dl,16
     int 10h
     call save2p
     call comp    
pwe4:cmp al,'4'
     jne pwe5
     mov ah,02h
     mov dh,10
     mov dl,20
     int 10h
     call save2p
     call comp    
pwe5:cmp al,'5'
     jne pwe6
     mov ah,02h
     mov dh,10
     mov dl,24
     int 10h 
     call save2p
     call comp    
pwe6:cmp al,'6'
     jne pwe7
     mov ah,02h
     mov dh,10
     mov dl,28
     int 10h
     call save2p
     call comp    
pwe7:cmp al,'7'
     jne pwe8 
     mov ah,02h
     mov dh,10
     mov dl,32
     int 10h
     call save2p
     call comp    
pwe8:cmp al,'8'
     jne endw 
     mov ah,02h
     mov dh,10
     mov dl,36
     int 10h 
     call save2p
     call comp    
 gwf:mov ah,7h       ;change position for f-->1,2,3,4,5,6,7,8
     cmp al,'f'
     jne gwg
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pwf2
     mov ah,02h
     mov dh,8
     mov dl,8
     int 10h
     call save2p
     call comp    
pwf2:cmp al,'2'
     jne pwf3 
     mov ah,02h
     mov dh,8
     mov dl,12
     int 10h
     call save2p
     call comp    
pwf3:cmp al,'3'
     jne pwf4
     mov ah,02h
     mov dh,8
     mov dl,16
     int 10h
     call save2p
     call comp    
pwf4:cmp al,'4'
     jne pwf5
     mov ah,02h
     mov dh,8
     mov dl,20
     int 10h
     call save2p
     call comp    
pwf5:cmp al,'5'
     jne pwf6
     mov ah,02h
     mov dh,8
     mov dl,24
     int 10h
     call save2p
     call comp    
pwf6:cmp al,'6'
     jne pwf7
     mov ah,02h
     mov dh,8
     mov dl,28
     int 10h
     call save2p
     call comp    
pwf7:cmp al,'7'
     jne pwf8
     mov ah,02h
     mov dh,8
     mov dl,32
     int 10h 
     call save2p
     call comp    
pwf8:cmp al,'8'
     jne endw
     mov ah,02h
     mov dh,8
     mov dl,36
     int 10h
     call save2p
     call comp    
 gwg:cmp al,'g'      ;change position for g-->1,2,3,4,5,6,7,8
     jne gwh
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pwg2
     mov ah,02h
     mov dh,6
     mov dl,8
     int 10h
     call save2p
     call comp    
pwg2:cmp al,'2'
     jne pwg3
     mov ah,02h
     mov dh,6
     mov dl,12
     int 10h
     call save2p
     call comp    
pwg3:cmp al,'3'
     jne pwg4
     mov ah,02h
     mov dh,6
     mov dl,16
     int 10h 
     call save2p
     call comp    
pwg4:cmp al,'4'
     jne pwg5
     mov ah,02h
     mov dh,6
     mov dl,20
     int 10h
     call save2p
     call comp    
pwg5:cmp al,'5'
     jne pwg6
     mov ah,02h
     mov dh,6
     mov dl,24
     int 10h 
     call save2p
     call comp    
pwg6:cmp al,'6'
     jne pwg7
     mov ah,02h
     mov dh,6
     mov dl,28
     int 10h 
     call save2p
     call comp    
pwg7:cmp al,'7'
     jne pwg8
     mov ah,02h
     mov dh,6
     mov dl,32
     int 10h
     call save2p
     call comp    
pwg8:cmp al,'8'
     jne endw
     mov ah,02h
     mov dh,6
     mov dl,36
     int 10h 
     call save2p
     call comp    
 gwh:cmp al,'h'      ;change position for h-->1,2,3,4,5,6,7,8
     jne endw
     mov ah,7h
     int 21h
     cmp al,'1'
     jne pwh2
     mov ah,02h
     mov dh,4
     mov dl,8
     int 10h
     call save2p
     call comp    
pwh2:cmp al,'2'
     jne pwh3
     mov ah,02h
     mov dh,4
     mov dl,12
     int 10h
     call save2p
     call comp    
pwh3:cmp al,'3'
     jne pwh4
     mov ah,02h
     mov dh,4
     mov dl,16
     int 10h
     call save2p
     call comp    
pwh4:cmp al,'4'
     jne pwh5
     mov ah,02h
     mov dh,4
     mov dl,20
     int 10h
     call save2p
     call comp    
pwh5:cmp al,'5'
     jne pwh6
     mov ah,02h
     mov dh,4
     mov dl,24
     int 10h
     call save2p
     call comp    
pwh6:cmp al,'6'
     jne pwh7
     mov ah,02h
     mov dh,4
     mov dl,28
     int 10h
     call save2p
     call comp    
pwh7:cmp al,'7'
     jne pwh8
     mov ah,02h
     mov dh,4
     mov dl,32
     int 10h
     call save2p
     call comp    
pwh8:cmp al,'8'
     jne endw 
     mov ah,02h
     mov dh,4
     mov dl,36
     int 10h
     call save2p
     call comp    
endw:ret
keyw endp

;------------------------------------show item---------------------------------------------------------
mohre proc
     mov cx,1
     mov bh,00
     
     mov dh,4
     mov bl,1fh
     mov ah,02h      ;print of up item
     mov dl,8
     int 10h 
     mov ah,09h
     mov al,0fh
     int 10h  

     mov ah,02h
     mov dl,12
     int 10h 
     mov ah,09h
     mov al,06h
     int 10h

     mov ah,02h
     mov dl,16
     int 10h 
     mov ah,09h
     mov al,05h
     int 10h

     mov ah,02h
     mov dl,20
     int 10h 
     mov ah,09h
     mov al,04h
     int 10h

     mov ah,02h
     mov dl,24
     int 10h 
     mov ah,09h
     mov al,03h
     int 10h

     mov ah,02h
     mov dl,28
     int 10h 
     mov ah,09h
     mov al,05h
     int 10h

     mov ah,02h
     mov dl,32
     int 10h 
     mov ah,09h
     mov al,06h
     int 10h

     mov ah,02h
     mov dl,36
     int 10h 
     mov ah,09h
     mov al,0fh
     int 10h     
          
     mov dh,6     
     mov ah,02h      ;print of up soljer
     mov dl,8
     int 10h 
     mov ah,09h
     mov al,0eah
     mov bl,1fh
     int 10h  
    
     mov ah,02h
     mov dl,12
     int 10h 
     mov ah,09h
     mov al,0eah
     mov bl,1fh
     int 10h

     mov ah,02h
     mov dl,16
     int 10h 
     mov ah,09h
     mov al,0eah
     mov bl,1fh
     int 10h

     mov ah,02h
     mov dl,20
     int 10h 
     mov ah,09h
     mov al,0eah
     mov bl,1fh
     int 10h

     mov ah,02h
     mov dl,24
     int 10h 
     mov ah,09h
     mov al,0eah
     mov bl,1fh
     int 10h

     mov ah,02h
     mov dl,28
     int 10h 
     mov ah,09h
     mov al,0eah
     mov bl,1fh
     int 10h

     mov ah,02h
     mov dl,32
     int 10h 
     mov ah,09h
     mov al,0eah
     mov bl,1fh
     int 10h

     mov ah,02h
     mov dl,36
     int 10h 
     mov ah,09h
     mov al,0eah
     mov bl,1fh
     int 10h     
     
     mov dh,18
     mov bl,18h
     mov ah,02h      ;print of down item
     mov dl,8
     int 10h 
     mov ah,09h
     mov al,0fh
     int 10h  
    
     mov ah,02h
     mov dl,12
     int 10h 
     mov ah,09h
     mov al,06h
     int 10h

     mov ah,02h
     mov dl,16
     int 10h 
     mov ah,09h
     mov al,05h
     int 10h

     mov ah,02h
     mov dl,20
     int 10h 
     mov ah,09h
     mov al,04h
     int 10h

     mov ah,02h
     mov dl,24
     int 10h 
     mov ah,09h
     mov al,03h
     int 10h

     mov ah,02h
     mov dl,28
     int 10h 
     mov ah,09h
     mov al,05h
     int 10h

     mov ah,02h
     mov dl,32
     int 10h 
     mov ah,09h
     mov al,06h
     int 10h

     mov ah,02h
     mov dl,36
     int 10h 
     mov ah,09h
     mov al,0fh
     int 10h 
     
     mov dh,16
     mov ah,02h      ;print of down soljer
     mov dl,8
     int 10h 
     mov ah,09h
     mov al,0eah
     int 10h  
    
     mov ah,02h
     mov dl,12
     int 10h 
     mov ah,09h
     mov al,0eah
     int 10h

     mov ah,02h
     mov dl,16
     int 10h 
     mov ah,09h
     mov al,0eah
     int 10h

     mov ah,02h
     mov dl,20
     int 10h 
     mov ah,09h
     mov al,0eah
     int 10h

     mov ah,02h
     mov dl,24
     int 10h 
     mov ah,09h
     mov al,0eah
     int 10h

     mov ah,02h
     mov dl,28
     int 10h 
     mov ah,09h
     mov al,0eah
     int 10h

     mov ah,02h
     mov dl,32
     int 10h 
     mov ah,09h
     mov al,0eah
     int 10h

     mov ah,02h
     mov dl,36
     int 10h 
     mov ah,09h
     mov al,0eah
     int 10h
     mov ah,02h      ;show message:'Master:Yasser Elmi'
     mov dh,4
     mov dl,51
     int 10h 
     mov ah,02h      
     mov cx,18
     lea di,tec
tec1:mov dl,[di]
     int 21h
     inc di
     loop tec1
     mov ah,02h      ;show message:'programmer:'
     mov dh,8
     mov dl,54
     int 10h 
     mov ah,02h      
     mov cx,11
     lea di,pro
pro1:mov dl,[di]
     int 21h
     inc di
     loop pro1 
     mov ah,02h      ;show message:'Mehdi Baratzadeh Jovaini    850207836'
     mov dh,9
     mov dl,42
     int 10h 
     mov ah,02h      
     mov cx,36
     lea di,nam
nam1:mov dl,[di]
     int 21h
     inc di
     loop nam1
     mov ah,02h      ;show message:'esc:abort change position         q:quit'
     mov dh,18
     mov dl,42
     int 10h 
     mov ah,02h      
     mov cx,36
     lea di,key
key1:mov dl,[di]
     int 21h
     inc di
     loop key1
     mov ah,02h      ;go cursor to first position
     mov dh,22
     mov dl,22
     int 10h 
     ret
mohre endp                

;------------------------------------show message in the screen of monitor-----------------------------
pwait proc
     call clrscr
     mov bh,00
     mov ah,02h      ;show message:'please wait...'
     mov dh,9
     mov dl,30
     int 10h 
     mov ah,02h      
     mov cx,14
     lea di,plz
plz1:mov dl,[di]
     int 21h
     inc di
     loop plz1
     mov cx,43       ;start of progress
  l1:mov ah,02h
     mov dh,10
     mov dl,start 
     inc start
     int 10h
     mov ah,0ah
     mov al,0dbh
     mov temp,cx
     mov cx,1
     int 10h
     mov cx,temp
     loop l1
     mov ah,00h
     mov al,03
     int 10h  
     ret
pwait endp              

;------------------------------------clear of monitor--------------------------------------------------
clrscr proc
     mov ax,0600h
     mov bh,13h
     mov cx,0000h
     mov dx,184fh
     int 10h
     mov ah,06h      ;clear of row1 of screen
     mov al,03h
     mov cx,0000h
     mov dh,02h
     mov dl,4fh
     mov bh,11h
     int 10h
     ret
clrscr endp  

;------------------------------------main part of chess game-------------------------------------------
main proc far
     mov ax,@data
     mov ds,ax 
;     call pwait      ;start of chess game
     call clrscr
	 
	 mov ah,09h      ;design chess
     lea dx,box
     int 21h
     
     mov ah,01       ;change size of cursor
     mov ch,01
     mov cl,0ah
     int 10h
     
     call mohre
keyp:call keyr
     mov ah,02h      ;go cursor to first position
     mov bh,00
     mov dh,22
     mov dl,22
     int 10h 
     
     mov ah,07h      ;wait to recive key
     int 21h
     cmp al,'q'
     jnz keyp
     jmp exit

     mov ah,31h      ;load in the memory
	 mov dx,12
	 int 21h
exit:mov ax,4c00h    ;exit
	 int 21h		        
main endp
    end main    