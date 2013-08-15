v 20110115 2
C 43100 43100 1 0 0 ATmega_RFR2.sym
{
T 48600 49400 5 10 1 1 0 0 1
device=ATmega RFR2
T 48600 49200 5 10 1 1 0 0 1
refdes=U2
T 43100 43100 5 10 0 0 0 0 1
footprint=QFN64_9_EP
}
C 44000 37500 1 270 0 capacitor-2.sym
{
T 44700 37300 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 44500 37300 5 10 1 1 270 0 1
refdes=C15
T 44900 37300 5 10 0 0 270 0 1
symversion=0.1
T 44000 37500 5 10 1 1 0 0 1
value=47u
T 44000 37500 5 10 0 1 0 0 1
footprint=SME3
}
C 41500 37500 1 270 0 capacitor-2.sym
{
T 42200 37300 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 42000 37300 5 10 1 1 270 0 1
refdes=C12
T 42400 37300 5 10 0 0 270 0 1
symversion=0.1
T 41500 37500 5 10 1 1 0 0 1
value=100u
T 41500 37500 5 10 0 1 0 0 1
footprint=SME3
}
C 42000 37200 1 0 0 LD2981ABU33TR.sym
{
T 43400 38200 5 10 1 1 0 6 1
refdes=U4
T 42200 38500 5 8 0 0 0 0 1
device=LD2981ABU33TR
T 42000 37200 5 10 0 1 0 0 1
footprint=SOT89
}
C 41500 38100 1 0 0 Vunreg.sym
C 44000 38100 1 0 0 3.3V-plus-1.sym
C 42700 36000 1 0 0 gnd-1.sym
C 39500 37300 1 0 0 connector2-1.sym
{
T 39700 38300 5 10 0 0 0 0 1
device=CONNECTOR_2
T 39500 38100 5 10 1 1 0 0 1
refdes=PWR
T 39500 37300 5 10 0 1 0 0 1
footprint=JUMPER2
}
N 41200 37800 42000 37800 4
N 41700 37800 41700 38100 4
N 41700 37800 41700 37500 4
N 41200 37500 41400 37500 4
N 41400 36300 41400 37500 4
N 41400 36300 46600 36300 4
N 44200 36300 44200 36600 4
N 42800 36300 42800 37200 4
N 41700 36600 41700 36300 4
N 43600 37800 44200 37800 4
N 44200 37500 44200 38100 4
C 46200 45900 1 0 0 gnd-1.sym
C 44900 38100 1 0 0 DEVDD.sym
C 46400 38100 1 0 0 EVDD.sym
C 45400 37700 1 0 0 inductor-1.sym
{
T 45600 38200 5 10 0 0 0 0 1
device=Ferrite bead (e.g. Wurth 74279266)
T 45600 38000 5 10 1 1 0 0 1
refdes=L1
T 45600 38400 5 10 0 0 0 0 1
symversion=0.1
T 45400 37700 5 10 0 1 0 0 1
footprint=INDC1608M
}
C 46400 37500 1 270 0 capacitor-1.sym
{
T 47100 37300 5 10 0 0 270 0 1
device=CAPACITOR
T 46900 37300 5 10 1 1 270 0 1
refdes=C17
T 47300 37300 5 10 0 0 270 0 1
symversion=0.1
T 46400 37500 5 10 0 1 0 0 1
footprint=CAPC1608M
T 46400 37500 5 10 1 1 0 0 1
value=1u
}
C 44900 37500 1 270 0 capacitor-1.sym
{
T 45600 37300 5 10 0 0 270 0 1
device=CAPACITOR
T 45400 37300 5 10 1 1 270 0 1
refdes=C16
T 45800 37300 5 10 0 0 270 0 1
symversion=0.1
T 44900 37500 5 10 0 1 0 0 1
footprint=CAPC1608M
T 44900 37500 5 10 1 1 0 0 1
value=10u
}
N 44200 37800 45400 37800 4
N 45100 37800 45100 37500 4
N 45100 37800 45100 38100 4
N 46300 37800 46600 37800 4
N 46600 37500 46600 38100 4
N 46600 36300 46600 36600 4
N 45100 36600 45100 36300 4
C 50900 47900 1 180 0 gnd-1.sym
C 50800 47400 1 0 0 capacitor-1.sym
{
T 51000 48100 5 10 0 0 0 0 1
device=CAPACITOR
T 51000 47900 5 10 1 1 0 0 1
refdes=C8
T 51000 48300 5 10 0 0 0 0 1
symversion=0.1
T 50800 47400 5 10 1 1 0 0 1
value=0.1u
T 50800 47400 5 10 0 1 0 0 1
footprint=CAPC1005M
}
N 49400 47600 50800 47600 4
N 49400 47300 52000 47300 4
N 52000 47300 52000 47800 4
C 51800 47800 1 0 0 DEVDD.sym
N 51700 47600 52000 47600 4
C 49600 43400 1 0 0 gnd-1.sym
C 50000 43800 1 0 0 capacitor-1.sym
{
T 50200 44500 5 10 0 0 0 0 1
device=CAPACITOR
T 50200 44300 5 10 1 1 0 0 1
refdes=C14
T 50200 44700 5 10 0 0 0 0 1
symversion=0.1
T 50000 43800 5 10 1 1 0 0 1
value=0.1u
T 50000 43800 5 10 0 1 0 0 1
footprint=CAPC1005M
}
N 49400 44600 49700 44600 4
N 49700 44600 49700 43700 4
N 49400 44300 51200 44300 4
N 51200 44300 51200 44000 4
C 51000 44300 1 0 0 DEVDD.sym
N 50900 44000 51200 44000 4
C 45100 40700 1 0 0 gnd-1.sym
C 45900 41000 1 270 0 capacitor-1.sym
{
T 46600 40800 5 10 0 0 270 0 1
device=CAPACITOR
T 46400 40800 5 10 1 1 270 0 1
refdes=C13
T 46800 40800 5 10 0 0 270 0 1
symversion=0.1
T 45900 41000 5 10 1 1 0 0 1
value=0.1u
T 45900 41000 5 10 0 1 0 0 1
footprint=CAPC1005M
}
N 46100 43100 46100 41000 4
N 45200 41300 46100 41300 4
N 45800 43100 45800 39800 4
N 45800 39800 46100 39800 4
C 46000 39800 1 180 0 DEVDD.sym
N 46100 40100 46100 39800 4
N 45200 41000 45200 41600 4
N 44900 41300 44900 43100 4
C 45000 42500 1 270 0 capacitor-1.sym
{
T 45700 42300 5 10 0 0 270 0 1
device=CAPACITOR
T 45500 42300 5 10 1 1 270 0 1
refdes=C10
T 45900 42300 5 10 0 0 270 0 1
symversion=0.1
T 45000 42500 5 10 1 1 0 0 1
value=1u
T 45000 42500 5 10 0 1 0 0 1
footprint=CAPC1608M
}
N 45200 43100 45200 42500 4
N 45200 41300 44900 41300 4
C 45400 49700 1 90 0 capacitor-1.sym
{
T 44700 49900 5 10 0 0 90 0 1
device=CAPACITOR
T 44900 49900 5 10 1 1 90 0 1
refdes=C5
T 44500 49900 5 10 0 0 90 0 1
symversion=0.1
T 45400 49700 5 10 1 1 0 0 1
value=1u
T 45400 49700 5 10 0 1 0 0 1
footprint=CAPC1608M
}
C 45400 51500 1 90 0 capacitor-1.sym
{
T 44700 51700 5 10 0 0 90 0 1
device=CAPACITOR
T 44900 53400 5 10 1 1 90 0 1
refdes=C1
T 44500 51700 5 10 0 0 90 0 1
symversion=0.1
T 45400 51500 5 10 0 1 0 0 1
footprint=CAPC1005M
T 45400 51500 5 10 1 1 0 0 1
value=0.1u
}
N 44900 49400 44900 51200 4
N 44900 51200 46700 51200 4
N 45800 51200 45800 49400 4
N 45200 51200 45200 50600 4
N 45200 49700 45200 49400 4
C 45900 51500 1 180 0 gnd-1.sym
C 46800 52700 1 0 0 DEVDD.sym
C 46900 51500 1 90 0 capacitor-1.sym
{
T 46200 51700 5 10 0 0 90 0 1
device=CAPACITOR
T 46400 51700 5 10 1 1 90 0 1
refdes=C4
T 46000 51700 5 10 0 0 90 0 1
symversion=0.1
T 46900 51500 5 10 1 1 0 0 1
value=0.1u
T 46900 51500 5 10 0 1 0 0 1
footprint=CAPC1005M
}
N 46700 52400 46700 52700 4
N 46700 52700 47000 52700 4
N 47000 52700 47000 49400 4
N 46700 49400 46700 51500 4
C 46300 53800 1 90 0 capacitor-1.sym
{
T 45600 54000 5 10 0 0 90 0 1
device=CAPACITOR
T 45800 54000 5 10 1 1 90 0 1
refdes=C2
T 45400 54000 5 10 0 0 90 0 1
symversion=0.1
T 46300 53800 5 10 0 1 0 0 1
footprint=CAPC1005M
}
C 48500 53800 1 90 0 capacitor-1.sym
{
T 47800 54000 5 10 0 0 90 0 1
device=CAPACITOR
T 48000 54000 5 10 1 1 90 0 1
refdes=C3
T 47600 54000 5 10 0 0 90 0 1
symversion=0.1
T 48500 53800 5 10 0 1 0 0 1
footprint=CAPC1005M
}
N 46100 49400 46100 53800 4
N 46400 49400 46400 53200 4
N 46400 53200 48300 53200 4
N 48300 53200 48300 53800 4
C 44400 49400 1 0 0 nc-top-1.sym
{
T 44800 49900 5 10 0 0 0 0 1
value=NoConnection
T 44800 50100 5 10 0 0 0 0 1
device=DRC_Directive
}
C 42200 45900 1 270 0 gnd-1.sym
C 42200 46800 1 270 0 gnd-1.sym
N 49700 44000 49400 44000 4
C 43100 53200 1 0 0 AVR_JTAG.sym
{
T 43100 55200 5 10 0 1 0 0 1
device=HEADER10
T 43700 55300 5 10 1 1 0 0 1
refdes=J1
T 43100 53200 5 10 0 1 0 0 1
footprint=HEADER10_2
}
N 42500 45800 43100 45800 4
N 43100 45500 42800 45500 4
N 42800 45500 42800 45800 4
N 43100 53400 41600 53400 4
N 41600 47000 41600 53400 4
N 41200 47000 43100 47000 4
N 41200 47300 43100 47300 4
N 41900 47300 41900 54600 4
N 41900 54600 43100 54600 4
N 43100 54200 42200 54200 4
N 42200 47600 42200 54200 4
N 41200 47600 43100 47600 4
N 41200 47900 43100 47900 4
N 42500 47900 42500 55000 4
N 42500 55000 43100 55000 4
C 44900 54900 1 0 0 DEVDD.sym
C 44800 54900 1 90 0 gnd-1.sym
C 44800 53300 1 90 0 gnd-1.sym
C 44500 53700 1 0 0 nc-right-1.sym
{
T 44600 54200 5 10 0 0 0 0 1
value=NoConnection
T 44600 54400 5 10 0 0 0 0 1
device=DRC_Directive
}
C 44500 54100 1 0 0 nc-right-1.sym
{
T 44600 54600 5 10 0 0 0 0 1
value=NoConnection
T 44600 54800 5 10 0 0 0 0 1
device=DRC_Directive
}
C 42600 53700 1 0 0 nc-left-1.sym
{
T 42600 54100 5 10 0 0 0 0 1
value=NoConnection
T 42600 54500 5 10 0 0 0 0 1
device=DRC_Directive
}
N 45100 54600 44500 54600 4
N 45100 54900 45100 54600 4
C 41500 44400 1 90 0 2450FB15L0001.sym
{
T 40200 44500 5 10 0 1 90 0 1
device=2450FB15L0001
T 40200 45500 5 10 1 1 90 0 1
refdes=B1
T 41500 44400 5 10 0 0 0 0 1
footprint=2450FB15L0001
}
N 43100 46400 41200 46400 4
N 43100 46100 41800 46100 4
N 41800 46100 41800 44400 4
N 41800 44400 41200 44400 4
C 41100 43200 1 90 0 capacitor-1.sym
{
T 40400 43400 5 10 0 0 90 0 1
device=500R07S220JV4
T 40600 43400 5 10 1 1 90 0 1
refdes=C7
T 40200 43400 5 10 0 0 90 0 1
symversion=0.1
T 41100 43200 5 10 1 1 0 0 1
value=22p
T 41100 43200 5 10 0 1 0 0 1
footprint=CAPC1005M
}
C 40800 42900 1 0 0 gnd-1.sym
C 41000 46400 1 180 0 gnd-1.sym
C 40700 46400 1 180 0 gnd-1.sym
N 40600 44400 40600 44100 4
N 40600 44100 38300 44100 4
C 53000 51100 1 180 0 connector8-1.sym
{
T 52900 47900 5 10 0 0 180 0 1
device=CONNECTOR_8
T 52900 48500 5 10 1 1 180 0 1
refdes=PORTE
T 53000 51100 5 10 0 1 0 0 1
footprint=JUMPER8
}
C 53000 47200 1 180 0 connector8-1.sym
{
T 52900 44000 5 10 0 0 180 0 1
device=CONNECTOR_8
T 52900 44600 5 10 1 1 180 0 1
refdes=PORTB
T 53000 47200 5 10 0 1 0 0 1
footprint=JUMPER8
}
C 53000 43000 1 180 0 connector8-1.sym
{
T 52900 39800 5 10 0 0 180 0 1
device=CONNECTOR_8
T 52900 40400 5 10 1 1 180 0 1
refdes=PORTD
T 53000 43000 5 10 0 1 0 0 1
footprint=JUMPER8
}
C 39500 46800 1 0 0 connector8-1.sym
{
T 39600 50000 5 10 0 0 0 0 1
device=CONNECTOR_8
T 39600 49400 5 10 1 1 0 0 1
refdes=PORTF
T 39500 46800 5 10 0 1 0 0 1
footprint=JUMPER8
}
N 41200 48200 43100 48200 4
N 41200 48500 43100 48500 4
N 41200 48800 43100 48800 4
N 43100 48800 43100 49700 4
N 43100 49700 44000 49700 4
N 44000 49700 44000 49400 4
N 44300 49400 44300 50000 4
N 42800 50000 44300 50000 4
N 42800 50000 42800 49100 4
N 42800 49100 41200 49100 4
N 40900 44100 40900 44400 4
C 40200 43200 1 90 0 capacitor-1.sym
{
T 39500 43400 5 10 0 0 90 0 1
device=CAPACITOR
T 39700 43400 5 10 1 1 90 0 1
refdes=C6
T 39300 43400 5 10 0 0 90 0 1
symversion=0.1
T 40200 43200 5 10 0 1 0 0 1
footprint=CAPC1005M
}
C 39900 42900 1 0 0 gnd-1.sym
N 43100 44000 42800 44000 4
N 42800 41600 42800 44000 4
N 42800 41600 41200 41600 4
N 43100 44300 42500 44300 4
N 42500 41900 42500 44300 4
N 42500 41900 41200 41900 4
N 41200 42200 42200 42200 4
N 42200 42200 42200 44600 4
N 42200 44600 43100 44600 4
N 43600 42800 44000 42800 4
N 44000 42800 44000 43100 4
N 44300 40900 44300 43100 4
N 44600 43100 44600 41300 4
N 44600 41300 41200 41300 4
N 51300 42800 48500 42800 4
N 48500 42800 48500 43100 4
N 48200 43100 48200 42500 4
N 48200 42500 51300 42500 4
N 47900 43100 47900 42200 4
N 47900 42200 51300 42200 4
N 51300 41900 47600 41900 4
N 47600 41900 47600 43100 4
N 47300 43100 47300 41600 4
N 47300 41600 51300 41600 4
N 51300 41300 47000 41300 4
N 47000 41300 47000 43100 4
N 46700 43100 46700 41000 4
N 46700 41000 51300 41000 4
N 51300 40700 46400 40700 4
N 46400 40700 46400 43100 4
N 51300 45200 49400 45200 4
N 51300 45800 49400 45800 4
N 51300 46400 49400 46400 4
N 51300 47000 49400 47000 4
N 51300 44900 49400 44900 4
N 51300 45500 49400 45500 4
N 51300 46100 49400 46100 4
N 51300 46700 49400 46700 4
N 48500 49400 48500 49700 4
N 48500 49700 51300 49700 4
N 49400 48500 49700 48500 4
N 49700 48500 49700 49400 4
N 49700 49400 51300 49400 4
N 51300 49100 50000 49100 4
N 50000 48200 50000 49100 4
N 50000 48200 49400 48200 4
N 49400 47900 50300 47900 4
N 50300 47900 50300 48800 4
N 50300 48800 51300 48800 4
N 51300 50000 48200 50000 4
N 48200 50000 48200 49400 4
N 47900 49400 47900 50300 4
N 47900 50300 51300 50300 4
N 51300 50600 47600 50600 4
N 47600 50600 47600 49400 4
N 47300 49400 47300 50900 4
N 47300 50900 51300 50900 4
N 42500 46700 43100 46700 4
C 43600 40800 1 0 0 crystal-1.sym
{
T 43800 41300 5 10 0 0 0 0 1
device=CRYSTAL
T 43800 41100 5 10 1 1 0 0 1
refdes=U3
T 43800 41500 5 10 0 0 0 0 1
symversion=0.1
T 43600 40800 5 10 1 1 0 0 1
value=32.768 kHz
T 43600 40800 5 10 0 1 0 0 1
footprint=RESC2012M
}
C 43800 40000 1 90 0 capacitor-1.sym
{
T 43100 40200 5 10 0 0 90 0 1
device=CAPACITOR
T 43300 40200 5 10 1 1 90 0 1
refdes=C9
T 42900 40200 5 10 0 0 90 0 1
symversion=0.1
T 43800 40000 5 10 0 1 0 0 1
footprint=CAPC1005M
}
C 44500 40000 1 90 0 capacitor-1.sym
{
T 43800 40200 5 10 0 0 90 0 1
device=CAPACITOR
T 44000 40200 5 10 1 1 90 0 1
refdes=C11
T 43600 40200 5 10 0 0 90 0 1
symversion=0.1
T 44500 40000 5 10 0 1 0 0 1
footprint=CAPC1005M
}
C 44200 39700 1 0 0 gnd-1.sym
C 43500 39700 1 0 0 gnd-1.sym
N 43600 40900 43600 42800 4
N 50000 44000 49700 44000 4
C 42900 38700 1 180 0 gnd-1.sym
C 39500 41100 1 0 0 connector4-1.sym
{
T 41300 42000 5 10 0 0 0 0 1
device=CONNECTOR_4
T 39500 42500 5 10 1 1 0 0 1
refdes=PORTG
T 39500 41100 5 10 0 1 0 0 1
footprint=JUMPER4
}
C 45300 52700 1 0 0 EVDD.sym
N 45500 52700 45200 52700 4
N 45200 52700 45200 52400 4
N 45500 52700 45500 49400 4
N 41200 46400 41200 46100 4
N 45200 51200 45200 51500 4
N 45200 42800 45500 42800 4
N 45500 42800 45500 43100 4
C 37900 43000 1 0 0 arfx1229-1.sym
{
T 37050 43650 5 10 0 0 0 0 1
device=BNC
T 38000 44300 5 10 1 1 0 0 1
refdes=J2
T 38000 43000 5 10 1 1 0 0 1
value=RPSMA
T 38000 44300 5 10 0 1 0 0 1
footprint=AMPHENOL_ARFX1229
}
C 38200 42600 1 0 0 gnd-1.sym
N 38300 43800 38300 42900 4
C 46400 54800 1 0 0 TSX-3225.sym
{
T 46600 55300 5 10 0 0 0 0 1
device=TSX-3225
T 47400 55700 5 10 1 1 0 0 1
refdes=U1
T 46600 55500 5 10 0 0 0 0 1
symversion=0.1
T 48400 55600 5 10 0 1 0 0 1
footprint=TSX-3225
}
N 46100 54700 46100 55000 4
N 46100 55000 46400 55000 4
N 48300 54700 48300 55400 4
N 48300 55400 47700 55400 4
C 48000 54900 1 90 0 gnd-1.sym
C 46100 55500 1 270 0 gnd-1.sym