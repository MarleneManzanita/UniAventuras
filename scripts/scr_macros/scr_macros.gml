//MACROS DEL JUEGO - VARIABLES GLOBALES
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

//Array sprites personajes
#macro EMILY 0
#macro RODRIGO 1
#macro JUANITA 2
#macro DIR 3
#macro MAGDA 4
#macro WILL 5
#macro GABRIEL 6
#macro HUGO 7
#macro TOBIAS 8
#macro NICANOR 9
#macro FELIPE 10
#macro BIBLIOTECARIA 11
#macro LEO 12
#macro ZAFIRO 13
#macro PAULINE 14
#macro CHESTER 15
#macro MARCELO 16
#macro MONSERRAT 17
#macro NICOLAS 18
#macro RONNY 19
#macro FABIAN 20
#macro GINA 21
#macro BRUNO 22
#macro TIA 23
#macro PROTA 24
