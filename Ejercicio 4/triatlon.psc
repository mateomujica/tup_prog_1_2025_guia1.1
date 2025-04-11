Proceso sin_titulo
	Definir dnat,dcic,dped como Real; ///distancias
	Definir hnat,hcic,hped,mnat,mcic,mped,snat,scic,sped Como Real; ///tiempos
	Definir velnat, velcic, velped Como Real; ///km/h de cada deporte
	Definir total,htotal,mtotal,stotal,restoMin,restoSeg como Real; ///calcular tiempo total 
	
	Escribir "Distancias natacion, ciclismo, pedestrismo";
	Leer dnat,dcic,dped;
	Escribir "Tiempos natacion (HMS)"; 
	Leer hnat,mnat,snat;
	Escribir "Tiempos ciclismo (HMS)"; 
	Leer hcic,mcic,scic;
	Escribir "Tiempos pedestrismo (HMS)"; 
	Leer hped,mped,sped;
	
	velnat=dnat/(hnat+(mnat/60)+(snat/3600));
	velcic=dcic/(hcic+(mcic/60)+(scic/3600));
	velped=dped/(hped+(mped/60)+(sped/3600));
	
	total = (hnat + hcic + hped) + ((mnat + mcic + mped)/60) + ((snat + scic + sped)/3600);
	
	htotal = trunc(total); // horas
	restoMin = (total - htotal) * 60;
	mtotal = trunc(restoMin); // minutos
	restoSeg = (restoMin - mtotal) * 60;
	stotal = trunc(restoSeg); // segundos redondeados
	Escribir   "Natacion:  ",dnat,"Km  ","//  Km/h Natacion: ",velnat;            
	Escribir   "Ciclismo:  ",dcic,"Km  ","//  Km/h Ciclismo: ",velcic;
	Escribir   "Pedretismo:  ",dped,"Km  ","//  Km/h Pedrestismo: ",velped;
	
	
	Escribir "Total: Horas ",htotal," Minutos",mtotal," Segundos",stotal; 
FinProceso
