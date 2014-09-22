pro airports2


t = read_csv('airports.csv')

;-- use airports to trace elevation

; try a very crude adaptive binning

b1 = 9.0
b2 = 6.0
b3 = 3.0
b4 = 1.5
b5 = 0.7
b6 = 0.4
b7 = 0.2

; elevation levels (will be log levels)
levels = findgen(60)/4.+1


set_plot,'ps'

device,filename='airport_elevation.eps',/encap,/color,/inch,xsize=16,ysize=11
loadct,22,file='brewer.tbl' ; RdBu
reverse_ct,/set
map_set,/rob,E_HORIZON={FILL:1, COLOR:1},/nobord
loadct,25,file='brewer.tbl' ; spectral
reverse_ct,/set
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b1,ybin=b1,lvl=levels,xsty=5,ysty=5, $
           title='!7World Elevation: Traced with Airports',font=0,charsize=2,/overplot
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b2,ybin=b2,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b3,ybin=b3,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b4,ybin=b4,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b5,ybin=b5,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b6,ybin=b6,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b7,ybin=b7,lvl=levels,/over
loadct,0,/silent
map_set,/rob,/noerase,/cont,color=100,MLINETHICK=3,/hor,/nobord

device,/close



device,filename='usa_elevation.eps',/encap,/color,/inch,xsize=11,ysize=11
loadct,22,file='brewer.tbl' ; RdBu
reverse_ct,/set
map_set,/rob,/nobo,limit=[0,-140,60,-60],40,-100,E_HORIZON={FILL:1, COLOR:1}
loadct,25,file='brewer.tbl' ; spectral
reverse_ct,/set
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b1,ybin=b1,lvl=levels,xsty=5,ysty=5, $
           title='!7World Elevation: Traced with Airports',font=0,charsize=2,/overplot
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b2,ybin=b2,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b3,ybin=b3,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b4,ybin=b4,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b5,ybin=b5,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b6,ybin=b6,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b7,ybin=b7,lvl=levels,/over
;loadct,0,/silent
;map_set,/rob,/noerase,/cont,color=100,MLINETHICK=3,/hor,/nobord,limit=[0,-140,60,-60],40,-100
device,/close



device,filename='Easia_elevation.eps',/encap,/color,/inch,xsize=11,ysize=11
loadct,22,file='brewer.tbl' ; RdBu
reverse_ct,/set
map_set,/rob,/nobo,limit=[-30,80,70,180],30,130,E_HORIZON={FILL:1, COLOR:1}
loadct,25,file='brewer.tbl' ; spectral
reverse_ct,/set
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b1,ybin=b1,lvl=levels,xsty=5,ysty=5, $
           title='!7World Elevation: Traced with Airports',font=0,charsize=2,/overplot
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b2,ybin=b2,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b3,ybin=b3,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b4,ybin=b4,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b5,ybin=b5,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b6,ybin=b6,lvl=levels,/over
pixel_plus,t.field06,t.field05,real(alog10(float(t.field07))^2.,0.),xbin=b7,ybin=b7,lvl=levels,/over
;loadct,0,/silent
;map_set,/rob,/noerase,/cont,color=100,MLINETHICK=3,/hor,/nobord,limit=[0,-140,60,-60],40,-100
device,/close



set_plot,'X'
stop
end
