level_0_rooms_enemies:
  .dw level_0_room_0_enemies
  .dw level_0_room_1_enemies
  .dw level_0_room_2_enemies
  .dw level_0_room_3_enemies
  .dw level_0_room_4_enemies
  .dw level_0_room_5_enemies
  .dw level_0_room_6_enemies
  .dw level_0_room_7_enemies

; up, right, down, left
level_0_room_0_door_links:
  .db $00,$00,$01,$03
level_0_room_1_door_links:
  .db $00,$00,$02,$00
level_0_room_2_door_links:
  .db $01,$02,$02,$02
level_0_room_3_door_links:
  .db $01,$00,$02,$02

  ; $00 salta il turno
  ; $01 il player
  ; $02 enemy_0
  ; $03 enemy_1
  ; $04 enemy_2 
pawn_turns:
  .db $01,$02,$03,$04,$FF

;::::::::::::::::::::::::::::::::::::::::::::::::
;            * ENEMIES STATS 2.0 *
;                 HP, STR, DEF
;::::::::::::::::::::::::::::::::::::::::::::::::
enemies_stats:
  ;none:
  .db $00,$00,$00
  ;smile:
  .db $04,$02,$02
  ;bat:
  .db $02,$01,$01

level_0_room_0_enemies:
  .db CELL_EN_NONE
  .db CELL_EN_NONE
  .db CELL_EN_NONE
level_0_room_1_enemies:
  .db CELL_EN_NONE
  .db CELL_EN_NONE
  .db CELL_EN_NONE
level_0_room_2_enemies:
  .db CELL_EN_BAT
  .db CELL_EN_NONE
  .db CELL_EN_NONE
level_0_room_3_enemies:
  .db CELL_EN_SMILE
  .db CELL_EN_SMILE
  .db CELL_EN_NONE
level_0_room_4_enemies:
  .db CELL_EN_SMILE
  .db CELL_EN_SMILE
  .db CELL_EN_NONE
level_0_room_5_enemies:
  .db CELL_EN_SMILE
  .db CELL_EN_SMILE
  .db CELL_EN_BAT
level_0_room_6_enemies:
  .db CELL_EN_NONE
  .db CELL_EN_NONE
  .db CELL_EN_NONE
level_0_room_7_enemies:
  .db CELL_EN_NONE
  .db CELL_EN_NONE
  .db CELL_EN_NONE

;:::::::::::::::::::::::::::::::::::::::::::::::
;        * LEVEL TILES DESCRIPTOR *
; Di seguito ci sono i tile da mettere sullo 
; sfondo. Ad esempio $54 è il mattone "normale".
;:::::::::::::::::::::::::::::::::::::::::::::::
tile_translator:
  .db $54 ;$00
  .db $56 ;$01
  .db $36 ;$02
  .db $7C ;$03
  .db $36 ;$04
  .db $B0 ;$05
  .db $34 ;$06
  .db $3A ;$07
  .db $38 ;$08
  .db $5A ;$09
  .db $58 ;$0A
  .db $74 ;$0B
  .db $72 ;$0C
  .db $52 ;$0D
  .db $50 ;$0E
  .db $30 ;$0F
  .db $32 ;$10
  .db $70 ;$11
  .db $EE ;$12
  .db $54 ;$13 Enemy 0
  .db $54 ;$14 Enemy 1
  .db $54 ;$15 Enemy 2
  .db $54 ;$16

level_0_occs_rooms:
 .dw l_0_0
 .dw l_1_0
 .dw l_1_1
 .dw l_2_1
 .dw l_3_1
 .dw l_3_2
 .dw l_3_0

 l_0_0:
 .db $12,$07,$06,$02,$06,$06,$06,$08
 .db $12,$09,$00,$00,$00,$00,$00,$0A
 .db $12,$09,$00,$00,$00,$00,$00,$0A
 .db $12,$0E,$06,$06,$06,$08,$00,$0A
 .db $12,$12,$07,$06,$06,$0D,$00,$0A
 .db $12,$12,$09,$00,$00,$00,$00,$0A
 .db $12,$12,$0E,$04,$06,$06,$06,$0D
 .db $12,$12,$12,$12,$12,$12,$12,$12

 l_1_0:
 .db $12,$12,$07,$02,$06,$06,$06,$08
 .db $12,$12,$09,$00,$00,$00,$00,$0C
 .db $12,$12,$09,$00,$00,$00,$00,$03
 .db $12,$12,$09,$00,$00,$00,$00,$0F
 .db $12,$12,$0E,$06,$06,$06,$06,$0D
 .db $12,$12,$12,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12

 l_1_1:
 .db $07,$06,$06,$06,$06,$08,$12,$12
 .db $0B,$00,$00,$00,$00,$0A,$12,$12
 .db $05,$00,$00,$00,$13,$0A,$12,$12
 .db $10,$00,$00,$00,$00,$0A,$12,$12
 .db $0E,$06,$06,$10,$00,$0A,$12,$12
 .db $12,$12,$12,$09,$00,$0A,$12,$12
 .db $12,$12,$12,$0E,$04,$0D,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12

 l_2_1:
 .db $12,$07,$06,$06,$02,$06,$06,$08
 .db $12,$09,$00,$00,$00,$00,$00,$0A
 .db $12,$09,$00,$00,$00,$0F,$06,$0D
 .db $12,$09,$13,$00,$14,$0A,$12,$12
 .db $12,$09,$00,$00,$00,$0A,$12,$12
 .db $12,$09,$00,$00,$00,$0A,$12,$12
 .db $12,$0E,$06,$06,$04,$0D,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12

 l_3_1:
 .db $07,$06,$06,$06,$02,$06,$06,$08
 .db $0B,$00,$00,$00,$00,$00,$00,$0C
 .db $05,$13,$00,$14,$00,$00,$00,$03
 .db $10,$00,$00,$00,$00,$00,$00,$0A
 .db $0E,$06,$06,$06,$06,$06,$06,$0D
 .db $12,$12,$12,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12

 l_3_2:
 .db $07,$06,$08,$12,$12,$12,$12,$12
 .db $0B,$00,$0A,$12,$12,$12,$12,$12
 .db $05,$00,$0A,$12,$12,$12,$12,$12
 .db $10,$00,$0A,$12,$12,$12,$12,$12
 .db $0E,$06,$0D,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12

 l_3_0:
 .db $12,$12,$12,$12,$12,$07,$06,$08
 .db $12,$12,$12,$12,$12,$09,$00,$0C
 .db $12,$12,$12,$12,$12,$09,$00,$03
 .db $12,$12,$12,$12,$12,$09,$00,$0F
 .db $12,$12,$12,$12,$12,$0E,$06,$0D
 .db $12,$12,$12,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12
 .db $12,$12,$12,$12,$12,$12,$12,$12

 level_0_doors_links:
 .dw d_0_0
 .dw d_1_0
 .dw d_1_1
 .dw d_2_1
 .dw d_3_1
 .dw d_3_2
 .dw d_3_0

 d_0_0:
 .db $00,$00,$1,$00

 d_1_0:
 .db $0,$2,$00,$00

 d_1_1:
 .db $00,$00,$3,$1

 d_2_1:
 .db $2,$00,$4,$00

 d_3_1:
 .db $3,$5,$00,$6

 d_3_2:
 .db $00,$00,$00,$4

 d_3_0:
 .db $00,$4,$00,$00