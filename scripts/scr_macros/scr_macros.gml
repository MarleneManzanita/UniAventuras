// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
//Direcciones personajes
#macro RIGHT 0
#macro UP 1
#macro LEFT 2
#macro DOWN 3

//Si el personaje tiene la agenda o no
global.book=false;

//Personaje seleccionado
global.select=0;

//Bool para saber si viene la sección de preguntas o no
global.preg=false;

//nivel actual
global.current=0;

//Array con cantidad de respuestas correctas por nivel
global.correct = [0,0,0,0];


//Arrays eventos: Guardan en orden los eventos de cada nivel y si ya han ocurrido o no (true/false)
//eventos nivel 1
#macro CHARLA 0
#macro CAMINO 1
#macro CLASE_1 2
#macro INTEG 3
#macro CALL_1 4
#macro CEE 5
#macro RULES 6
#macro END_1 7

global.events_1 = [false,false,false,false,false,false,false,false];

//eventos nivel 2
#macro CLASE_2 0
#macro VIAJE_1 1
#macro BIBLIOTECA 2
#macro CREDITOS 3
#macro END_2 4

global.events_2 = [false,false,false,false,false];

//eventos nivel 3
#macro CLASE_3 0
#macro SECRE 1
#macro LEOPOLDO 2
#macro PROFE_1 3
#macro PROFE_2 4

global.events_3 = [false,false,false,false,false];

global.integ=false;
